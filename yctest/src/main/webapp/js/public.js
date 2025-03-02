var gnbClick;



function init()
{
	let cur_path = window.location.pathname;
	if(cur_path.indexOf("/work.jsp") === -1) cur_path += "work.jsp";
	let formSet = document.getElementById('formSet');
	let top = document.getElementById('top');
	let nav = document.getElementById('nav');
	let footer = document.getElementById('footer');
	isLogin = top.getAttribute("value");
	formSet.innerHTML = `<form action="` + cur_path + `" name='page' method="post"></form>
	<form id="logout" method="post" action="`+ cur_path +`"></form>`;
	if(isLogin == 'null'){
		top.innerHTML = `<div class="top__logo">
		<a onclick="movePage('')" onfocus="this.blur()"><img alt="영천	법인세무조사인터넷신고시스템" width="50%" src="images/public/header_Logo.png"  class="top__logo"></a>
	</div>
	<div class="top__menu">
		<ul>
			<li><a onclick="movePage('')">홈</a></li>
			<li><a onclick="movePage('views/ac_login.jsp')">로그인</a></li>
			<li><a onclick="movePage('views/ac_signup.jsp')">회원가입</a></li>
			<li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>
		</ul>
	</div>`;
	nav.innerHTML = `<div class="nav-wrapper__hdgnb">
		<div class="nav-wrapper__gnb">
			<ul class="nav-wrapper__gnbUl">
				<li class="depth nav-wrapper__depth1_1">
					<a onclick="movePage('views/fr_corpstat.jsp')" class="nav-wrapper__depth1">신고서작성</a>
					<ul class="depth2 nav-wrapper__depth2_1">
						<li><a onclick="movePage('views/fr_corpstat.jsp')">법인현황</a></li>
						<li><a onclick="movePage('views/fr_localtax_special.jsp')">지방소득세특별징수</a></li>
						<li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>
						<li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>
						<li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>
						<li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_2">
					<a onclick="movePage('views/no_page.jsp')" class="nav-wrapper__depth1"><span></span>신고서조회</a>
					<ul class="depth2 nav-wrapper__depth2_2">
						<li><a onclick="movePage('views/no_page.jsp')">신고내역조회</a></li>
						<li><a onclick="movePage('views/no_page.jsp')">신고서출력</a></li>
						<li><a onclick="movePage('views/no_page.jsp')">세무조사결과조회</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_3">
					<a onclick="movePage('views/iv_guide.jsp')" class="nav-wrapper__depth1"><span></span>세무조사안내</a>
					<ul class="depth2 nav-wrapper__depth2_3">
						<li><a onclick="movePage('views/iv_guide.jsp')">지방세세무조사안내</a></li>
						<li><a onclick="movePage('views/iv_glossary.jsp')">용어해설</a></li>
						<li><a onclick="movePage('views/iv_archives.jsp')">서식관련자료실</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_4">
					<a onclick="movePage('views/sc_notice.jsp')" class="nav-wrapper__depth1"><span></span>고객센터</a>
					<ul class="depth2 nav-wrapper__depth2_4">
						<li><a onclick="movePage('views/sc_notice.jsp')">공지사항</a></li>
						<li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
						<li><a onclick="movePage('views/sc_qna.jsp')">Q&amp;A</a></li>
						<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
						<li><a onclick="movePage('views/sc_survey.jsp')">설문</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_5">
					<a onclick="movePage('views/no_page.jsp')" class="nav-wrapper__depth1"><span></span>마이페이지</a>
					<ul class="depth2 nav-wrapper__depth2_5">
						<li><a onclick="movePage('views/no_page.jsp')">정보관리</a></li>
						<li><a onclick="movePage('views/view_report_target.jsp')">신고대상여부조회</a></li>
						<li><a onclick="movePage('views/view_submit.jsp')">접수결과조회</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>`;
	}
	else{
		top.innerHTML = `<div class="top__logo">
		<a onclick="movePage('')" onfocus="this.blur()"><img alt="영천법인세무조사인터넷신고시스템" width="50%" src="images/public/header_Logo.png"  class="top__logo"></a>
	</div>
	<div class="top__menu">
		<ul>
			<li><a onclick="movePage('')">홈</a></li>
			<li><a onclick="doAction('action/logout_action.jsp', 'logout')">로그아웃</a></li>
			<li><a onclick="movePage('views/manage_info.jsp')">정보관리</a></li>
			<li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>
		</ul>
	</div>`;
		nav.innerHTML = `<div class="nav-wrapper__hdgnb">
		<div class="nav-wrapper__gnb">
			<ul class="nav-wrapper__gnbUl">
				<li class="depth nav-wrapper__depth1_1">
					<a onclick="movePage('views/fr_corpstat.jsp')" class="nav-wrapper__depth1">신고서작성</a>
					<ul class="depth2 nav-wrapper__depth2_1">
						<li><a onclick="movePage('views/fr_corpstat.jsp')">법인현황</a></li>
						<li><a onclick="movePage('views/fr_localtax_special.jsp')">지방소득세특별징수</a></li>
						<li><a onclick="movePage('views/fr_resident_tax.jsp')">주민세재산분</a></li>
						<li><a onclick="movePage('views/fr_depart_resitax.jsp')">주민세종업원분</a></li>
						<li><a onclick="movePage('views/fr_attach_document_manage.jsp')">첨부서류관리</a></li>
						<li><a onclick="movePage('views/fr_submit_report.jsp')">신고서제출</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_2">
					<a onclick="movePage('views/lr_lookup.jsp')" class="nav-wrapper__depth1"><span></span>신고서조회</a>
					<ul class="depth2 nav-wrapper__depth2_2">
						<li><a onclick="movePage('views/lr_lookup.jsp')">신고내역조회</a></li>
						<li><a onclick="movePage('views/lr_print.jsp')">신고서출력</a></li>
						<li><a onclick="movePage('views/lr_result.jsp')">세무조사결과조회</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_3">
					<a onclick="movePage('views/iv_guide.jsp')" class="nav-wrapper__depth1"><span></span>세무조사안내</a>
					<ul class="depth2 nav-wrapper__depth2_3">
						<li><a onclick="movePage('views/iv_guide.jsp')">지방세세무조사안내</a></li>
						<li><a onclick="movePage('views/iv_glossary.jsp')">용어해설</a></li>
						<li><a onclick="movePage('views/iv_archives.jsp')">서식관련자료실</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_4">
					<a onclick="movePage('views/sc_notice.jsp')" class="nav-wrapper__depth1"><span></span>고객센터</a>
					<ul class="depth2 nav-wrapper__depth2_4">
						<li><a onclick="movePage('views/sc_notice.jsp')">공지사항</a></li>
						<li><a onclick="movePage('views/sc_question.jsp')">자주묻는질문</a></li>
						<li><a onclick="movePage('views/sc_qna.jsp')">Q&amp;A</a></li>
						<li><a onclick="movePage('views/sc_manager.jsp')">담당자안내</a></li>
						<li><a onclick="movePage('views/sc_survey.jsp')">설문</a></li>
					</ul>
				</li>
				<li class="depth nav-wrapper__depth1_5">
					<a onclick="movePage('views/manage_info.jsp')" class="nav-wrapper__depth1"><span></span>마이페이지</a>
					<ul class="depth2 nav-wrapper__depth2_5">
						<li><a onclick="movePage('views/manage_info.jsp')">정보관리</a></li>
						<li><a onclick="movePage('views/view_report_target.jsp')">신고대상여부조회</a></li>
						<li><a onclick="movePage('views/view_submit.jsp')">접수결과조회</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>`;
	};
	footer.innerHTML = `<div class="foot">
	<div class="foot__left">
		<img alt="영천시청" src="images/public/footer_Logo.png"/>
	</div>
	<div class="foot__right">
		<ul>
			<li style="background:#262625;border:1px solid #262625"><a onclick="movePage('views/access_terms.jsp')" target="blank" style="background:#262625;color:#00abba">개인정보처리방침</a></li>
			<!-- 온클릭 -->
			<li><a onclick="movePage('views/ug_clause.jsp')">이용약관</a></li>	
		</ul>
		<div class="foot__right__r">
				주-------------소   Copyright(C) 2021  by  영천  City. All rights reserved.
				<br/><b>홈페이지 관련문의 : 번--호</b>
		</div>
	</div>
</div>`;
	if(isLogin.toString() == "admin") {
		top.innerHTML = `<div class="top__logo">
		<a onclick="movePage('')" onfocus="this.blur()"><img alt="영천	법인세무조사인터넷신고시스템" width="50%" src="images/public/header_Logo.png"  class="top__logo"></a>
		</div>
		<div class="top__menu">
			<ul>
				<li><a onclick="movePage('')">홈</a></li>
				<li><a onclick="doAction('action/logout_action.jsp', 'logout')">로그아웃</a></li>
				<li><a onclick="movePage('admin')">관리자페이지</a></li>
				<li><a onclick="movePage('views/ug_sitemap.jsp')">사이트맵</a></li>
			</ul>
		</div>`;
	}
	gnb();
};

