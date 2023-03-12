window.onload = function() {
    document.getElementById("login-form").addEventListener("keypress", function(event) {
      if (event.keyCode === 13) {
        event.preventDefault(); 
        VerificarUsuario(); 
      }
    }); 
  };
  
//********************  FUNCION PARA PODER VERIFICAR SI EL USUARIO DE LA BDD ES CORRECTO *******************************
function VerificarUsuario(){
    let usu = $("#txt_usu").val();
    let con = $("#txt_con").val();

    if (usu.length==0 || con.length==0){
        return Swal.fire("Advertencia", "Llene los campos vacios","warning");
    }
    $.ajax({
        url:'../controlador/usuario/controlador_verificar_usuario.php',
        type: 'POST',
        data:{
            user:usu,
            pass:con
        }
    }).done(function(resp){
        if(resp==0){
             Swal.fire("ERROR", "Usuario y/o contrase\u00f1a incorrecta","error");
        }else{
            let data = JSON.parse(resp);
            if (data[0][5]==='INACTVIO'){
                return Swal.fire("Advertencia", "Lo sentimos el usuario "+usu+" se encuentra suspendido, comuniquese con el administrador.","warnign");
            }
            $.ajax({
                url:'../controlador/usuario/controlador_crear_session.php',
                type: 'POST',
                data:{
                    idusuario:data[0][0],
                    user:data[0][1],
                    rol:data[0][6]
                }
            }).done(function(resp){
                let timerInterval
                Swal.fire({
                title: 'Bienvenido a SAAT',
                html: 'Redireccionando.',
                timer: 1000,
                timerProgressBar: true,
                didOpen: () => {
                    Swal.showLoading()
                    const b = Swal.getHtmlContainer().querySelector('b')
                    timerInterval = setInterval(() => {
                    b.textContent = Swal.getTimerLeft()
                    }, 100)
                },
                willClose: () => {
                    clearInterval(timerInterval)
                }
                }).then((result) => {
                /* Read more about handling dismissals below */
                if (result.dismiss === Swal.DismissReason.timer) {
                    location.reload();
                }
                })
            })
        }
    })
}

