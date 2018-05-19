
    <!-- Echarts JavaScripts -->
    <script src="<?php echo base_url()?>resources/vendor/echarts/echarts-all.js"></script>
            <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>

    <script type="text/javascript">
          function commafy( num ) {
              var str = num.toString().split('.');
              if (str[0].length >= 4) {
                  str[0] = str[0].replace(/(\d)(?=(\d{3})+$)/g, '$1.');
              }
              if (str[1] && str[1].length >= 4) {
                  str[1] = str[1].replace(/(\d{3})/g, '$1 ');
              }
              return str.join('.');
          }

        // Document ready
        $(document).ready(function () {
            $.ajax({
                url: "<?php echo base_url('/server/get_list_variabel/'); ?>",
                type: 'GET',
                dataType: 'json',
                success: function(result) {
                     $.each(result, function(key, item){
                        $('#select_variabel').append($('<option>', {
                            value : item['id']+"|"+item['modul'],
                            text : item['nama']
                        }));
                    });
                }
            });

            function refreshDiv(){
                document.getElementById("interpretasi").innerHTML;
            }

            window.setInterval(refreshDiv(),300);
        });
        // Select

        var chart;
        var dps;
        var chartSeries;
        var updateInterval = 1000;
        var timer;
        var legend = [];
        var yAxis = [];
        var xAxis = [];
        var color = [];
        var warna = '#12BFBA';
        var temp;
        var get_val;

        // Update Chart
        var updateChart = function(modul, variabel, variabel_name) {
            console.log(" "+modul+" "+variabel+" ");
            $.ajax({
                // CHANGE ME
                url: "<?php echo base_url('server/get_analysis_rt/')?>" + modul + "/" + variabel,
                type: 'GET',
                dataType: 'json',
                success: function(result) {
                    if (variabel.indexOf(',') > -1) { // Update stacked bar chart data
                      if((result['jenis_var1']!='int' || result['jenis_var1']!='float') && (result['jenis_var2']!='int' || result['jenis_var1']!='float' )){ //cek kuali-kuali

                              //sort agar legend jadi distinct
                                result['data'].sort(function (a,b){
                                  var nameA=a.var1.toLowerCase(), nameB=b.var1.toLowerCase()
                                  if (nameA < nameB) //sort string ascending
                                      return -1
                                  if (nameA > nameB)
                                      return 1
                                  // return 0 //default return value (no sorting)
                                });

                              var legendC = [];
                              //check legend
                                for (var i = 0; i < result['data'].length; i++) {
                                  if(i==(result['data'].length)-1){
                                      break;
                                  }else{
                                      if(result['data'][i]['var1'] != result['data'][i+1]['var1']){
                                        legendC.push(result['data'][i]['var1']);
                                      }else if (i+1==result['data'].length-1) {
                                        legendC.push(result['data'][i]['var1']);
                                      }
                                  }
                                }

                                //sort agar yAxis jadi distinct
                                result['data'].sort(function (a,b){
                                  var nameA=a.var2.toLowerCase(), nameB=b.var2.toLowerCase()
                                  if (nameA < nameB) //sort string ascending
                                      return -1
                                  if (nameA > nameB)
                                      return 1
                                  // return 0 //default return value (no sorting)
                                });

                                var yAxisC = [];
                                //check yAxis
                                  for (var i = 0; i < result['data'].length; i++) {
                                    if(i==(result['data'].length)-1){
                                        break;
                                    }else{
                                        if(result['data'][i]['var2'] != result['data'][i+1]['var2']){
                                          yAxisC.push(result['data'][i]['var2']);
                                        }else if (i+1==result['data'].length-1) {
                                          yAxisC.push(result['data'][i]['var2']);
                                        }
                                    }
                                  }

                                if(legend.length != legendC.length || yAxis.length != yAxisC.length){
                                    chart.clear();
                                    stacked_bar(result, variabel_name);
                                }else{
                                  chartSeries= [];
                                  //insert data baru
                                  for (var i = 0; i < legend.length; i++) {
                                    dps = [];
                                    for (var j = 0; j < result['data'].length; j++) {
                                      if (result['data'][j]['var1'] == legend[i]) {
                                        dps.push(result['data'][j]['jumlah']);
                                      }
                                    }
                                    chartSeries.push(
                                            {
                                              name:legend[i],
                                              type:'bar',
                                              stack: 'stack',
                                              itemStyle : { normal: {label : {position: 'insideRight'}}},
                                              data: dps
                                            }
                                        );
                                  }

                                  chart.setSeries(chartSeries);
                                  chart.refresh();
                                }

                            }else if((result['jenis_var1']=='int' || result['jenis_var1']=='float') && (result['jenis_var2']=='int' || result['jenis_var1']=='float' )) { //update scatterplot

                              dps = [];

                              for (var i = 0; i < result['data'].length; i++) {
                                dps.push([parseFloat(result["data"][i]["var2"]),parseFloat(result["data"][i]["var4"])]);
                              }

                              chartSeries[0].data = dps;
                              chart.setSeries(chartSeries);
                              chart.refresh();


                            }

                    } else if (result['tipe'] != 'int' && result['tipe'] != 'float') { // Update pie chart data
                        if (dps.length > result['data'].length) { // different data set length, harus buat chart dari awal
                            chart.clear();
                            pie_chart(result, variabel_name);
                        } else { // same dataset length, tinggal refresh chartnya
                            dps = [];
                            for (var i = 0; i < result["data"].length; i++) {
                                dps[i] = {value: parseInt(result["data"][i]["value"]), name: result["data"][i]["label"]}
                            }
                            chartSeries[0].data = dps;
                            chart.setSeries(chartSeries);
                            chart.refresh();
                        }
                    } else { // Update chart data : histogram chart

                        if (xAxis[0]!= result["histogram"][1][0]) { // different data set length, harus buat chart dari awal
                            chart.clear();
                            histogram_graph(result, variabel_name);
                        } else { // same dataset length, tinggal refresh chartnya

                              dps = [];
                              xAxis = [];

                              for (var i = 0; i < result["histogram"][0].length; i++) {
                                    dps.push(parseInt(result["histogram"][0][i]));
                              }

                              for (var i = 0; i < result["histogram"][1].length; i++) {
                                  xAxis.push(result["histogram"][1][i]);
                              }

                              option.xAxis[0].data = xAxis;
                              chartSeries[0].data = dps;
                              chart.setSeries(chartSeries);
                              chart.refresh();
                              // chart.clear();
                              // histogram_graph(result, variabel_name);


                    }
                }
              }
            });
        }


        

        function scatter_plot(result,variabel_name){

          dps = [];

          for (var i = 0; i < result['data'].length; i++) {
              dps.push([parseFloat(result["data"][i]["var2"]),parseFloat(result["data"][i]["var4"])]);
          }
            chartSeries = [
                  {
                      type: 'scatter',
                      data: dps,
                  }
            ];

          chart = echarts.init(document.getElementById('chart_rt'));
          option = {
            color : [warna],
            title : {
                  x: 'center',
                  text: 'Analisis Real Time',
                  subtext: variabel_name
            },
            xAxis : [
                {
                    type : 'value',
                    scale:true,
                    axisLabel : {
                        formatter: '{value} var2'
                    }
                }
            ],
            yAxis : [
                {
                    type : 'value',
                    scale:true,
                    axisLabel : {
                        formatter: '{value} var4'
                    }
                }
            ],
            series : chartSeries
        };
        chart.setOption(option);


        }


        function histogram_graph(result,variabel_name){

            dps = [];
            xAxis = [];
            color = [];



            for (var i = 0; i < result["histogram"][0].length; i++) {
                dps.push(parseInt(result["histogram"][0][i]));
            }

            for (var i = 0; i < result["histogram"][1].length; i++) {
                xAxis.push(result["histogram"][1][i]);
            }

            for (var i = 0; i < result["histogram"][1].length; i++) {
                color.push("#12BFBA");
            }

            console.log(dps);

            //console.log(result);
            chartSeries = [
                  {
                      type: 'bar',
                      itemStyle: {
                          normal: {
                              color: function(params) {
                                  // build a color map as your need.
                                  var colorList = color;
                                  return colorList[params.dataIndex]
                              },
                              label: {
                                  show: true,
                                  position: 'bottom',
                                  formatter: '{b}\n'
                              }
                          }
                      },
                      data: dps,
                  }
                    ];

          chart = echarts.init(document.getElementById('chart_rt'));
             option = {
              title: {
                  x: 'center',
                  text: 'Analisis Real Time',
                  subtext: variabel_name
              },
              tooltip: {
                trigger: 'item'
              },
              grid: {
                  borderWidth: 0,
                  y: 80,
                  y2: 60
              },
              xAxis: [
                  {
                      type: 'category',
                      show: false,
                      data: xAxis
                  }
              ],
              yAxis: [
                  {
                      type: 'value',
                      show: true
                  }
              ],
              series: chartSeries
              };
              chart.setOption(option);

        }


        function endAndStartUpdateChart(modul, variabel, variabel_name) { // ends previous update, start a new one
            clearInterval(timer);
            timer = setInterval(updateChart, updateInterval, modul, variabel, variabel_name);
        }

        function pie_chart(result, variabel_name){
            dps = [];

            for (var i = 0; i < result["data"].length; i++) {
                dps.push({value: parseInt(result["data"][i]["value"]), name: result["data"][i]["label"]})
            }

            chart = echarts.init(document.getElementById('chart_rt'));
            chartSeries = [
                    {
                        name: variabel_name,
                        type:'pie',
                        radius : '55%',
                        center: ['50%', '60%'],
                        data: dps
                    }
                ];
            var option = {
                title : {
                    text: 'Analisis Real Time',
                    subtext: variabel_name,
                    x:'center'
                },
                tooltip : {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                calculable : true,
                series : chartSeries
            };
            chart.setOption(option);
        }

        function stacked_bar(result, variabel_name){
          chartSeries = [];
          dps = [];
          legend = [];
          yAxis = [];
          color = [];
          warna = '#12BFBA';

          console.log(result);

          //sort agar legend jadi distinct
          result['data'].sort(function (a,b){
            var nameA=a.var1.toLowerCase(), nameB=b.var1.toLowerCase()
            if (nameA < nameB) //sort string ascending
                return -1
            if (nameA > nameB)
                return 1
            // return 0 //default return value (no sorting)
          });

          //insert legend
          for (var i = 0; i < result['data'].length; i++) {
            if(i==(result['data'].length)-1){
                break;
            }else{
                if(result['data'][i]['var1'] != result['data'][i+1]['var1']){
                  legend.push(result['data'][i]['var1']);
                }else if (i+1==result['data'].length-1) {
                  legend.push(result['data'][i]['var1']);
                }
            }
          }
          // alert(legend);

          //sort agar yAxis jadi distinct
          result['data'].sort(function (a,b){
            var nameA=a.var2.toLowerCase(), nameB=b.var2.toLowerCase()
            if (nameA < nameB) //sort string ascending
                return -1
            if (nameA > nameB)
                return 1
            // return 0 //default return value (no sorting)
          });

          //insert yAxis
          for (var i = 0; i < result['data'].length; i++) {
            if(i==(result['data'].length)-1){
                break;
            }else{
                if(result['data'][i]['var2'] != result['data'][i+1]['var2']){
                  yAxis.push(result['data'][i]['var2']);
                }else if (i+1==result['data'].length-1) {
                  yAxis.push(result['data'][i]['var2']);
                }
            }
          }
          // alert(yAxis);

          //insert color
          for(var i = 0; i< legend.length;i++){
            color.push(warna);
            warna = ColorLuminance(warna,-0.2);
          }

          chart = echarts.init(document.getElementById('chart_rt'));
          for (var i = 0; i < legend.length; i++) {
            dps = [];
            for (var j = 0; j < result['data'].length; j++) {
              if (result['data'][j]['var1'] == legend[i]) {
                dps.push(result['data'][j]['jumlah']);
              }
            }
            chartSeries.push(
                    {
                      name:legend[i],
                      type:'bar',
                      stack: 'stack',
                      itemStyle : { normal: {label : {position: 'insideRight'}}},
                      data: dps
                    }
                );
          }

          option = {
              title : {
                  text: 'Analisis Real Time',
                  subtext: variabel_name,
                  x:'center'
              },
              color : color,
              tooltip : {
                  trigger: 'axis',
                  axisPointer : {
                      type : 'shadow'
                  }
              },
              legend: {
                  x: 'center',
                  y: 'bottom',
                  data:legend
              },
              calculable : true,
              xAxis : [
                  {
                      type : 'value'
                  }
              ],
              yAxis : [
                  {
                      type : 'category',
                      data : yAxis
                  }
              ],
              series : chartSeries
          };
                chart.setOption(option);
        }

        function ColorLuminance(hex, lum) {

          // validate hex string
          hex = String(hex).replace(/[^0-9a-f]/gi, '');
          if (hex.length < 6) {
            hex = hex[0]+hex[0]+hex[1]+hex[1]+hex[2]+hex[2];
          }
          lum = lum || 0;

          // convert to float and change luminosity
          var rgb = "#", c, i;
          for (i = 0; i < 3; i++) {
            c = parseInt(hex.substr(i*2,2), 16);
            c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
            rgb += ("00"+c).substr(c.length);
          }

          return rgb;
        }


        $('#btn_analisis').click(function () {
            var temp = $("#select_variabel").val();
            var variabel_name = $("#select_variabel option:selected").text();
            // var modul = $("#select_modul").val();
            get_val = temp.split("|");
            modul = get_val[1];
            variabel = get_val[0];


            $.ajax({
                url: "<?php echo base_url('server/get_analysis_rt/')?>" + modul + "/" + variabel,
                type: "GET",
                dataType: "JSON",
                success: function(result){

                  console.log(result);
				  console.dir(result);


                    if (variabel.indexOf(',') > -1) {  //pengecekan apakah ada dua variabel atau tidak
                      if((result['jenis_var1']!='int' || result['jenis_var1']!='float') && (result['jenis_var2']!='int' || result['jenis_var1']!='float' )){ //cek kuali-kuali

                        $("#interpretasi").empty();
                        
						document.getElementById('statdes').style.display = "none";
            document.getElementById('boxplot').style.display = "none";
            document.getElementById('grafik').style.display = "block";
			document.getElementById('tabel_outlier').style.display = "none";
stacked_bar(result, variabel_name);
                      }else if((result['jenis_var1']=='int' || result['jenis_var1']=='float') && (result['jenis_var2']=='int' || result['jenis_var1']=='float' )){ //cek kuanti-kuanti

                        $("#interpretasi").empty();
                        
						document.getElementById('statdes').style.display = "none";
            document.getElementById('boxplot').style.display = "none";
            document.getElementById('grafik').style.display = "block";
			document.getElementById('tabel_outlier').style.display = "none";
            scatter_plot(result, variabel_name);
                      }
                    }else if(result['tipe'] != 'int' && result['tipe'] != 'float'){ // satu variabel data kualitatif : pie chart
                            $("#interpretasi").empty();
                            console.log('masuk');
                            // Call function to create pie chart
                            
							document.getElementById('statdes').style.display = "none";
              document.getElementById('boxplot').style.display = "none";
              document.getElementById('grafik').style.display = "block";
			  document.getElementById('tabel_outlier').style.display = "none";
              pie_chart(result, variabel_name);
                    }else{ // satu variabel data kuantitaif : histogram chart
                     
						document.getElementById('statdes').style.display = "block";
            document.getElementById('boxplot').style.display = "block";
            document.getElementById('grafik').style.display = "block";
			document.getElementById('tabel_outlier').style.display = "block";
             histogram_graph(result, variabel_name);


            document.getElementById('max').innerHTML = commafy(result['max']);
            document.getElementById('q3').innerHTML = commafy(result['q3']);
            document.getElementById('med').innerHTML = commafy(result['med']);
            document.getElementById('q1').innerHTML = commafy(result['q1']);
            document.getElementById('min').innerHTML = commafy(result['min']);
            document.getElementById('joutlieratas').innerHTML = result['joutlieratas'];
            document.getElementById('joutlierbawah').innerHTML = result['joutlierbawah'];
						


                  var trace = {
                    x: result['data'],
                    type: 'box',
                    name: 'Data',
                    marker: {
                      color: 'rgb(26,35,126)'
                    },
                    boxpoints: 'Outliers'

                  };

                  var data = [trace];

                  var layout = {
                    title: variabel_name
                  };

                  Plotly.newPlot('myDiv', data, layout);


			table = $('#tabel_analysis_rt').DataTable({
            ajax: "<?php echo base_url('server/get_analysis_real/') ?>" + modul + "/" + variabel + "/" + result['q1'] + "/" + result['q3'], // CHANGE ME
			displayLength: 25,
			oLanguage: {
				oPaginate: {
					sFirst: "Pertama",
					sLast: "Terakhir",
					sNext: "Berikutnya",
					sPrevious: "Sebelumnya",
				},
				sSearch: "Cari",
				sInfo: "Menampilkan _START_ sampai _END_ dari _TOTAL_ hasil",
				sInfoEmpty: "Tidak ada hasil ditemukan",
				sZeroRecords: "Tidak ada hasil ditemukan",
				sLengthMenu: "Menampilkan _MENU_ hasil",
				sInfoFiltered: " (hasil filter dari _MAX_ hasil)",
				sEmptyTable: "Tidak ada data tersedia",
				sLoadingRecords: "Memuat data ..."
			},
            columns: [
                {"data": "nama_pcl"},
                {"data": "nama_kortim"},
                {"data": "variabel"},
            ],
            order: [[1, 'asc']],
            responsive: true
        });
		
                    }
                    // update chart after specified interval
                    // apapun chartnya metode updatenya sama, hanya menyesuaikan di pengaturan data baru nya
                    endAndStartUpdateChart(modul, variabel, variabel_name);
                }
            });
        });

    </script>
