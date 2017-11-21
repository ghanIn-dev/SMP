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
function chkFlag(id, msg){
	if ( $.trim($(id).val()) == 'N') {
		alert(msg+"를 확인해보세요.");
		return false;
	}
	return true;
}
	function checkCurrentPw() {
		var pwrex = new RegExp("^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{6,16}$", "g");
		$
				.ajax({
					type : 'POST',
					url : '/smp/userUpdatePwChk',
					data : {
						"userpw" : $('#userpw').val()
					},
					success : function(data) {
						if (!pwrex.test($('#userpw').val())) {
							$('#pwcheckFlag').val("N");
							$('#pwcheckMsg')
									.html(
											'<p style="color:red">비밀번호는 숫자, 영어, 특수문자를 포함하여 7~16로 입력해야합니다.</p>');
							$('#userpw').focus();
						} else if ($.trim(data) > 0) {
							$('#pwcheckMsg')
									.html(
											'<p style="color:blue">현재 비밀번호와 일치합니다.</p>');
							$('#pwcheckFlag').val("Y");
							
						} else {
							$('#pwcheckFlag').val("N");
							$('#pwcheckMsg').html(
									'<p style="color:red">현재 비밀번호와 일치하지않습니다.</p>');
							$('#userpw').focus();
						}
					},
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				});

	}
	
	function checkPw() {
		var pwrex = new RegExp(
				"^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{6,16}$", "g");

		if (!pwrex.test($('#userpwchg').val())) {
			$('#pw1checkFlag').val("N");
			$('#pw1checkMsg')
					.html(
							'<p style="color:red">비밀번호는 숫자, 영어, 특수문자를 포함하여 7~16로 입력해야합니다.</p>');
			$('#userpwchg').focus();
		} else {
			$('#pw1checkFlag').val("Y");
			$('#pw1checkMsg').html('<p style="color:blue">사용가능한 비밀번호 입니다.</p>');
		}
	}

	function checkPw2() {
		if ($.trim($('#userpwchg').val()) == $.trim($('#userpwchk').val())) {
			$('#pw2checkFlag').val("Y");
			$('#pw2checkMsg').html('<p style="color:blue">비밀번호가 일치합니다.</p>');
		} else {
			$('#pw2checkFlag').val("N");
			$('#pw2checkMsg').html('<p style="color:red">비밀번호가 일치하지 않습니다.</p>');
			$('#userpwchk').focus();
		}
	}

	
	function fn_formSubmit() {
		if (!chkInputValue("#userpw", "pw는 필수입력입니다. "))
			return false;
		if (!chkInputValue("#userpwchg", "pw1는 필수입력입니다."))
			return false;
		if (!chkInputValue("#userpwchk", "pw2는 필수입력입니다."))
			return false;

		if (!chkFlag("#pwcheckFlag", "pwcheckFlag"))
			return false;
		if (!chkFlag("#pw1checkFlag", "pw1checkFlag"))
			return false;
		if (!chkFlag("#pw2checkFlag", "pw2checkFlag"))
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
			
			<form id="form1" name="form1" class="form-horizontal" action="userUpdatePwSave" method="post">
			
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">현재 비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="userpw"
						name="userpw" placeholder="비밀번호" oninput="checkCurrentPw()"> <input
						type="hidden" id="pwcheckFlag" value="N" />
					<div id="pwcheckMsg"></div>
				</div>
			</div>
			
			
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">새 비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="userpwchg"
						name="userpwchg" placeholder="비밀번호" oninput="checkPw()"> <input
						type="hidden" id="pw1checkFlag" value="N" />
					<div id="pw1checkMsg"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck" class="col-sm-2 control-label">새 비밀번호
					확인</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="userpwchk"
						name="userpwchk" placeholder="비밀번호 확인" oninput="checkPw2()">
					<input type="hidden" id="pw2checkFlag" value="N" />
					<div id="pw2checkMsg"></div>
				</div>
			</div>
			
		<div class="col-sm-6">
			<a href="#" class="btn btn-primary" onclick="fn_formSubmit()">비밀번호 변경</a>
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