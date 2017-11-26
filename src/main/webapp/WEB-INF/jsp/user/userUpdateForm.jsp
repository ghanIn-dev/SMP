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
<script src="js/project9.js"></script>

<script>

function chkFlag(id, msg) {
	if ($.trim($(id).val()) == 'N') {
		alert(msg + "를 확인해보세요.");
		return false;
	}
	return true;
}

function checkNm() {
	var nmrex = new RegExp("^[a-zA-Z가-힣]{2,12}$", "g");

	if (!nmrex.test($('#usernm').val())) {
		$('#nmcheckFlag').val("N");
		$('#nmcheckMsg').html(
				'<p style="color:red">이름은 한글이나 영어 2~20자 이내로 가능합니다. </p>');
		$('#usernm').focus();
	} else {
		$('#nmcheckFlag').val("Y");
		$('#nmcheckMsg').html('<p style="color:blue">사용가능한 이름 입니다.</p>');
	}
}

function checkTel() {
	var telrex = new RegExp("^[0-9]+$", "g");

	if (!telrex.test($('#usertel').val())) {
		$('#telcheckFlag').val("N");
		$('#telcheckMsg').html(
				'<p style="color:red">번호는 숫자만 입력이 가능합니다. </p>');
		$('#usertel').focus();
	} else {
		$('#telcheckFlag').val("Y");
		$('#telcheckMsg').html('<p style="color:blue">사용가능한 번호 입니다.</p>');
	}
}

function fn_formSubmit() {
	if (!chkInputValue("#usernm", "name는 필수입력입니다."))
		return false;
	if (!chkFlag("#nmcheckFlag", "nmcheckFlag"))
		return false;
	
	$("#form1").submit();
}
</script>
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
					action="userUpdateSave" method="post">
					<div class="form-group">
						<label for="inputId" class="col-sm-2 control-label">*아이디</label>
						<div class="col-sm-6">
							<p class="form-control-static"><c:out value="${userInfo.userid}"/></p>
						</div>
					</div>

					<div class="form-group">
						<label for="inputEmail" class="col-sm-2 control-label">이메일</label>
						<div class="col-sm-3">
							<p class="form-control-static">
								<c:out value="${userInfo.useremail}" />
							</p>
						</div>
					</div>

					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">*이름</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="usernm" name="usernm"
								placeholder="이름" autocomplete="off" oninput="checkNm()"
								value="${userInfo.usernm}"> <input type="hidden"
								id="nmcheckFlag" value="N" />
							<div id="nmcheckMsg"></div>
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="usertel" oninput="checkTel()"
								name="usertel" placeholder="휴대폰번호 - 없이 적어주세요."
								value="${userInfo.usertel}"> 
								<input type="hidden" id="userno" name="userno" value="${userInfo.userno }" />
							<div id="telcheckMsg"></div>
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label"></label>
						<div class="col-sm-6">

							<a href="#" class="btn btn-primary" onclick="fn_formSubmit()">저장</a>
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