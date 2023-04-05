
<div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL HISTORIAL DE GRAFICOS DE LOS COLEGIOS</h3>
                 
         </div>
         <div class="card-body">  
            <h3 class="mt-4 mb-2">GRAFICOS DE APROBACIONES</h3><br>
            <section class="content">          
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BAR CHART -->
                            <div class="card card-success">
                                <div class="card-header">
                                    <h3 class="card-title">Gráfico de Barra de notas aprobadas</h3>
                                </div>
                                <div class="card-body">
                                    <div class="chart">
                                        <canvas id="barChart" style="height:230px; min-height:230px"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div>
            Implementar un gráfico de barras para visualizar las notas aprobadas es beneficioso porque permite a los usuarios ver de manera clara y visual cómo se distribuyen las notas. Los gráficos de barras son una forma efectiva de representar grandes cantidades de datos, lo que los hace ideales para mostrar la distribución de notas en un conjunto de datos. Además, el uso de diferentes colores para las barras puede ayudar a distinguir entre diferentes rangos de notas y hacer que la información sea más fácil de entender. En general, los gráficos de barras son una herramienta útil para analizar datos y tomar decisiones informadas en función de esos datos.
            </div>
            
        </div>



<!--*****************************************************************************************************************-->
<script src="../Plantilla/plugins/chart.js/Chart.min.js"></script>
<script>
    $(document).ready(function(){

    // ------------------------------------- GRAFICO DE CIMEQH --------------------------------
    var areaChartCanvas = $('#barChart').get(0).getContext('2d')

    var areaChartData = {
    labels  : ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    datasets: [
        {
        label               : 'CIMEQH',
        backgroundColor     : 'rgba(60,141,188,0.9)',
        borderColor         : 'rgba(60,141,188,0.8)',
        pointRadius          : false,
        pointColor          : '#3b8bba',
        pointStrokeColor    : 'rgba(60,141,188,1)',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(60,141,188,1)',
        data                : [28, 48, 40, 19, 86, 27, 90, 19, 86, 27, 100,20]
        },
        {
        label               : 'CICH',
        backgroundColor     : 'rgb(48, 197, 85)',
        borderColor         : 'rgba(210, 214, 222, 1)',
        pointRadius         : false,
        pointColor          : 'rgba(210, 214, 222, 1)',
        pointStrokeColor    : '#c1c7d1',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(220,220,220,1)',
        data                : [65, 59, 80, 81, 56, 55, 40, 81, 56, 55, 40,30]
        },
        {
        label               : 'CAH',
        backgroundColor     : 'rgb(238, 238, 5)',
        borderColor         : 'rgba(210, 214, 222, 1)',
        pointRadius         : false,
        pointColor          : 'rgba(210, 214, 222, 1)',
        pointStrokeColor    : '#c1c7d1',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(220,220,220,1)',
        data                : [25, 39, 90, 61, 26, 15, 60, 61, 26, 15, 60,25]
        }
    ]
    }

  //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var temp0 = areaChartData.datasets[0]
    var temp1 = areaChartData.datasets[1]
    var temp2 = areaChartData.datasets[2]
    barChartData.datasets[0] = temp0
    barChartData.datasets[1] = temp1
    barChartData.datasets[2] = temp2

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    var barChart = new Chart(barChartCanvas, {
      type: 'bar', 
      data: barChartData,
      options: barChartOptions
    })


    })

</script>