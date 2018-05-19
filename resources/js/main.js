queue()
	.defer(d3.json, baseURL + "data/bengkulu_kab.json")
	.defer(d3.json, baseURL + "data/BENGKULU_SELATAN.json")
	.defer(d3.json, baseURL + "data/REJANG_LEBONG.json")
	.defer(d3.json, baseURL + "data/BENGKULU_UTARA.json")
	.defer(d3.json, baseURL + "data/KAUR.json")
	.defer(d3.json, baseURL + "data/SELUMA.json")
	.defer(d3.json, baseURL + "data/MUKOMUKO.json")
	.defer(d3.json, baseURL + "data/LEBONG.json")
	.defer(d3.json, baseURL + "data/KEPAHIANG.json")
	.defer(d3.json, baseURL + "data/BENGKULU_TENGAH.json")
	.defer(d3.json, baseURL + "data/BENGKULU.json")
	.await(Data_loading);
var provinces;
var id_table = "NULL";
var id_table2 = "NULL";
var width = 800;
var height = 700;

function toTitleCase(str)
{
    return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}

function Data_loading(error, bengkulu_kab, BENGKULU_SELATAN, REJANG_LEBONG, BENGKULU_UTARA, KAUR, SELUMA, MUKOMUKO, LEBONG, KEPAHIANG, BENGKULU_TENGAH, BENGKULU){
	if (error) throw error;

	var koordinat1 = 102.325;
	var koordinat2 = -3.816;
	var scale_fix = 140000;
	Data_loading2(error, BENGKULU,koordinat1,koordinat2,scale_fix);
	
	var projection = d3.geo.mercator()
	.center([102.434, -3.510])
	.scale(10000)
	.translate([width -width/2.2, height/3.]);
	
	var path = d3.geo.path()
	.projection(projection);
	
	var svg= d3.select("#map").append("svg")
	.attr("width", "auto")
	.attr("height", "auto")
	.attr('viewBox','70 -50 700 700')
	.attr('preserveAspectRatio','xMinYMin')
	.attr("id","baseMap")
	
	
	svg.append("rect")
	.attr("class", "background")
	.attr("width", width)
	.attr("height", height)
	
	provinces = svg.append("g").attr("class", "features");
	provinces.selectAll("path")
	.data(topojson.feature(bengkulu_kab, bengkulu_kab.objects.bengkulu).features)
	.enter().append("path")
	.attr("d", path)
	.attr("class", 'feature')
	
	.on('mousemove', function(d){ 
    document.getElementsByClassName("namakab")[0].innerHTML = toTitleCase(d.properties.name);
	})

	.on('mouseout', function() {
    document.getElementsByClassName("namakab")[0].innerHTML = "<br>";	
	})
	
	.on('click', function(d){


	var table = $('#tabel_listing').DataTable({
			ajax: baseURL + 'server/get_agregat_listing_kab/'+d.properties.id,
			columns: [
				{"data": "nama_kabupaten"},
				{"data": "jumlah"},
				{"data": "progress"},

			],
			pagination: false,
			dom: "t",
			order: [[1, 'desc']],
			ordering : false,
			autoWidth : false,
			retrieve : true,
			footerCallback: function ( row, data, start, end, display ) {
            	var api = this.api(), data;
				total = api
			   .column( 1)
			   .data()
			   .reduce( function (a, b) {
				   return parseInt(a) + parseInt(b);
			   }, 0 );
				$( api.column(1).footer() ).html(
                	total
            	);
			}
		});
	table.destroy();
	var table = $('#tabel_listing').DataTable({
			ajax: baseURL + 'server/get_agregat_listing_kab/'+d.properties.id,
			columns: [
				{"data": "nama_kabupaten"},
				{"data": "jumlah"},
				{"data": "progress"},

			],
			pagination: false,
			dom: "t",
			order: [[1, 'desc']],
			ordering : false,
			autoWidth : false,
			footerCallback: function ( row, data, start, end, display ) {
            	var api = this.api(), data;
				total = api
			   .column( 1)
			   .data()
			   .reduce( function (a, b) {
				   return parseInt(a) + parseInt(b);
			   }, 0 );
				$( api.column(1).footer() ).html(
                	total
            	);
			}





		});

	d3.selectAll(".feature").style("fill", "#141b5e");
	d3.select(this).style("fill", "#1DE9B6");
	if (d.properties.name == "BENGKULU"){
	document.getElementsByClassName("namakabterpilih")[0].innerHTML = "Kota " + toTitleCase(d.properties.name);
	} else {
		document.getElementsByClassName("namakabterpilih")[0].innerHTML = "Kab. " + toTitleCase(d.properties.name);
	}
	
	var name_kab = d.properties.name;
	d3.selectAll("#map2 >*").remove();
	if (name_kab == "BENGKULU SELATAN"){
		var koordinat1 = 103.047;
		var koordinat2 = -4.358;
		var scale_fix = 60000;
		Data_loading2(error, BENGKULU_SELATAN,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="REJANG LEBONG"){
		var koordinat1 = 102.696;
		var koordinat2 = -3.406;
		var scale_fix = 70000;
		Data_loading2(error, REJANG_LEBONG, koordinat1, koordinat2, scale_fix);
	}else if(name_kab =="BENGKULU UTARA"){
		var koordinat1 = 101.895;
		var koordinat2 = -3.031;
		var scale_fix = 30000;
		Data_loading2(error, BENGKULU_UTARA,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="KAUR"){
		var koordinat1 = 103.57;
		var koordinat2 = -4.065;
		var scale_fix = 60000;
		Data_loading2(error, KAUR,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="SELUMA"){
		var koordinat1 = 102.686;
		var koordinat2 = -4.065;
		var scale_fix = 45000;
		Data_loading2(error, SELUMA,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="MUKOMUKO"){
		var koordinat1 = 101.485;
		var koordinat2 = -2.652;
		var scale_fix = 34000;
		Data_loading2(error, MUKOMUKO,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="LEBONG"){
		var koordinat1 = 102.251;
		var koordinat2 = -2.996;
		var scale_fix = 45000;
		Data_loading2(error, LEBONG,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="KEPAHIANG"){
		var koordinat1 = 102.622;
		var koordinat2 = -3.616;
		var scale_fix = 90000;
		Data_loading2(error, KEPAHIANG,koordinat1,koordinat2,scale_fix);
	}else if(name_kab =="BENGKULU TENGAH"){
		var koordinat1 = 102.408;
		var koordinat2 = -3.675;
		var scale_fix = 70000;
		Data_loading2(error, BENGKULU_TENGAH,koordinat1,koordinat2,scale_fix);
	}else{
		var koordinat1 = 102.325;
		var koordinat2 = -3.816;
		var scale_fix = 140000;
		Data_loading2(error, BENGKULU,koordinat1,koordinat2,scale_fix);
	};
	});
	
	provinces.append("path")
	.datum(topojson.mesh(bengkulu_kab, bengkulu_kab.objects.bengkulu, function(a, b) { return a !== b; }))
	.attr("class", "boundary")
	.attr("d", path);
}

function Data_loading2(error, bengkulu_kab, koordinat1, koordinat2, scale_fix){
	if (error) throw error;
	
	var projection = d3.geo.mercator()
	.center([koordinat1, koordinat2])
	.scale(scale_fix)
	.translate([width -width/2.2, height/3.])
	
	var path = d3.geo.path()
	.projection(projection);
	
	var svg= d3.select("#map2").append("svg")
	.attr("width", "auto")
	.attr("height", "auto")
	.attr('viewBox','70 -50 700 700')
	.attr('preserveAspectRatio','xMinYMin')
	.attr("id","baseMap")
	
	
	svg.append("rect")
	.attr("class", "background")
	.attr("width", "auto")
	.attr("height", "auto")
	
	
	var provinces = svg.append("g").attr("class", "features");
	provinces.selectAll("path")
	.data(topojson.feature(bengkulu_kab, bengkulu_kab.objects.bengkulu).features)
	.enter().append("path")
	.attr("d", path)
	.attr("class", 'feature2')
	
	.on('mousemove', function(d) {
    document.getElementsByClassName("namakec")[0].innerHTML = toTitleCase(d.properties.KECAMATAN);
	})
	
	.on('mouseout', function() {
	document.getElementsByClassName("namakec")[0].innerHTML = "<br>";
	})
	
	.on('click', function(d){
	d3.selectAll(".feature2").style("fill", "#141b5e");
	d3.select(this).style("fill", "#1DE9B6");
	console.log(d.properties.IDKEC.substring(2,4));
var table = $('#tabel_listing2').DataTable({
			ajax: baseURL + 'server/get_agregat_listing_kec/'+d.properties.IDKEC.substring(2,4)+'/'+d.properties.IDKEC.substring(4),
			columns: [
				{data: "nama_kecamatan"},
				{data: "jumlah"},
				
			],
			pagination: false,
			dom: "t",
			order: [[1, 'desc']],
			ordering : false,
			autoWidth : false,
			retrieve : true,
			footerCallback: function ( row, data, start, end, display ) {
            	var api = this.api(), data;
				total = api
			   .column( 1)
			   .data()
			   .reduce( function (a, b) {
				   return parseInt(a) + parseInt(b);
			   }, 0 );
				$( api.column(1).footer() ).html(
                	total
            	);
			}
		});
	table.destroy();
	var table = $('#tabel_listing2').DataTable({
			ajax: baseURL + 'server/get_agregat_listing_kec/'+d.properties.IDKEC.substring(2,4)+'/'+d.properties.IDKEC.substring(4),
			columns: [
				{data: "nama_kecamatan"},
				{data: "jumlah"},
			],
			pagination: false,
			dom: "t",
			order: [[1, 'desc']],
			ordering : false,
			autoWidth : false,
			footerCallback: function ( row, data, start, end, display ) {
            	var api = this.api(), data;
				total = api
			   .column( 1)
			   .data()
			   .reduce( function (a, b) {
				   return parseInt(a) + parseInt(b);
			   }, 0 );
				$( api.column(1).footer() ).html(
                	total
            	);
			}
		})


	});
	
	provinces.append("path")
	.datum(topojson.mesh(bengkulu_kab, bengkulu_kab.objects.bengkulu, function(a, b) { return a !== b; }))
	.attr("class", "boundary")
	.attr("d", path);
};