<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>로그인 화면</title>

<link href="css/sb-admin/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin/metisMenu.min.css" rel="stylesheet">
<link href="css/sb-admin/sb-admin-2.css" rel="stylesheet">
<link href="css/sb-admin/font-awesome.min.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script src="js/jquery-2.2.3.min.js"></script>
<script src="css/sb-admin/bootstrap.min.js"></script>
<script src="css/sb-admin/metisMenu.min.js"></script>
<script src="css/sb-admin/sb-admin-2.js"></script>
<script src="js/project9.js"></script>
<script>
	$(document).ready(function() {

		$('#selectEmail').change(function() {
			$("#selectEmail option:selected").each(function() {

				if ($(this).val() == '1') {
					$("#useremail2").val('');
					$("#useremail2").attr("disabled", false);
				}

				else {
					$("#useremail2").val($(this).text());
					$("#useremail2").attr("disabled", true);
				}

			});
		});
	});
	function chkFlag(id, msg) {
		if ($.trim($(id).val()) == 'N') {
			alert(msg + "를 확인해보세요.");
			return false;
		}
		return true;
	}

	function checkId() {
		var idrex = new RegExp("^[a-zA-Z][A-Za-z0-9]{4,12}$", "g");
		$
				.ajax({
					type : 'POST',
					url : '/smp/userJoinIdChk',
					data : {
						"userid" : $('#userid').val()
					},
					success : function(data) {
						if (!idrex.test($('#userid').val())) {
							$('#idcheckFlag').val("N");
							$('#idcheckMsg')
									.html(
											'<p style="color:red">아이디 는 숫자포함 대/소문자 영어 5~12자리까지 입력해야합니다.</p>');
							$('#userid').focus();
						} else if ($.trim(data) > 0) {
							$('#idcheckMsg')
									.html(
											'<p style="color:red">이미 아이디가 존재하거나 탈퇴한 아이디 입니다.</p>');
							$('#idcheckFlag').val("N");
							$('#userid').focus();
						} else {
							$('#idcheckFlag').val("Y");
							$('#idcheckMsg').html(
									'<p style="color:blue">사용가능한 아이디 입니다.</p>');
						}
					},
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				});

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

	function checkId_x() {
		var idrex = new RegExp("^[a-zA-Z][A-Za-z0-9]{4,12}$", "g");
		if ($.trim($('#userid').val()) == "") {
			$('#idcheckFlag').val("N");
			$('#idcheckMsg').html('<p style="color:red">id를 입력하세요.</p>');
			$('#userid').focus();
		} else if (!idrex.test($('#userid').val())) {
			$('#idcheckFlag').val("N");
			$('#idcheckMsg')
					.html(
							'<p style="color:red">아이디 는 숫자포함 대/소문자 영어 5~12자리까지 입력해야합니다.</p>');
			$('#userid').focus();
		} else {
			$('#idcheckFlag').val("Y");
			$('#idcheckMsg').html('<p style="color:blue">사용가능한 아이디 입니다.</p>');
		}
	}

	function checkPw() {
		var pwrex = new RegExp(
				"^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{6,16}$", "g");

		if (!pwrex.test($('#userpw').val())) {
			$('#pwcheckFlag').val("N");
			$('#pwcheckMsg')
					.html(
							'<p style="color:red">비밀번호는 숫자, 영어, 특수문자를 포함하여 7~16로 입력해야합니다.</p>');
			$('#userpw').focus();
		} else {
			$('#pwcheckFlag').val("Y");
			$('#pwcheckMsg').html('<p style="color:blue">사용가능한 비밀번호 입니다.</p>');
		}
	}

	function checkPw2() {
		if ($.trim($('#userpw').val()) == $.trim($('#userpwchk').val())) {
			$('#pw2checkFlag').val("Y");
			$('#pw2checkMsg').html('<p style="color:blue">비밀번호가 일치합니다.</p>');
		} else {
			$('#pw2checkFlag').val("N");
			$('#pw2checkMsg').html('<p style="color:red">비밀번호가 일치하지 않습니다.</p>');
			$('#userpwchk').focus();
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
		if (!chkInputValue("#userid", "id는 필수입력입니다. "))
			return false;
		if (!chkInputValue("#userpw", "pw는 필수입력입니다."))
			return false;
		if (!chkInputValue("#userpwchk", "pw2는 필수입력입니다."))
			return false;
		if (!chkInputValue("#usernm", "name는 필수입력입니다."))
			return false;

		if (!chkFlag("#idcheckFlag", "idcheckFlag"))
			return false;
		if (!chkFlag("#pwcheckFlag", "pwcheckFlag"))
			return false;
		if (!chkFlag("#pw2checkFlag", "pw2checkFlag"))
			return false;
		if (!chkFlag("#nmcheckFlag", "nmcheckFlag"))
			return false;

		if ($("#agree").prop("checked") == false) {
			$('#agrcheckMsg').html(
					'<p style="color:red">약관에 동의해주셔야 가입이 가능합니다.</p>');
			$('#agree').focus();
			return false;
		}

		$("#form1").submit();
	}
</script>

</head>

<body>
	<div class="container">
		<div class="page-header">
			<h1>
				회원가입 <small>일반회원가입</small>
			</h1>
		</div>
		<form id="form1" name="form1" class="form-horizontal"
			action="userJoinSave" method="get">
			<div class="form-group">
				<label for="inputId" class="col-sm-2 control-label">*아이디</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="userid" name="userid"
						oninput="checkId()" placeholder="아이디" autocomplete="off">
					<input type="hidden" id="idcheckFlag" value="N" />
					<div id="idcheckMsg"></div>
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">*비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="userpw"
						name="userpw" placeholder="비밀번호" oninput="checkPw()"> <input
						type="hidden" id="pwcheckFlag" value="N" />
					<div id="pwcheckMsg"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck" class="col-sm-2 control-label">*비밀번호
					확인</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="userpwchk"
						name="userpwchk" placeholder="비밀번호 확인" oninput="checkPw2()">
					<input type="hidden" id="pw2checkFlag" value="N" />
					<div id="pw2checkMsg"></div>
				</div>
			</div>
			<div class="form-group">
				
					<label for="inputEmail" class="col-sm-2 control-label">이메일</label> 
					<div class="col-sm-3">
					<input type="text" class="form-control" id="useremail" name="useremail" placeholder="이메일" />
					</div>
					<div class="col-sm-1">
					 @
					 </div>
					 <div class="col-sm-3"> 
					 <input type="text" class="form-control" id="useremail2" name="useremail2" />
					 </div> 
					 <select name="selectEmail" id="selectEmail">
						<option value="1" selected="selected">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
					</select>

			</div>
	
			<div id="emailcheckMsg"></div>


	<div class="form-group">
		<label for="inputName" class="col-sm-2 control-label">*이름</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="usernm" name="usernm"
				placeholder="이름" autocomplete="off" oninput="checkNm()"> <input
				type="hidden" id="nmcheckFlag" value="N" />
			<div id="nmcheckMsg"></div>
		</div>
	</div>
	<div class="form-group">
		<label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="usertel" name="usertel"
				placeholder="휴대폰번호 - 없이 적어주세요." oninput="checkTel()"> <input type="hidden"
				id="telcheckFlag" value="N" />
			<div id="telcheckMsg"></div>
		</div>
		<div class="col-sm-2">
			<a class="btn btn-default" href="#" role="button">인증번호 전송</a>
		</div>
	</div>
	<div class="form-group">
		<label for="inputNumberCheck" class="col-sm-2 control-label">인증번호
			확인</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="inputNumberCheck" placeholder="이름">
			<p class="help-block">전송된 인증번호를 입력해주세요.</p>
		</div>
	</div>
	<div class="form-group">
		<label for="inputAgree" class="col-sm-2 control-label">*약관 동의</label>
		<div class="col-sm-6 checkbox">
			<label> <input id="agree" type="checkbox"> <a
				href="/agreement"> 이용약관</a>에 동의합니다.
			</label>
			<div id="agrcheckMsg"></div>
		</div>
	</div>
	<div class="form-group">
		<label for="inputName" class="col-sm-2 control-label"></label>
		<div class="col-sm-6">

			<a href="#" class="btn btn-primary" onclick="fn_formSubmit()">회원가입</a>
		</div>
	</div>
	</form>

	</div>

</body>

</html>
