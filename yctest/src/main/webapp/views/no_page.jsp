<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="google" content="notranslate">
    <script type="text/javascript" src="js/public.js"></script>
    <title>법인세무조사 인터넷신고시스템</title>
    <style>
      html{
        -ms-user-select: none; 
        -moz-user-select: -moz-none;
        -khtml-user-select: none;
        -webkit-user-select: none;
        user-select: none;
      }
      #content{
        margin:0;
        text-align: center;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
      }
      h1{
          font-size:90px;
          margin-top:0px;
          margin-bottom:20px;
      }
      .btn{
          font-size:15px;
          font-weight:1000;
          float:center;
          height:35px;
          border:none;
          background-color: white;
          display: block;
          position: relative;
          overflow: hidden;
          transition: all .2s ease-in-out .2s;
          margin: 0 auto;
          text-align: center;
      }
      .btn:hover {
          color: #8cc9f0;
      }
      .btn:hover:before {
          transform: none;
          opacity: 1;
          transition-duration: 0.4s;
      }
      .btn:before {
          content: "";
          position: absolute;
          width: 90%;
          height: 2px;
          margin-left:4px;
          margin-bottom:3px;
          left: 0;
          bottom: 0px;
          background: #8cc9f0;
          transform: translateY(6px);
          opacity: 0;
          transition: 1.8s cubic-bezier(0.2, 1, 0.3, 1);
          pointer-events: none;
      }
      img{
        height:250px;
        width:250px;
        margin-bottom:0px;
      }
    </style>
  </head>
  <body>
  <% String cur_path = request.getContextPath(); 
	%>
  <form action="<%=cur_path %>/work.jsp" name='page' method="post"></form>
    <div id="content">
      <img src="images/public/noPage.png">
      <h1>!!</h1>
      <h3>로그인후 이용해주세요</h3>
      <button class="btn" onclick="movePage('')">홈으로 가기</button>
    </div>
  </body>
</html>