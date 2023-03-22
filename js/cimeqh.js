function abrirModalNuevoCimeqh(){
    $("#modal_nuevo_cimeqh").modal({backdrop:'static',keyboard:false})
    $("#modal_nuevo_cimeqh").modal('show');
}

var table;
function listar_usuario_cimeqh(){
    table = $("#tabla_cimeqh").DataTable({
       "ordering":false,
       "paging": false,
       "searching": { "regex": true },
       "lengthMenu": [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"] ],
       "pageLength": 100,
       "destroy":true,
       "async": false ,
       "processing": true,
       "ajax":{
           "url":"../controlador/colegios/controlador_cimeqh.php",
           type:'POST'
       },
       "columns":[
           {"data":"Expediente"},
           {"data":"Tipo de Proyecto"},
           {"data":"Propietario"},
           {"data":"Clave Catastral"}, 
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
           {"defaultContent":"<button style='font-size:13px;' type='button' class='desactivar btn btn-primary'><i class='fas fa-edit' aria-hidden='true'></i></button>"}
       ], 
       "language":idioma_espanol,
       select: true
   });
    document.getElementById("tabla_cimeqh_filter").style.display="none";
    $('input.global_filter').on( 'keyup click', function () {
    filterGlobal();
    } );
    $('input.column_filter').on( 'keyup click', function () {
        filterColumn( $(this).parents('tr').attr('data-column') );
    });
}

function filterGlobal() {
    $('#tabla_cimeqh').DataTable().search(
        $('#global_filter').val(),
    ).draw();
}

function listar_combo_rol_colegio(){
    $.ajax({
        "url":"../controlador/colegios/controlador_combo_rol_colegio.php",
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



function Registrar_Nota_Cimeqh(){
    let exp = $('#txt_exp').val();
    let proye = $('#txt_proyect').val();
    let prop = $('#txt_prop').val();
    let cat = $('#txt_cat').val();
    let area = $('#txt_area').val();
    let presu = $('#txt_pre').val();
    let obs = $('#txt_obs').val();
    let fecha = $('#txt_fech').val();
    if(exp.length == 0 || proye.length == 0 || prop.length == 0 || cat.length == 0 || area.length == 0 || presu.length == 0  || obs.length == 0 || fecha.length == 0){
        return Swal.fire("Advertencia", "Llene los campos vacios","warning");
    }
    $.ajax({
        "url":"../controlador/colegios/controlador_cimeqh_registro.php",
        type:'POST',
        data:{
            expediente:exp,
            proyecto:proye,
            propietario:prop,
            catastral:cat,
            area:area,
            presupuesto:presu,
            observaciones:obs,
            fecha:fecha,
        }
    }).done(function(resp){
        if(resp>0){
            if(resp==1){
                $('#modal_nuevo_cimeqh').modal('hide');
                Swal.fire("CONFRIMADO", "Nota de Aprobación Aceptada","success")
                .then((value)=>{
                    LimpiarRegistro();
                    table.ajax.reload();
                }); 
            }else{
                return Swal.fire("ADVERTENCIA", "La Nota de Aprobación ya Existe","warning");
            }
        }else{  
            alert(resp);
            Swal.fire("ERROR", "No se pudo completar","error");
        }
    })
}

function LimpiarRegistro(){
    $('#txt_exp').val("");
    $('#txt_proyect').val("");
    $('#txt_prop').val("");
    $('#txt_cat').val("");
    $('#txt_obs').val("");
    $('#txt_fech').val("");
}

