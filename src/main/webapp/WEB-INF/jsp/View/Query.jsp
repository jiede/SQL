<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>SQLHK version 2.0</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Example of Fluid Layout with Bootstrap version 2.0 from w3cschool.cc">
<meta name="author" content="">

<!-- Le styles -->
<link href="/Static/CSS/bootstrap.css" rel="stylesheet">
<link href="/Static/CSS/bootstrap-fluid-layout.css" rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="/Static/JS/bootstrap/images/favicon.ico">
<link rel="apple-touch-icon"
	href="/Static/JS/bootstrap/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/Static/JS/bootstrap/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/Static/JS/bootstrap/images/apple-touch-icon-114x114.png">
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<!-- <a class="brand" href="#"><img
					src="/Static/JS/bootstrap/images/login_logo.png" width="25"
					height="25" alt="HK515 logo" /></a> -->
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
					<p class="navbar-text pull-right">
						Logged in as ${user.getLoginname()}
					</p>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">hk@192.168.0.227</li>
						<li class="active"><a href="#">HTML 4.01</a></li>
						<li><a href="#">HTML5</a></li>
						<li><a href="#">CSS</a></li>
						<li><a href="#">JavaScript</a></li>
						<li><a href="#">Twitter Bootstrap</a></li>
						<li><a href="#">Firebug</a></li>
						<li><a href="#">PHP</a></li>
						<li><a href="#">SQL</a></li>
						<li><a href="#">MySQL</a></li>
						<li><a href="#">PostgreSQL</a></li>
						<li><a href="#">MongoDB</a></li>
					</ul>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->
			<div class="span9">
				<div class="">
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="#home" data-toggle="tab">
								Query</a></li>
						<!-- <li><a href="#ios" data-toggle="tab">Query2</a></li>
						<li class="dropdown"><a href="#" id="myTabDrop1"
							class="dropdown-toggle" data-toggle="dropdown"> Query.. <b
								class="caret"></b></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="myTabDrop1">
								<li><a href="#jmeter" tabindex="-1" data-toggle="tab">Query3</a></li>
								<li><a href="#ejb" tabindex="-1" data-toggle="tab">Query4</a></li>
							</ul></li> -->
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="home">
							<div class="row-fluid span11">
								<textarea rows="10" id="txt_strsql" class="row-fluid"></textarea>
							</div>
						</div>
						<!-- 						<div class="tab-pane fade" id="ios">
							<p>2</p>
						</div>
						<div class="tab-pane fade" id="jmeter">
							<p>3</p>
						</div>
						<div class="tab-pane fade" id="ejb">
							<p>4</p>
						</div> -->
					</div>
					<div class="row-fluid span11 text-right ">
						<div class="col-xs-2">
							Limit<input id="txt_pageOffset" type="number" />
							<button class="btn btn-primary" onclick="f_query()">
								<strong>Query </strong>
							</button>
						</div>


					</div>
				</div>

				<div class="row-fluid">
					<div id="mydiv" class="table-responsive"></div>
				</div>
				<!--/row-->
				<hr>
				<footer>

					<p>&copy; Company 2012</p>
				</footer>
			</div>
		</div>

	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/Static/JS/jquery.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-transition.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-alert.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-modal.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-dropdown.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-scrollspy.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-tab.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-tooltip.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-popover.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-button.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-collapse.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-carousel.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap-typeahead.js"></script>
	<script src="/Static/JS/bootstrap/jquery.dataTables.min.js"></script>
	<script src="/Static/JS/bootstrap/jquery.dataTables.bootstrap.js"></script>
	<script>
		$(function() {
			$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
				// 获取已激活的标签页的名称
				var activeTab = $(e.target).text();
				// 获取前一个激活的标签页的名称
				var previousTab = $(e.relatedTarget).text();
				$(".active-tab span").html(activeTab);
				$(".previous-tab span").html(previousTab);
			});
		});
		var f_query = function() {

			var para = new Object();
			para.strsql = $("#txt_strsql").val();
			if ($("#txt_pageOffset").val() != "") {
				para.pageOffset = $("#txt_pageOffset").val();
			}
			$.post('/general/Query', para, function(data) {
				drawtable(data);
				TablePage();
			});
		}

		function drawtable(inputjson) {
			var i, imax, shtml;

			//inputjson = "{'records':" + inputjson + "}";
			var myJSONobj = eval('(' + eval('(' + inputjson + ')') + ')'); //convert the data to an object - prefer JSON parse here

			var irowmax = myJSONobj.length;

			if (myJSONobj.Result != null) {
				document.getElementById('mydiv').innerHTML = '<div></br></br>'
						+ myJSONobj.msg + '</div>';
				return;
			}

			if (irowmax < 1) {
				alert('No rows in table');
				return;
			}

			var cols = new Array();
			//get an array of column names
			for ( var key in myJSONobj[0]) { //assumign all columns present in first record
				cols[cols.length] = key;
			}

			icolmax = cols.length

			shtml = "<table id='tab_result' class='table-responsive' border=1><thead><tr>"; //create header row - save html of table in shtml
			for (i = 0; i < icolmax; i++) {
				shtml += "<th>" + cols[i] + "</th>";
			}
			shtml += "</tr></thead>";

			var irowmax = myJSONobj.length;

			for (irow = 0; irow < irowmax; irow++) { //add the rows
				shtml += "<tr>";
				for (i = 0; i < icolmax; i++) {
					shtml += "<td>" + myJSONobj[irow][cols[i]] + "</td>";
				}
				shtml += "</tr>";
			}
			document.getElementById('mydiv').innerHTML = shtml; //write the table into div mydiv
		}

		function TablePage() {
			var oTable1 = $('#tab_result')
					.dataTable(
							{
								"oLanguage" : {
									"sSearch" : "角色搜索",
									"sLengthMenu" : "每页显示 _MENU_ 条记录",
									"sZeroRecords" : "没有检索到数据",
									"sInfo" : "显示 _START_ 至 _END_ 条 &nbsp;&nbsp;共 _TOTAL_ 条",
									"sInfoFiltered" : "(筛选自 _MAX_ 条数据)",
									"sInfoEmtpy" : "没有数据",
									"sProcessing" : "正在加载数据...",
									"sProcessing" : "<img src='{{rootUrl}}global/img/ajaxLoader/loader01.gif' />",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "前一页",
										"sNext" : "后一页",
										"sLast" : "末页"
									}
								},
								"bFilter" : false,
							});
		}
	</script>
</body>
</html>