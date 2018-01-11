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

							<div class="panel-body">
								<div class="form-group">
									<label>작성자</label>
									<p class="form-control-static">email@example.com</p>
								</div>
								<div class="form-group">
									<label>스터디 제목</label>
									<p class="form-control-static">
										<c:out value="${studyInfo.stdtitle}" />
									</p>
								</div>
								<div class="form-group">
									<label>스터디 설명</label>
									<p class="form-control-static">
										<c:out value="${studyInfo.stdmemo}" />
									</p>
								</div>
								<div class="form-group">
									<label>스터디 인원수 제한</label>
									<p class="form-control-static">
										<c:out value="${studyInfo.stdmemlimit}" />
									</p>
								</div>
								<div class="form-group">
									<label>카테고리</label>
									<p class="form-control-static">
										<c:out value="${studyInfo.stdcategori}" />
									</p>
								</div>
							</div>

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
							<!-- 스터디 장 -->
							<c:if test='${memberInfo.memrole == "SA"}'>
								<a href="stdMemList?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 회원관리</a>
							</c:if>
							<!-- 스터디 멤버 -->
							<c:if test='${memberInfo.memrole == "SM"}'>
								<a href="stdMemList?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 회원관리</a>
							</c:if>
							<!-- 사용자 참가 신청 --> 
							<c:if test='${sessionScope.userrole == "U" && memberInfo.memrole != "W" && memberInfo.memrole != "SA" && memberInfo.memrole != "SM"}'>
								<a href="requestJoinMem?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 참가신청</a>
							</c:if>
							<!-- 사용자 참가 신청 대기 중 --> 
							<c:if test='${sessionScope.userrole == "U" && memberInfo.memrole == "W"}'>
								<a href="stdMemList?stdno=<c:out value="${studyInfo.stdno}" />" class="btn btn-default btn-block">스터디 참가 대기중</a>
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