function movePage(pageName)
{
	/*
	anchorHandler = document.getElementById('anchorHandler');
	console.log(anchorHandler)
	anchorHandler.innerHTML = `<% pageContext.forward("` + pageName.toString() + `"); %>`
	*/
	var form = document.page;
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'pageName';
	hiddenField.value = pageName;
	form.appendChild(hiddenField);
	form.submit();
};

//function alert(msg)
//{
//	/*
//	anchorHandler = document.getElementById('anchorHandler');
//	console.log(anchorHandler)
//	anchorHandler.innerHTML = `<% pageContext.forward("` + pageName.toString() + `"); %>`
//	*/
//	alert(msg);
//};

function doAction(actionName, docName)
{
	var form = document.getElementById(docName);
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = actionName;
	form.appendChild(hiddenField);
	form.submit();
}

function dupCheck()
{
	var form = document.getElementById('dupchk');
	var hiddenField = document.createElement("input");
	var hiddenField1 = document.createElement("input");
	var hiddenField2 = document.createElement("input");
	var hiddenField3 = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField1.setAttribute("type", "hidden");
	hiddenField2.setAttribute("type", "hidden");
	hiddenField3.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = 'action/dupchk_action.jsp';
	var c1 = document.getElementById('c1');
	var c2 = document.getElementById('c2');
	var c3 = document.getElementById('c3');
	hiddenField1.name = 'Cs_company_reg_num1';
	hiddenField2.name = 'Cs_company_reg_num2';
	hiddenField3.name = 'Cs_company_reg_num3';
	hiddenField1.value = c1.value;
	hiddenField2.value = c2.value;
	hiddenField3.value = c3.value;
	form.appendChild(hiddenField);
	form.appendChild(hiddenField1);
	form.appendChild(hiddenField2);
	form.appendChild(hiddenField3);
	form.submit();
}

