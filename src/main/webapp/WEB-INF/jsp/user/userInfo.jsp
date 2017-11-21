<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


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
			<div class="container">
				<div class="page-header">
					<h1>내 정보 변경</h1>
				</div>
				<form id="form1" name="form1" class="form-horizontal"
					action="userJoinSave" method="post">
					<div class="form-group">
						<label for="inputId" class="col-sm-2 control-label">*아이디</label>
						<div class="col-sm-6">
							<p class="form-control-static"><c:out value="${userInfo.userid}"/></p>
						</div>
					</div>

					<div class="form-group">
						<label for="inputEmail" class="col-sm-2 control-label">이메일</label>
						<div class="col-sm-6">
							<p class="form-control-static"><c:out value="${userInfo.useremail}"/></p>
						</div>
					</div>

					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">*이름</label>
						<div class="col-sm-6">
							<p class="form-control-static"><c:out value="${userInfo.usernm}"/></p>
						</div>
					</div>

					<div class="form-group">
						<label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label>
						<div class="col-sm-6">
							<p class="form-control-static"><c:out value="${userInfo.usertel}"/></p>
						</div>
					</div>

						<div class="form-group">
							<div class="col-sm-6">
								<a href="userUpdate" class="btn btn-outline btn-primary btn-lg" >정보수정</a>
								<a href="userDel" class="btn btn-outline btn-primary btn-lg" >계정 삭제</a>
								<a href="userPwUpdate" class="btn btn-outline btn-primary btn-lg" >비밀번호 변경</a>
							</div>
						</div>

				</form>

			</div>
		</div>
	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
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

</body>

</html>