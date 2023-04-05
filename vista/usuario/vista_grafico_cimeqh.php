
<div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL HISTORIAL DE GRAFICOS DEL COLEGIO CIMEQH</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>     
         </div>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script>
            $(document).ready(function(){
                $.ajax({
                    url: "get_data_cimeqh.php",
                    method: "GET",
                    success: function(data) {
                        var labels = [];
                        var values = [];

                        labels = data.split("|")[0];
                        values = data.split("|")[1];

                        var chartdata = {
                            labels: JSON.parse(labels),
                            datasets : [
                                {
                                    label: 'Datos de la base de datos',
                                    backgroundColor: 'rgba(200, 200, 200, 0.75)',
                                    borderColor: 'rgba(200, 200, 200, 0.75)',
                                    hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
                                    hoverBorderColor: 'rgba(200, 200, 200, 1)',
                                    data: JSON.parse(values)
                                }
                            ]
                        };

                        var ctx = $("#mycanvas");

                        var barGraph = new Chart(ctx, {
                            type: 'bar',
                            data: chartdata
                        });
                    },
                    error: function(data) {
                        console.log(data);
                    }
                });
            });
        </script>
    </head>
    <body>
        <div style="width:50%;">
            <canvas id="mycanvas"></canvas>
        </div>
    </body>

</script>