<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>인터넷신고동영상보기</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
function getBrowserType(){          
    var _ua = navigator.userAgent;
    var rv = -1;     
    //IE 11,10,9,8
    var trident = _ua.match(/Trident\/(\d.\d)/i);
    if( trident != null )
    {
        if( trident[1] == "7.0" ) return rv = "IE" + 11;
        if( trident[1] == "6.0" ) return rv = "IE" + 10;
        if( trident[1] == "5.0" ) return rv = "IE" + 9;
        if( trident[1] == "4.0" ) return rv = "IE" + 8;
    }     
    //IE 7...
    if( navigator.appName == 'Microsoft Internet Explorer' ) return rv = "IE" + 7;     
    
    var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    if(re.exec(_ua) != null) rv = parseFloat(RegExp.$1);
    if( rv == 7 ) return rv = "IE" + 7;   
     
    //other
    var agt = _ua.toLowerCase();
    if (agt.indexOf("chrome") != -1) return 'Chrome';
    if (agt.indexOf("opera") != -1) return 'Opera'; 
    if (agt.indexOf("staroffice") != -1) return 'Star Office'; 
    if (agt.indexOf("webtv") != -1) return 'WebTV'; 
    if (agt.indexOf("beonex") != -1) return 'Beonex'; 
    if (agt.indexOf("chimera") != -1) return 'Chimera'; 
    if (agt.indexOf("netpositive") != -1) return 'NetPositive'; 
    if (agt.indexOf("phoenix") != -1) return 'Phoenix'; 
    if (agt.indexOf("firefox") != -1) return 'Firefox'; 
    if (agt.indexOf("safari") != -1) return 'Safari'; 
    if (agt.indexOf("skipstone") != -1) return 'SkipStone'; 
    if (agt.indexOf("netscape") != -1) return 'Netscape'; 
    if (agt.indexOf("mozilla/5.0") != -1) return 'Mozilla';
    
    
}
$(document).ready(function(){
	var agent = navigator.userAgent.toLowerCase(); 
	if( agent.indexOf('msie 7') > -1 && agent.indexOf('trident') > -1 ){  
 		//호환성모드 	
		var chk = confirm("동영상 지원이 불가능한 브라우져 환경입니다. 영상을 다운 받으시겠습니까?");
			if(chk){
				//window.location = '/flash/AsIs_vs_ToBe.mp4';
				document.location="/upload/video.mp4";							
			}
	}else{
	
		//그냥모드
		if(getBrowserType()== "IE7" || getBrowserType() == "IE8" ){
			
			var chk = confirm("동영상 지원이 불가능한 브라우져 환경입니다. 영상을 다운 받으시겠습니까?");
			if(chk){
			
				document.location="/upload/video.mp4";
			}
		}else{
			$('#div_video').append("<video id='play_video' controls = 'controls' autoplay width = '100%' height = '100%'/>");
			$('#play_video').append("<source src='/upload/video.mp4' type = 'video/mp4'/>");
		}
	}
});


</script>
</head>
<body>
<div id ="div_video" style="float:left; width:720px;"></div> 
 </body>
</html>
