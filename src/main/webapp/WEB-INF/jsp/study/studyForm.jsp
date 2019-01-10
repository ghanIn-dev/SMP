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
					<h1 class="page-header">Forms</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>

			<form action="studyFormSave" method="post">

				<div class="form-group">
					<label>스터디 제목</label> <input class="form-control" name="stdtitle" value="<c:out value="${studyInfo.stdtitle }"/>">
				</div>
				<div class="form-group">
					<label>스터디 설명</label>
					<textarea class="form-control" rows="3" name="stdmemo" >
					<c:out value="${studyInfo.stdmemo }"/>
					</textarea>
				</div>
				<div class="form-group">
					<label>스터디 인원수 제한</label> <input class="form-control"
						name="stdmemlimit" size="2" value="<c:out value="${studyInfo.stdmemlimit }"/>">
				</div>
				<div class="form-group">
					<label>카테고리</label> <select class="form-control" name="stdcategori"> 
						<option>토익</option>
						<option>자격증</option>
						<option>독서</option>
						<option>취미</option>
						<option>개발</option>
					</select>
				</div>

				<div class="form-group">
					<label>메뉴 설정</label>
					<div class="checkbox">
						<label> <input type="checkbox" name="stdmenu" value="0" checked="checked">참여자
							관리
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="stdmenu" value="1">일정
							관리
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="stdmenu" value="2">게시판
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="stdmenu" value="3">출석체크
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="stdmenu" value="4">비용 관리
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="stdmenu" value="5">앨범 관리
						</label>
					</div>
				</div>
				<input type="hidden" name="userno" value="">
				<button type="submit" class="btn btn-default">확인</button>
			</form>
			
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
	</body>
</html>
