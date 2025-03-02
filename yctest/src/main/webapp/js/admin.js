function goAdminPage()
{
	window.location.href = 'ad_main.jsp'
};

function init()
{
//	window.onbeforeunload = function (e) {
//    	return 0;
//	};
   let cur_path = window.location.pathname;
   if(cur_path.indexOf("/work.jsp") === -1) cur_path += "work.jsp";
   let top = document.getElementById('top');
   let nav = document.getElementById('nav');
   let footer = document.getElementById('footer');
   let formSet = document.getElementById('formSet');
   formSet.innerHTML = `<form action="` + cur_path + `" name='page' method="post"></form>
	<form id="logout" method="post" action="`+ cur_path +`"></form>`;
   top.innerHTML = `<div class="top__logo">
   <a onclick="movePage('ad_main.jsp')" onfocus="this.blur()"><img alt="영천법인세무조사인터넷신고시스템" src="../images/public/header_Logo.png"  width="50%" class="top__logo"></a>
</div>
<div class="top__menu">
   <ul>
      <li><a onclick="movePage('ad_main.jsp')">홈</a></li>
      <li><a onclick="doAction('../ad_action/logout_action.jsp', 'logout')">로그아웃</a></li>
      <li><a onclick="movePage('ad_test.jsp')">[TEST]</a></li>
   </ul>
</div>`
   nav.innerHTML = `<div class="nav-wrapper__hdgnb">
   <div class="nav-wrapper__gnb">
      <ul class="nav-wrapper__gnbUl">
         <li class="depth nav-wrapper__depth1_1">
            <a onclick="movePage('ad_admin1_write.jsp')" class="nav-wrapper__depth1">통지서작성</a>
            <ul class="depth2 nav-wrapper__depth2_1">
               <li><a onclick="movePage('ad_admin1_write.jsp')">과세예고 내역 작성</a></li>
               <li><a onclick="movePage('ad_admin2_write.jsp')">세무조사결과통지서 작성</a></li>
               <li><a onclick="movePage('ad_admin3_write.jsp')">지방세 과세예고 통지서 작성</a></li>
            </ul>
         </li>
         <li class="depth nav-wrapper__depth1_2">
            <a onclick="movePage('ad_admin1.jsp')" class="nav-wrapper__depth1"><span></span>통지서조회</a>
            <ul class="depth2 nav-wrapper__depth2_2">
               <li><a onclick="movePage('ad_admin1.jsp')">과세예고 내역</a></li>
               <li><a onclick="movePage('ad_admin2.jsp')">세무조사결과통지서</a></li>
               <li><a onclick="movePage('ad_admin3.jsp')">지방세 과세예고 통지서</a></li>
                    <li><a onclick="movePage('ad_admin.jsp')">과세예고 통지</a></li>
            </ul>
         </li>
		<li class="depth nav-wrapper__depth1_3">
            <a onclick="movePage('ad_admin_notice.jsp')" class="nav-wrapper__depth1"><span></span>고객센터관리</a>
            <ul class="depth2 nav-wrapper__depth2_3">
               <li><a onclick="movePage('ad_admin_notice.jsp')">공지사항</a></li>
               <li><a onclick="movePage('ad_admin_ques.jsp')">자주묻는질문</a></li>
               <li><a onclick="movePage('ad_admin_qna.jsp')">Q&amp;A</a></li>
               <li><a onclick="movePage('ad_admin_charge.jsp')">담당자안내</a></li>
				<li><a onclick="movePage('ad_admin_survey.jsp')">설문</a></li>
            </ul>
         </li>
		<li class="depth nav-wrapper__depth1_4">
            <a onclick="movePage('ad_admin_glossary.jsp')" class="nav-wrapper__depth1"><span></span>세무조사안내관리</a>
            <ul class="depth2 nav-wrapper__depth2_4">
               <li><a onclick="movePage('ad_admin_glossary.jsp')">용어해설</a></li>
               <li><a onclick="movePage('ad_admin_archives.jsp')">서식관련자료실</a></li>
            </ul>
         </li>
		<li class="depth nav-wrapper__depth1_5">
		<a onclick="movePage('ad_admin_manage.jsp')" class="nav-wrapper__depth1"><span></span>회원관리</a>
            <ul class="depth2 nav-wrapper__depth2_5">
               <li><a onclick="movePage('ad_admin_manage.jsp')">정보관리</a></li>
            </ul>
		</li>
      </ul>
   </div>
</div>`;
   footer.innerHTML = `<div class="foot">
   <div class="foot__left">
      <img alt="영천시청" src="../images/public/footer_Logo.png"/>
   </div>
   <div class="foot__right">
      <div class="foot__right__r">
            주-------------소   Copyright(C) 2021  by  영천  City. All rights reserved.
            <br/><b>홈페이지 관련문의 : 번--호</b>
      </div>
   </div>
</div>`;
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

function doAction(actionName, docName)
{
	var form = document.getElementById(docName);
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = actionName;
	form.appendChild(hiddenField);
	form.submit();
};

function subForm(actionName, idName)
{
	var form = document.getElementsByClassName(idName)[0];
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = actionName;
	form.appendChild(hiddenField);
	form.submit();
};

function doWrite(actionName)
{
	var form = document.write;
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.name = 'actionName';
	hiddenField.value = actionName;
	form.appendChild(hiddenField);
	form.submit();
};

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