function playVideo(){
   window.open("/views/main_video.jsp",'테스트동영상','width=750px,height=420px,margin-width=0,margin-height=0,border=0,scrollbars=no,resizable=no,left=180,top=180');
}

function doWrite(actionName)
{
	var form = document.write;
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = actionName;
	form.appendChild(hiddenField);
	form.submit();
}

function subForm(actionName, idName)
{
	var form = document.getElementsByClassName(idName)[0];
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = actionName;
	form.appendChild(hiddenField);
	form.submit();
}
function pdfPages(page)
{
	var form = document.pdfPage;
	var hiddenField = document.createElement("input");
	var hiddenField2 = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = "views/ug_pdf.jsp";
	hiddenField2.setAttribute("type", "hidden");
	hiddenField2.name = 'page';
	hiddenField2.value = page;
	form.appendChild(hiddenField);
	form.appendChild(hiddenField2);
	form.submit();
};
function noQnA()
{
	alert("진행되고 있는 설문이 없습니다.");
	window.location.href = '/';
}
function ivInfo(flag)
{
	let option = "width = 500, height = 500, top = 100, left = 200, location = no";
	if(flag=='1') {
		window.open('../views/iv_info1.jsp', "info1", option);
	}
	else {
		window.open('../views/iv_info2.jsp', "info2", option);
	}
}


function deleteConfirm()
{
	var cf = confirm("정말로 삭제하시겠습니까?");
	if(cf) {
		var form = document.write;
		form.submit();
	}
}

function gnb(){
	//GNB
	var gnbClick = $('.nav-wrapper__gnbUl>li>a');
	gnbClick.mouseover(openGnb);
	gnbClick.focus(openGnb);
	$('.nav-wrapper__hdgnb').mouseleave(closeGnb);
	$('.nav-wrapper__gnbUl a').blur(blurGnb);
};

var gnbTimer;
function openGnb(){
	$('.nav-wrapper__gnbUl>li>a').not(this).parents('li').removeClass('on');
	$(this).parent('li').addClass('on');
	$('.nav-wrapper__gnb').addClass('open').animate({height:'200px'}, 300);
	$('.depth2').show();
};
function closeGnb(){
	$('.nav-wrapper__gnbUl > li').removeClass('on');
	$('.nav-wrapper__gnb').removeClass('open').animate({height:'45px'}, 300);
	$('.depth2').hide();
};
function blurGnb(){
	if(gnbTimer){clearTimeout(gnbTimer);};
	gnbTimer = setTimeout(function(){
		if($('.nav-wrapper__gnbUl a:focus').length<1){
			closeGnb();
		}
	}, 1);
};

