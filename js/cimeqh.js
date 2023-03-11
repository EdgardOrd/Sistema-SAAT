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
           {"data":"num_expediente"},
           {"data":"tipo_proyecto"},
           {"data":"propietario"},
           {"data":"clave_catastral"},  
           {"data":"fecha_de_aprobacion"},  
           {"data":"estatus",
           render: function (data, type, row ) {
               if(data=='1'){
                   return "<span class='badge bg-warning text-dark'>"+data+"</span>";                   
               }else{
                    return "<span class='badge bg-warning text-dark'>"+data+"</span>"; 
               }
             }
           },  
           {"defaultContent":"<button style='font-size:13px;' type='button' class='desactivar btn btn-primary'><i class='fa fa-edit' aria-hidden='true'></i></button>"}
       ], 
       "language":idioma_espanol,
       select: true
   });

}