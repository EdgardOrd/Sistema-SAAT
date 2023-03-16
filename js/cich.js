function abrirModalNuevoCich(){
    $("#modal_nuevo_cich").modal({backdrop:'static',keyboard:false})
    $("#modal_nuevo_cich").modal('show');
}


var table;
function listar_usuario_cich(){
    table = $("#tabla_cich").DataTable({
       "ordering":false,
       "paging": false,
       "searching": { "regex": true },
       "lengthMenu": [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"] ],
       "pageLength": 100,
       "destroy":true,
       "async": false ,
       "processing": true,
       "ajax":{
           "url":"../controlador/colegios/controlador_cich.php",
           type:'POST'
       },
       "columns":[
           {"data":"num_expediente"},
           {"data":"tipo_proyecto"},
           {"data":"propietario"},
           {"data":"clave_catastral"},  
           {"data":"fecha_de_aprobacion"},  
           {"data":"estatus",
           render: function (data, type, row ) {
               if(data=='1'){
                   return "<span class='badge bg-success'>+"+data+"</span>";                   
               }else{
                    return "<span class='badge bg-success'>"+data+"</span>"; 
               }
             }
           },  
           {"defaultContent":"<button style='font-size:13px;' type='button' class='desactivar btn btn-primary'><i class='fas fa-share-square' aria-hidden='true'></i></button>"}
       ], 
       "language":idioma_espanol,
       select: true
   });
    document.getElementById("tabla_cich_filter").style.display="none";
    $('input.global_filter').on( 'keyup click', function () {
    filterGlobal();
    } );
    $('input.column_filter').on( 'keyup click', function () {
        filterColumn( $(this).parents('tr').attr('data-column') );
    });
}

function filterGlobal() {
    $('#tabla_cich').DataTable().search(
        $('#global_filter').val(),
    ).draw();
}

function listar_combo_rol_colegio_cich(){
    $.ajax({
        "url":"../controlador/colegios/controlador_combo_rol_colegio_cich.php",
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



function Registrar_Nota_Cich(){
    let exp = $('#txt_exp').val();
    let proye = $('#txt_proyect').val();
    let prop = $('#txt_prop').val();
    let cat = $('#txt_cat').val();
    let fecha = $('#txt_fech').val();
    let colegio = $('#cbm_colegio').val();
    if(exp.length == 0 || proye.length == 0 || prop.length == 0 || cat.length == 0 || fecha.length == 0 || colegio.length == 0){
        return Swal.fire("Advertencia", "Llene los campos vacios","warning");
    }
    $.ajax({
        "url":"../controlador/colegios/controlador_cich_registro.php",
        type:'POST',
        data:{
            expediente:exp,
            proyecto:proye,
            propietario:prop,
            catastral:cat,
            fecha:fecha,
            colegio:colegio
        }
    }).done(function(resp){
        if(resp>0){
            if(resp==1){
                $('#modal_nuevo_cich').modal('hide');
                Swal.fire("CONFRIMADO", "Nota de Aprobación Aceptada","success")
                .then((value)=>{
                    LimpiarRegistro();
                    table.ajax.reload();
                });
            }else{
                return Swal.fire("ADVERTENCIA", "La Nota de Aprobación ya Existe","warning");
            }
        }else{  
            Swal.fire("ERROR", "No se pudo completar","error");
        }
    })
}

function LimpiarRegistro(){
    $('#txt_exp').val("");
    $('#txt_proyect').val("");
    $('#txt_prop').val("");
    $('#txt_cat').val("");
    $('#txt_fech').val("");
    $('#cbm_colegio').val("");
}
