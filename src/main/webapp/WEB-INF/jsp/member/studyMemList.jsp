<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">



<link href="css/sb-admin/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin/metisMenu.min.css" rel="stylesheet">
<link href="css/sb-admin/sb-admin-2.css" rel="stylesheet">
<link href="css/sb-admin/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="js/dynatree/ui.dynatree.css" rel="stylesheet" />

</head>
<body>

	<div id="wrapper">
		<jsp:include page="../common/navigation.jsp" />

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">스터디 정보</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>

			<div class="row">
				<div class="col-lg-8">
					<div class="panel panel-default">
						<div class="panel-heading">스터디 상세정보</div>
						<div class="panel-body">


							<!-- /.col-lg-12 -->

							<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>id</th>
							<th>name</th>
							<th>Autority</th>
							<th>#</tr>
						<tr>
					</thead>
					
					<tbody>
						<c:forEach var="listview" items="${listview}" varStatus="status">
							 <tr>
							 	<td><c:out value="${status.count}" /></td>
								<td><c:out value="${listview.userno}" /></td>
								<td><c:out value="${listview.memrole}" /></td>
								<td><c:out value="${listview.memrole}" /></td>
								<c:if test='${listview.memrole == "W"}'>
								<td><a href="acceptJoinMem?userno=${listview.userno}&stdno=${listview.stdno}" class="btn btn-outline btn-primary" >승인</a></td>
								</c:if>
								<c:if test='${listview.memrole == "SM"}'>
								<td><a href="adminUserDel?userno=${listview.userno}" class="btn btn-outline btn-primary" >삭제</a></td>
								</c:if>
							 </tr>
						</c:forEach>
					</tbody>
				</table>

						</div>

						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->

				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bell fa-fw"></i> 메뉴
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="list-group">
							
							<!-- 
								<c:forEach var="menuInfo" items="${menuInfo}" varStatus="status">								
									<a href="#" class="list-group-item">
								 		<i class="fa fa-twitter fa-fw"></i> <c:out value="${menuInfo.menuname}"/>
									</a> 
								</c:forEach>
							 -->	
								
								
								
							</div>
							<!-- /.list-group -->
							<c:if test='${memberInfo.memrole == "SA"}'>
							<a href="groupForm?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 회원관리</a>
							</c:if>
							<a href="groupForm?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 환경설정</a>
							<a href="groupForm?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 환경설정</a>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->

					<!-- /.panel -->

					<!-- /.panel .chat-panel -->
				</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>



	</div>

	<script src="js/jquery-2.2.3.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="css/sb-admin/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="css/sb-admin/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="css/sb-admin/raphael-min.js"></script>
	<script src="css/sb-admin/morris.min.js"></script>
	<script src="css/sb-admin/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="css/sb-admin/sb-admin-2.js"></script>
</html>