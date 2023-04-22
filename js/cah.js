function abrirModalNuevoCah(){
    $("#modal_nuevo_cah").modal({backdrop:'static',keyboard:false})
    $("#modal_nuevo_cah").modal('show');
}

var table;
function listar_usuario_cah(){
    table = $("#tabla_cah").DataTable({
       "ordering":false,
       "paging": true,
       "searching": { "regex": true },
       "lengthMenu": [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"] ],
       "pageLength": 10,
       "destroy":true,
       "async": false ,
       "processing": true,
       "ajax":{
           "url":"../controlador/colegios/controlador_cah.php",
           type:'POST'
       },
       "columns":[
        {"data":"Expediente"},
        {"data":"Tipo_de_Proyecto"},
        {"data":"Propietario"},
        {"data":"Clave_Catastral"}, 
        {"data":"Estatus",
        render: function (data, type, row ) {
         switch (data) {
             case 'APROBADO':
               return "<span class='badge bg-success'>"+data+"</span>";
             case 'DESAPROBADO':
               return "<span class='badge bg-danger'>"+data+"</span>";
             case 'SEGUIMIENTO':
               return "<span class='badge bg-warning'>"+data+"</span>";
             case 'SOLICITUD DE DOCUMENTACION':
               return "<span class='badge bg-info'>"+data+"</span>";
             default:
               return data;
           }              
          } 
        },  
        {"data":"Observaciones"},  
        {"data":"Fecha"},  
           {"defaultContent":"<button title='Editar Registro' style='font-size:13px;' type='button' class='editar btn btn-primary'><i class='fas fa-edit' aria-hidden='true'></i></button>&nbsp;<button title='Imprimir Registro' style='font-size:13px;' type='button' class='imprimir btn btn-danger'><i class='fas fa-print' aria-hidden='true'></i></button>"}
       ], 
       "language":idioma_espanol,
       select: true
   });
    document.getElementById("tabla_cah_filter").style.display="none";
    $('input.global_filter').on( 'keyup click', function () {
    filterGlobal();
    } );
    $('input.column_filter').on( 'keyup click', function () {
        filterColumn( $(this).parents('tr').attr('data-column') );
    });
}

$('#tabla_cah').on('click','.editar',function(){
    var data = table.row($(this).parents('tr')).data();
    if(table.row(this).child.isShown()){
        var data = table.row(this).data();
    }
    $("#modal_nuevo_editar").modal({backdrop:'static',keyboard:false})
    $("#modal_nuevo_editar").modal('show');
    $("#txt_exp_editar").val(data.Expediente);
    $("#txt_proyect_editar").val(data.Tipo_de_Proyecto);
    $("#txt_prop_editar").val(data.Propietario);
    $("#txt_cat_editar").val(data.Clave_Catastral);
    $("#cbm_estatus_editar").val(data.Estatus).trigger("change");
    $("#txt_obs_editar").val(data.Observaciones);
    $("#txt_fech_editar").val(data.Fecha);
    $("#txt_ing_editar").val(data.Colegiado);
    $("#txt_area_editar").val(data.Area);
    $("#txt_pre_editar").val(data.Presupuesto);
});


$('#tabla_cah').on('click','.imprimir',function(){
    var data = table.row($(this).parents('tr')).data();
    if(table.row(this).child.isShown()){
        var data = table.row(this).data();
    }
    window.open('../vista/fpdf/NotaCah.php?Propietario=' + data.Propietario + '&Clave_Catastral=' + data.Clave_Catastral + '&Expediente=' + data.Expediente + '&Colegiado=' + encodeURIComponent(data.Colegiado)+ '&Fecha=' + encodeURIComponent(data.Fecha) +"#zoom=100%","PDF","scrollbars=NO");
});

function filterGlobal() {
    $('#tabla_cah').DataTable().search(
        $('#global_filter').val(),
    ).draw();
}

function listar_combo_rol_colegio_cah(){
    $.ajax({
        "url":"../controlador/colegios/controlador_combo_rol_colegio_cah.php",
        type:'POST'
    }).done(function(resp){
        let data = JSON.parse(resp);
        let cadena = "";
        if (data.length > 0){
            for(let i=0;i<data.length;i++){
                cadena+="<option value='"+data[i][0]+"'>"+data[i][1]+"</option>";
            }
            $('#cbm_colegio').html(cadena);
        }else{
            cadena+="<option value=''>NO SE ENCONTRARON REGISTROS</option>";
        }
    })
}


function Registrar_Nota_Cah(){
    let exp = $('#txt_exp').val();
    let proye = $('#txt_proyect').val();
    let prop = $('#txt_prop').val();
    let cat = $('#txt_cat').val();
    let area = $('#txt_area').val();
    let presu = $('#txt_pre').val();
    let colegiado = $('#txt_ing').val();
    let obs = $('#txt_obs').val();
    let estatus = $('#cbm_estatus').val();
    let fecha = $('#txt_fech').val();
    if(exp.length == 0 || proye.length == 0 || prop.length == 0 || cat.length == 0 || area.length == 0 || presu.length == 0  || colegiado.length == 0 || estatus.length == 0  || obs.length == 0 || fecha.length == 0){
        return Swal.fire("Advertencia", "Llene los campos vacios","warning");
    }
    $.ajax({
        "url":"../controlador/colegios/controlador_cah_registro.php",
        type:'POST',
        data:{
            expediente:exp,
            proyecto:proye,
            propietario:prop,
            catastral:cat,
            area:area,
            presupuesto:presu,
            colegiado:colegiado,
            estatus:estatus,
            observaciones:obs,
            fecha:fecha,
        }
    }).done(function(resp){
        if(resp>0){
            if(resp==1){
                $('#modal_nuevo_cah').modal('hide');
                Swal.fire("CONFRIMADO", "Nota de Construcción Registrada","success")
                .then((value)=>{
                    LimpiarRegistro();
                    table.ajax.reload();
                });
            }else{
                return Swal.fire("ADVERTENCIA", "La Nota de Construcción ya Existe","warning");
            }
        }else{  
            Swal.fire("ERROR", "No se pudo completar","error");
        }
    })
}
function Editar_Nota_Cah()
{
    
        let exp = $('#txt_exp_editar').val();
        let proye = $('#txt_proyect_editar').val();
        let prop = $('#txt_prop_editar').val();
        let cat = $('#txt_cat_editar').val();
        let area = $('#txt_area_editar').val();
        let presu = $('#txt_pre_editar').val();
        let colegiado = $('#txt_ing_editar').val();
        let obs = $('#txt_obs_editar').val();
        let estatus = $('#cbm_estatus_editar').val();
        let fecha = $('#txt_fech_editar').val();
        if(exp.length == 0 || proye.length == 0 || prop.length == 0 || cat.length == 0 || area.length == 0 || presu.length == 0 || colegiado.length == 0 || estatus.length == 0  || obs.length == 0 || fecha.length == 0){
            return Swal.fire("Advertencia", "Llene los campos vacios","warning");
        }
        $.ajax({
            url: `../controlador/colegios/controlador_cah_editar.php`,
            type: 'POST',
            data: {
                _method: 'PUT',
                expediente: exp,
                proyecto: proye,
                propietario: prop,
                catastral: cat,
                area: area,
                presupuesto: presu,
                colegiado: colegiado,
                estatus: estatus,
                observaciones: obs,
                fecha: fecha,
            }
        }).done(function(resp){
            
            if(resp == 1){
                $('#modal_nuevo_editar').modal('hide');
                Swal.fire("CONFRIMADO", "Nota de Construcción Actualizada","success")
                .then((value)=>{
                    LimpiarRegistro();
                    table.ajax.reload();
                }); 
            }else{  
                Swal.fire("ERROR", "No se pudo completar la actualización","error");
            }
        });
}
function LimpiarRegistro(){
    $('#txt_exp').val("");
    $('#txt_proyect').val("");
    $('#txt_prop').val("");
    $('#txt_cat').val("");
    $('#cbm_estatus').val("");
    $('#txt_obs').val("");
    $('#txt_fech').val("");
    $('#txt_ing').val("");
    $('#txt_area').val("");
    $('#txt_pre').val("");
}

function soloLetras(e){
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLocaleLowerCase();
    letras = "áéíóúabcdefghijklmnñopqrstuvwxyz. ";
    especiales = "8-37-39-46";
    tecla_especial = false;
    for(var i in especiales){
        if(key == especiales[i]){
            tecla_especial = true;
            break
        }
    }
    if(letras.indexOf(tecla)==-1 && !tecla_especial){
        return false;
    }
}

function soloNumeros(e){
    tecla = (document.all) ? e.keyCode : e.which;
    if(tecla == 8){
        return true;
    }
    // PATRON DE ENTRADA, SOLO ACEPTA NUMEROS DEL 0-9
    patron = /[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}