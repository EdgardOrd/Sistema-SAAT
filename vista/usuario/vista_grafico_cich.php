
<div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL HISTORIAL DE GRAFICOS DEL COLEGIO CICH</h3>
                <div class="card-tools">
                   
                </div>     
         </div>
         <div class="card-body">  
            <h3 class="mt-4 mb-2">GRAFICOS DE APROBACIONES EN CICH</h3><br>
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
                                        <canvas id="barChart_cich" style="height:230px; min-height:230px"></canvas>
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
    var areaChartCanvas = $('#barChart_cich').get(0).getContext('2d')

    var areaChartData = {
    labels  : ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    datasets: [
        {
        label               : 'CICH',
        backgroundColor     : 'rgb(48, 197, 85)',
        borderColor         : 'rgba(210, 214, 222, 1)',
        pointRadius         : false,
        pointColor          : 'rgba(210, 214, 222, 1)',
        pointStrokeColor    : '#c1c7d1',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(220,220,220,1)',
        data                : [28, 48, 40, 19, 86, 27, 90, 19, 86, 27, 100,40]
        }
    ]
    }

  //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart_cich').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var temp0 = areaChartData.datasets[0]
    barChartData.datasets[0] = temp0

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