//********************  FUNCION PARA PODER LISTAR LOS USUARIOS DE LA BDD  *******************************
var table;
function listar_usuario(){
    table = $("#tabla_usuario").DataTable({
       "ordering":false,
       "paging": false,
       "searching": { "regex": true },
       "lengthMenu": [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"] ],
       "pageLength": 100,
       "destroy":true,
       "async": false ,
       "processing": true,
       "ajax":{
           "url":"../controlador/usuario/controlador_usuario_listar.php",
           type:'POST'
       },
       "columns":[
           {"data":"posicion"},
           {"data":"usu_nombre"},
           {"data":"rol_nombre"},
           {"data":"usu_sexo",
           render: function (data, type, row ) {
               if(data=='M'){
                   return "MASCULINO";                   
               }else{
                 return "FEMENINO";                 
               }
             }
           },  
           {"data":"usu_estatus",
           render: function (data, type, row ) {
               if(data=='1'){
                   return "<span class='badge bg-warning text-dark'>"+data+"</span>";                   
               }else{
                    return "<span class='badge bg-warning text-dark'>"+data+"</span>"; 
               }
             }
           },  
           {"defaultContent":"<button style='font-size:13px;' type='button' class='desactivar btn btn-danger'><i class='fa fa-power-off' aria-hidden='true'></i></button>&nbsp;<button style='font-size:13px;' type='button' class='activar btn btn-success'><i class='fa fa-power-off' aria-hidden='true'></i></button>"}
       ], 

       "language":idioma_espanol,
       select: true
   });
   document.getElementById("tabla_usuario_filter").style.display="none";
    $('input.global_filter').on( 'keyup click', function () {
    filterGlobal();
    } );
    $('input.column_filter').on( 'keyup click', function () {
        filterColumn( $(this).parents('tr').attr('data-column') );
    });

}


//********************  FUNCION PARA ACTIVAR/DESACTIVAR USUARIOS DESDE EL ADMIN-WEB  *******************************
// ***** OJO: NO ME BORRA EN RESPONSIVE YA QUE DESDE LA BDD NO ME TRAE EL ID QUE SE REFLEJA EN LA WEB. ***

$('#tabla_usuario').on('click','.desactivar',function(){
    let data = table.row($(this).parents('tr')).data();
    if(table.row(this).child.isShown()){
        let data = table.row(this).data();
    }
    Swal.fire({
        title: '¿Estás seguro de desactivar el usuario?',
        text: "Al confirmar la operación el Usuario no volvera a tener acceso al Sistema.",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Aceptar'
      }).then((result) => {
        if (result.isConfirmed) {
            Modificar_Estatus(data.usu_id, '2');
        }
      })
})
/*
$('#tabla_usuario').on('click','.editar',function(){
    let data = table.row($(this).parents('tr')).data();
    if(table.row(this).child.isShown()){
        let data = table.row(this).data();
    }
    $("#modal_editar").modal({backdrop:'static',keyboard:false})
    $("#modal_editar").modal('show');
    $('#txtidusuario').val(data.usu_id);
    $('#txtusu_editar').val(data.usu_nombre);
    $('#cbm_sexo_editar').val(data.usu_sexo).trigger('change');
    $('#cbm_rol_editar').val(data.rol_id).trigger('change');
})
*/
$('#tabla_usuario').on('click','.activar',function(){
    let data = table.row($(this).parents('tr')).data();
    if(table.row(this).child.isShown()){
        let data = table.row(this).data();
    }
    Swal.fire({
        title: '¿Estás seguro de activar el usuario?',
        text: "Al confirmar la operación el Usuario volvera a tener acceso al Sistema.",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Aceptar'
      }).then((result) => {
        if (result.isConfirmed) {
            Modificar_Estatus(data.usu_id, '1');
        }
      })
})


function Modificar_Estatus(idusuario,estatus){
    let mensaje = "";
    if(estatus == '2'){
        mensaje = 'desactivado';
    }else{
        mensaje = 'activado';
    }
    $.ajax({
        "url":"../controlador/usuario/controlador_modificar_estatus_usuario.php",
        type:'POST',
        data:{
            idusuario:idusuario,
            estatus:estatus
        }
    }).done(function(resp){
        if(resp>0){
            Swal.fire("CONFRIMADO", "Usuario "+mensaje+" con éxito.","success")
            .then((value)=>{
                table.ajax.reload();
            });
        }
    })
}

function filterGlobal() {
    $('#tabla_usuario').DataTable().search(
        $('#global_filter').val(),
    ).draw();
}

//********************  FUNCION PARA EL MODAL DE USUARIO  *******************************
function abrirModalRegistro(){
    $("#modal_registro").modal({backdrop:'static',keyboard:false})
    $("#modal_registro").modal('show');
}

//********************  FUNCION PARA LISTAR ROLES DE USUARIO  *******************************
function listar_combo_rol(){
    $.ajax({
        "url":"../controlador/usuario/controlador_combo_rol_listar.php",
        type:'POST'
    }).done(function(resp){
        let data = JSON.parse(resp);
        let cadena = "";
        if (data.length > 0){
            for(let i=0;i<data.length;i++){
                cadena+="<option value='"+data[i][0]+"'>"+data[i][1]+"</option>";
            }
            $('#cbm_rol').html(cadena);
            $('#cbm_rol_editar').html(cadena);
        }else{
            cadena+="<option value=''>NO SE ENCONTRARON REGISTROS</option>";
            $('#cbm_rol').html(cadena);
            $('#cbm_rol_editar').html(cadena);
        }
    })
}
 
function Registrar_Usuario(){
    let usu = $('#txt_usu').val();
    let contra = $('#txt_con1').val();
    let contra2 = $('#txt_con2').val();
    let sexo = $('#cbm_sexo').val();
    let rol = $('#cbm_rol').val();
    if(usu.length == 0 || contra.length == 0 || contra2.length == 0 || sexo.length == 0 || rol.length == 0){
        return Swal.fire("Advertencia", "Llene los campos vacios","warning");
    }

    if(contra != contra2){
        return Swal.fire("Advertencia", "Las contraseñas no coinciden","warning");
    }

    $.ajax({
        "url":"../controlador/usuario/controlador_usuario_registro.php",
        type:'POST',
        data:{
            usuario:usu,
            contrasena:contra,
            sexo:sexo,
            rol:rol
        }
    }).done(function(resp){
        if(resp>0){
            if(resp==1){
                $('#modal_registro').modal('hide');
                Swal.fire("CONFRIMADO", "Nuevo Usuario Registrado","success")
                .then((value)=>{
                    LimpiarRegistro();
                    table.ajax.reload();
                });
            }else{
                return Swal.fire("Advertencia", "El usuario ya existe","warning");
            }
        }else{  
            Swal.fire("ERROR", "No se pudo completar el error","error");
        }
    })
}

function LimpiarRegistro(){
    $('#txt_usu').val("");
    $('#txt_con1').val("");
    $('#txt_con2').val("");
}

function AbrirModalEditarContra(){
    $("#modal_editar_contra").modal({backdrop:'static',keyboard:false})
    $("#modal_editar_contra").modal('show');
    $('#modal_editar_contra').on('shown.bs.modal', function(){
        $('#txtcontraactual_editar').focus();
      })
}

function TraerDatosUsuario(){
    let usuario = $('#usuarioprincipal').val();
    $.ajax({
        "url":"../controlador/usuario/controlador_traerdatos_usuario.php",
        type: 'POST',
        data:{
            usuario:usuario
        }
    }).done(function(resp){
        let data = JSON.parse(resp);
        if(data.length>0){
            $('#txtcontra_bd').val(data[0][2]);
        }
    })
}

function Editar_Contra(){
    let idusuario = $("#txtidprincipal").val();
    let contrabd = $("#txtcontra_bd").val();
    let contraescrita = $("#txtcontraactual_editar").val();
    let contranu = $("#txtcontranu_editar").val();
    let contrare = $("#txtcontrare_editar").val();
    if(contraescrita.length==0 || contranu.length==0 || contrare.length==0){
        return Swal.fire("Advertencia", "Llenar datos vacios","warning");
    }
    if(contranu != contrare){
        return Swal.fire("Advertencia", "Las contraseñas no coiciden.","warning");
    }
    $.ajax({
        url:'../controlador/usuario/controlador_contra_modificar.php',
        type:'POST',
        data:{
            idusuario:idusuario,
            contrabd:contrabd,
            contraescrita:contraescrita,
            contranu:contranu
        }
    }).done(function(resp){
        if(resp>0){
            if(resp==1){
                $('#modal_editar_contra').modal('hide');
                Swal.fire("CONFRIMADO", "Contrase\u00f1a Actualizada","success")
                .then((value)=>{
                    LimpiarEditarContra();
                    table.ajax.reload();
                });
            }else{
                return Swal.fire("Error", "La contrase\u00f1a actual no coincide","error");
            }
        }else{
            return Swal.fire("Error", "No se actualizo la contrase\u00f1a","error");
        }
    })
}


function LimpiarEditarContra(){
    $("#txtcontranu_editar").val("");
    $("#txtcontrare_editar").val("");
    $("#txtcontraactual_editar").val("");
}