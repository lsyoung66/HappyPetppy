<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>업체위탁</title>
   <link href="header.css" rel="stylesheet" />
   <link href="footer.css" rel="stylesheet" />
   <link href="reset.css" rel="stylesheet" />
   <style type="text/css">
      .section {
         margin: auto;
         justify-content: center;
         width: 60%;
      }

      .left {
         width: 20%;
         float: left;
         box-sizing: border-box;
      }

      .right {
         position: static;
         overflow: hidden;
         width: 80%;
         float: right;
         box-sizing: border-box;
      }

      .left2 {
         width: 50%;
         height: 100%;
         float: left;
         box-sizing: border-box;
         border-radius: 20px 0px 0px 20px;
      }

      .right2 {
         position: relative;
         overflow: hidden;
         width: 50%;
         height: 100%;
         float: right;
         box-sizing: border-box;
         border-radius: 0px 20px 20px 0px;
      }

      #button1 {
         color: #FFB02E;
      }

      .menu-active {
         color: #FFB02E;
      }

      .contents {
         width: 99%;
         background-color: rgba(255, 176, 46, 0.1);
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
         border-radius: 20px;
         padding: 1% 1%;
         box-sizing: border-box;
      }

      .box {
         display: -webkit-flex;
         display: flex;
         -webkit-align-items: center;
         align-items: center;
         position: relative;
         width: 100%;
         justify-content: space-between;
      }

      .box2 {
         display: -webkit-flex;
         display: flex;
         -webkit-align-items: center;
         align-items: center;
         position: relative;
         width: 100%;
         justify-content: space-between;
         height: 200px;
         border-radius: 20px;
      }

      hr {
         border: 3px solid #F9F5EA;
      }

      a:link {
         color: inherit;
         text-decoration: none;
      }

      a:visited {
         color: inherit;
         text-decoration: none;
      }

      a:hover {
         color: #996b20;
      }

      #Btn1 {
         display: block;
      }

      #Btn2 {
         display: none;
      }

      #Btn3 {
         display: none;
      }

      #Btn4 {
         display: none;
      }

      #Btn5 {
         display: none;
      }

      #Btn6 {
         display: none;
      }

      #Btn7 {
         display: none;
      }

      .dropdown {
         position: relative;
         display: inline-block;
      }

      .dropbtn_icon {
         font-family: 'Material Icons';
         padding: 10px;
         font-size: 13px;
         vertical-align: middle;
      }

      .dropbtn {
         border: none;
         background-color: #FFB02E;
         font-weight: bold;
         color: rgb(37, 37, 37);
         padding: 7px;
         width: 155px;
         text-align: left;
         cursor: pointer;
         font-size: 12px;
      }

      .dropdown-content {
         display: none;
         position: absolute;
         z-index: 1;
         font-weight: 400;
         background-color: #f9f9f9;
         background-color: #ff6ea8;
         background-color: rgba(247, 119, 170, 0.95);
         min-width: 140px;
         text-align: center;
         border-radius: 15px;
      }

      .dropdown-content a {
         display: block;
         text-decoration: none;
         color: rgb(37, 37, 37);
         color: white;
         font-size: 12px;
         font-weight: bold;
         padding: 12px 20px;
      }

      .dropdown-content a:hover {
         background-color: #b37f29;
         border-radius: 15px;
      }

      .dropdown:hover .dropdown-content {
         display: block;
      }

      .profile {
         height: 30%;
         width: 30%;
         border-radius: 70%;
         vertical-align: middle;
      }

      .img {
         object-fit: cover;
         border-radius: 20%;
         border: 3.5px solid #FFB02E;
         box-shadow: 0px 0px 5px #fff;
         margin: 0px;
         position: relative;
         justify-content: center;
         width: 100px;
         height: 100px;
      }

      .table {
         padding: 10px;
         width: 98%;
         border-radius: 20px;
         border: 2.5px dashed #eda1c0;
      }

      th {
         font-size: 12pt;
         font-weight: 900;
         color: #4a3107;
         font-family: arial;
  		 text-decoration: underline 2.5px #eda1c0;
      }

      td {
         font-family: arial;
      }
      
      .table a{
      	color: #4a3107;
  		 text-decoration: underline 2.5px #eda1c0;
      	}
      
      .table a:hover{
      	color:#f3bfd4;
  		 text-decoration: underline 2.5px #eda1c0;
      	}

   </style>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript">
      $(document).ready(function () {
         $("#btn1").click();
      });
      $(document).ready(function () {
         $("button[id=btn1]").click(function () {
            $('#Btn1').css('display', 'block');
            $('#Btn2').css('display', 'none');
            $('#Btn3').css('display', 'none');
            $('#Btn4').css('display', 'none');
            $('#Btn5').css('display', 'none');
            $('#Btn6').css('display', 'none');
            $('#Btn7').css('display', 'none');
         });
         $("button[id=btn2]").click(function () {
            $('#Btn1').css('display', 'none');
            $('#Btn2').css('display', 'block');
            $('#Btn3').css('display', 'none');
            $('#Btn4').css('display', 'none');
            $('#Btn5').css('display', 'none');
            $('#Btn6').css('display', 'none');
            $('#Btn7').css('display', 'none');
         });
         $("button[id=btn3]").click(function () {
            $('#Btn1').css('display', 'none');
            $('#Btn2').css('display', 'none');
            $('#Btn3').css('display', 'block');
            $('#Btn4').css('display', 'none');
            $('#Btn5').css('display', 'none');
            $('#Btn6').css('display', 'none');
            $('#Btn7').css('display', 'none');
         });
         $("button[id=btn4]").click(function () {
            $('#Btn1').css('display', 'none');
            $('#Btn2').css('display', 'none');
            $('#Btn3').css('display', 'none');
            $('#Btn4').css('display', 'block');
            $('#Btn5').css('display', 'none');
            $('#Btn6').css('display', 'none');
            $('#Btn7').css('display', 'none');
         });
         $("button[id=btn5]").click(function () {
            $('#Btn1').css('display', 'none');
            $('#Btn2').css('display', 'none');
            $('#Btn3').css('display', 'none');
            $('#Btn4').css('display', 'none');
            $('#Btn5').css('display', 'block');
            $('#Btn6').css('display', 'none');
            $('#Btn7').css('display', 'none');
         });
         $("button[id=btn6]").click(function () {
            $('#Btn1').css('display', 'none');
            $('#Btn2').css('display', 'none');
            $('#Btn3').css('display', 'none');
            $('#Btn4').css('display', 'none');
            $('#Btn5').css('display', 'none');
            $('#Btn6').css('display', 'block');
            $('#Btn7').css('display', 'none');
         });
         $("button[id=btn7]").click(function () {
            $('#Btn1').css('display', 'none');
            $('#Btn2').css('display', 'none');
            $('#Btn3').css('display', 'none');
            $('#Btn4').css('display', 'none');
            $('#Btn5').css('display', 'none');
            $('#Btn6').css('display', 'none');
            $('#Btn7').css('display', 'block');
         });
      });
   </script>
</head>

<body style="background-color: #F9F5EA;">
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	User user = new UserDAO().getMember(userID);
%>
   <header style="background-color: #FFB02E;">
      <section class="section">
         <br>
         <table class="header">
            <tr>
               <td style="width: 17%;">
                  <a href="main.jsp">
                     <img src="img/logo.png" style="height: 50px">
                  </a>
               </td>
               <td style="width: 50%; align-items: stretch;">
                  <input class="input" type="text" name="search" placeholder="검색어를 입력하세요">
                  <input class="submit" type="submit" value="submit"></input>
               </td>
               <td style="width: 17%;"></td>
               <td style="width: 8%;">
          <%
          	if(userID == null){
          %>
            	<button class="signUp" onclick="location.href='signUp.jsp'">Sign up</button>
            </td>
            <td style="width: 8%;">
                <button class="signIn" onclick="location.href='signIn.jsp'">Sign in</button>
            </td>
          <%	
          	} else {
          %>
            <div class="dropdown">
              <button class="dropbtn">
                <img class="profile" src="img/profile.png">
			<%
				if (userID != null && userID.equals(user.getUserID())) {
			%>
                <span class="dropbtn_icon" value="userID"><%=userID %> 님</span>
			<%	
				}
			%>
              </button>
              <div class="dropdown-content">
                <a href="showPro.jsp">회원정보변경</a>
                <a href="requireList.jsp">요청목록</a>
                <a href="logoutAction.jsp">로그아웃</a>
              </div>
            </div>
          <%
          	}
          %>
        </tr>
      </table>
         <br>
         <ul></ul>
         <ul class="nav">
            <div>
               <li><a id="button1" href="#none" style="font-weight: 900;">업체예약</a></li>
               <li><a id="button2" href="community.jsp" style="font-weight: 900;">커뮤니티</a></li>
               <li><a id="button3" href="individualT.jsp" style="font-weight: 900;">위탁</a></li>
               <li><a id="button4" href="Int.jsp" style="font-weight: 900;">회사소개</a></li>
            </div>
         </ul>
      </section>
   </header>
   <br>
   <br>
   <br>
   <article>
      <section class="section">
         <div style="display: flex;">
            <div class="left">
               <br>
               <button type="button" class="menu-link" data-menu="1" id="btn1">미용</button><br><br>
               <button type="button" class="menu-link" data-menu="2" id="btn2">운동장</button><br><br>
               <button type="button" class="menu-link" data-menu="3" id="btn3">유치원</button><br><br>
               <button type="button" class="menu-link" data-menu="4" id="btn4">병원</button><br><br>
               <button type="button" class="menu-link" data-menu="5" id="btn5">펫푸드</button><br><br>
               <button type="button" class="menu-link" data-menu="6" id="btn6">호텔</button><br><br>
               <button type="button" class="menu-link" data-menu="7" id="btn7">식당 및 카페</button><br><br><br>
               <script>
                  var menuLinks = document.querySelectorAll('.menu-link');

                  function clickMenuHandler() {
                     for (var i = 0; i < menuLinks.length; i++) {
                        menuLinks[i].classList.remove('menu-link-active');
                     }
                     this.classList.add('menu-link-active');
                  }

                  for (var i = 0; i < menuLinks.length; i++) {
                     menuLinks[i].addEventListener('click', clickMenuHandler);
                  }
               </script>
            </div>
            <div class="right" id="Btn1">
               <div class="contents">
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/x7veQIPb" target='_blank'> 애견부티크</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/1.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 010-3248-4887</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 범어동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/5x0wU3By" target='_blank'> 도그온리</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 010-4466-5952</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 수~일 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 남구 봉덕동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/FArFbZsy" target='_blank'> 간지나개</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 010-5007-2020</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~일 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 동구 신천동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/GqBsHIZq" target='_blank'> 버들강아지</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/4.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-216-1001</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 수~월 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 동구 신천동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/5X9nYmiU" target='_blank'> 오늘DOG예쁨</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/5.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 010-5588-0531</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 중구 대봉동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/xYQ4CJ6G" target='_blank'> 오늘도 예쁘개</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/6.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 0507-1332-0960</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~ 10:30~22:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 동구 신천동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/GbENs8gU" target='_blank'> 슈슈봉봉애견미용</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/7.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 0507-1326-1366</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 10:30~22:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 중구 동인동2</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/54Vxb0vz" target='_blank'> 쁘리에숑</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/8.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 0507-1431-0809</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 월~토 10:00~19:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 수성동3</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/xaPUbXo7" target='_blank'> 뭉크</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/9.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 0507-1338-7660</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 수~일 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 동구 신천동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href="http://naver.me/FlJkOUmq" target='_blank'> 도그도그샵</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/10.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-742-1800</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 월~금 10:00~22:30</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 수성동1가</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                     <br>
                  </div>
               </div>
            </div>
            <div class="right" id="Btn2">
               <div class="contents">
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 멍리버</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-1.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-616-6591</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~일 12:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 현풍읍</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 발넷이야</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-2.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-761-7979</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~일 11:00~21:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 가창면</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 슈가파인</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-3.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71382-2090</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 11:00~23:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 가창면</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 파르크우록</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-4.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-766-1100</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~일 11:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 가창면</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 동그라운드</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-5.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71396-1512</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 금~수 11:00~22:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 다사읍</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 도그플레이스</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-6.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71376-0927</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 수~월 10:00~21:30</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달서구 한실로6길</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 아이조아펫파크</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-7.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71458-7012</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~일 11:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 다사읍</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 유아독존</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-8.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71348-7693</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 목~화 11:00~21:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달성군 다사읍</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 도기온</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-9.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-851-9271</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 화~일 11:00~21:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 경북 경산시 하양읍</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 피플앤퍼피</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/2-10.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71469-8344</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 토~월 10:00~21:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 경북 경산시 압량읍</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                     <br>
                  </div>
               </div>
            </div>
            <div class="right" id="Btn3">
               <div class="contents">
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 멍멍아 학교가자 애견유치원</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-1.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 010-8497-1081</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 07:00~21:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달서구 대곡동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 소통하개</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-2.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71306-0865</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 월~토 08:00~19:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달서구 용산동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 원쿡 강아지 유치원</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-3.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71325-8270</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 08:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 파동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 알로몽</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-4.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71498-7556</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 08:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 두산동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 모모댕댕유치원 달서점</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-5.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71356-2823</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 07:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달서구 대곡동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 욜로펫</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-6.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71316-6789</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 08:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 동구 각산동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 개바라기</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-7.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 010-3248-4887</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 10:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 범어동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 몽개몽개애견호텔유치원</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-8.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71492-4116</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 금~수 08:00~19:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달서구 송현동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 공드린개과점</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-9.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 050-71340-0247</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 월~토 11:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 수성구 황금동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 이재룡의 뭉개뭉개유치원</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/3-10.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-965-0854</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 매일 08:00~20:00</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 동구 각산동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                     <br>
                  </div>
               </div>
            </div>
            <div class="right" id="Btn4">
               <div class="contents">
                  <div class="box">
                     <div class="left2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 대구24시바른동물의료센터</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/4-1.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-571-0075</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 연중무휴</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 달서구 감삼동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>&nbsp;
                     <div class="right2">
                        <br>
                        <table class="table">
                           <tr>
                              <th width="60%" height="50px"><a href=""> 24시 알파동물메디컬센터</a></th>
                              <td width="10%"></td>
                              <td width="30%" rowspan="5"><img class="img" src="img/4-2.jpg"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 053-572-7585</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 연중무휴</td>
                              <td width="10%"></td>
                           </tr>
                           <tr>
                              <td width="60%"> 대구 서구 내당동</td>
                              <td width="10%"></td>
                           </tr>
                        </table>
                     </div>
                  </div>
                  <div class="box">
                    <div class="left2">
                      <br>
                      <table class="table">
                        <tr>
                          <th width="60%" height="50px"><a href=""> 24시라이프동물의료센터</a></th>
                          <td width="10%"></td>
                          <td width="30%" rowspan="5"><img class="img" src="img/4-3.jpg"></td>
                       </tr>
                       <tr>
                          <td width="60%"> 053-567-2475</td>
                          <td width="10%"></td>
                       </tr>
                       <tr>
                          <td width="60%"> 연중무휴</td>
                          <td width="10%"></td>
                       </tr>
                       <tr>
                          <td width="60%"> 대구 달서구 감삼동</td>
                          <td width="10%"></td>
                       </tr>
                    </table>
                 </div>&nbsp;
                 <div class="right2">
                   <br>
                   <table class="table">
                     <tr>
                       <th width="60%" height="50px"><a href=""> 동천동물병원</a></th>
                       <td width="10%"></td>
                       <td width="30%" rowspan="5"><img class="img" src="img/4-4.jpg"></td>
                    </tr>
                    <tr>
                       <td width="60%"> 053-323-8875</td>
                       <td width="10%"></td>
                    </tr>
                    <tr>
                       <td width="60%"> 연중무휴</td>
                       <td width="10%"></td>
                    </tr>
                    <tr>
                       <td width="60%"> 대구 북구 동천동</td>
                       <td width="10%"></td>
                    </tr>
                 </table>
              </div>
           </div>
           <div class="box">
              <div class="left2">
                <br>
                <table class="table">
                  <tr>
                    <th width="60%" height="50px"><a href=""> 태전동물병원</a></th>
                    <td width="10%"></td>
                    <td width="30%" rowspan="5"><img class="img" src="img/4-5.jpg"></td>
                 </tr>
                 <tr>
                    <td width="60%"> 053-357-7588</td>
                    <td width="10%"></td>
                 </tr>
                 <tr>
                    <td width="60%"> 월~토 09:30~19:30</td>
                    <td width="10%"></td>
                 </tr>
                 <tr>
                    <td width="60%"> 대구 북구 태전동</td>
                    <td width="10%"></td>
                 </tr>
              </table>
           </div>&nbsp;
           <div class="right2">
             <br>
             <table class="table">
               <tr>
                 <th width="60%" height="50px"><a href=""> 가온동물병원</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/4-6.jpg"></td>
              </tr>
              <tr>
                 <td width="60%"> 053-958-0075</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 09:30~19:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 북구 서변동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
          <br>
          <table class="table">
            <tr>
              <th width="60%" height="50px"><a href=""> 이솝동물병원</a></th>
              <td width="10%"></td>
              <td width="30%" rowspan="5"><img class="img" src="img/4-7.jpg"></td>
           </tr>
           <tr>
              <td width="60%"> 053-631-0209</td>
              <td width="10%"></td>
           </tr>
           <tr>
              <td width="60%"> 매일 09:00~20:00</td>
              <td width="10%"></td>
           </tr>
           <tr>
              <td width="60%"> 대구 달서구 대곡동</td>
              <td width="10%"></td>
           </tr>
        </table>
     </div>&nbsp;
     <div class="right2">
       <br>
       <table class="table">
         <tr>
           <th width="60%" height="50px"><a href=""> 마루동물병원</a></th>
           <td width="10%"></td>
           <td width="30%" rowspan="5"><img class="img" src="img/4-8.jpg"></td>
        </tr>
        <tr>
           <td width="60%"> 053-768-1002</td>
           <td width="10%"></td>
        </tr>
        <tr>
           <td width="60%"> 월~토 09:30~19:00</td>
           <td width="10%"></td>
        </tr>
        <tr>
           <td width="60%"> 대구 수성구 황금동</td>
           <td width="10%"></td>
        </tr>
     </table>
  </div>
</div>
<div class="box">
  <div class="left2">
    <br>
    <table class="table">
      <tr>
        <th width="60%" height="50px"><a href=""> 대구24시동물병원</a></th>
        <td width="10%"></td>
        <td width="30%" rowspan="5"><img class="img" src="img/4-9.jpg"></td>
     </tr>
     <tr>
        <td width="60%"> 050-71405-8277</td>
        <td width="10%"></td>
     </tr>
     <tr>
        <td width="60%"> 월~토 10:00~19:00</td>
        <td width="10%"></td>
     </tr>
     <tr>
        <td width="60%"> 대구 북구 노원동1가</td>
        <td width="10%"></td>
     </tr>
  </table>
</div>&nbsp;
<div class="right2">
 <br>
 <table class="table">
   <tr>
     <th width="60%" height="50px"><a href=""> 이끌림동물병원</a></th>
     <td width="10%"></td>
     <td width="30%" rowspan="5"><img class="img" src="img/4-10.jpg"></td>
  </tr>
  <tr>
     <td width="60%"> 053-944-8575</td>
     <td width="10%"></td>
  </tr>
  <tr>
     <td width="60%"> 매일 09:30~19:00</td>
     <td width="10%"></td>
  </tr>
  <tr>
     <td width="60%"> 대구 동구 방촌동</td>
     <td width="10%"></td>
  </tr>
</table>
</div>
<br>
</div>
</div>
</div>
<div class="right" id="Btn5">
   <div class="contents">
      <div class="box">
       <div class="left2">
        <br>
        <table class="table">
         <tr>
          <th width="60%" height="50px"><a href=""> 머거두댕</a></th>
          <td width="10%"></td>
          <td width="30%" rowspan="5"><img class="img" src="img/5-1.jpg"></td>
       </tr>
       <tr>
          <td width="60%"> 010-5032-4824</td>
          <td width="10%"></td>
       </tr>
       <tr>
          <td width="60%"> 금~화 12:00~20:00</td>
          <td width="10%"></td>
       </tr>
       <tr>
          <td width="60%"> 대구 수성구 매호동</td>
          <td width="10%"></td>
       </tr>
    </table>
 </div>&nbsp;
 <div class="right2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 구락미</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-2.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 010-9536-2565</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 토~화 12:00~20:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 수성구 범어동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>
</div>
<div class="box">
 <div class="left2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 해피퍼피스데이</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-3.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71488-5623</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 화~토 11:00~20:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 달서구 감삼동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>&nbsp;
<div class="right2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 현풍펫마트</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-4.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71424-1552</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 매일 10:00~22:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 달성군 현풍읍</td>
    <td width="10%"></td>
 </tr>
</table>
</div>
</div>
<div class="box">
 <div class="left2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 댕댕미</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-5.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71369-2230</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 화~일 13:00~20:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 달서구 상인동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>&nbsp;
<div class="right2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 코뭉코뭉</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-6.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71347-8467</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 월 00:00~01:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 동구 율하동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>
</div>
<div class="box">
 <div class="left2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 댕수무강</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-7.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71386-2145</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 월~토 11:00~19:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 수성구 지산동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>&nbsp;
<div class="right2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 뚜드림 대구다사점</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-8.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71345-5055</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 수~월 10:30~20:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 달성군 다사읍</td>
    <td width="10%"></td>
 </tr>
</table>
</div>
</div>
<div class="box">
 <div class="left2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 까까쿡방</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-9.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71356-5407</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 수~월 12:00~20:00</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 달서구 감삼동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>&nbsp;
<div class="right2">
  <br>
  <table class="table">
   <tr>
    <th width="60%" height="50px"><a href=""> 몽그리</a></th>
    <td width="10%"></td>
    <td width="30%" rowspan="5"><img class="img" src="img/5-10.jpg"></td>
 </tr>
 <tr>
    <td width="60%"> 050-71491-9116</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 화~일 13:00~20:30</td>
    <td width="10%"></td>
 </tr>
 <tr>
    <td width="60%"> 대구 달서구 본동</td>
    <td width="10%"></td>
 </tr>
</table>
</div>
<br>
</div>
</div>
</div>
<div class="right" id="Btn6">
   <div class="contents">
      <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 어벤멍스</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h1.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-6333-1994</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 09:00~11:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 동구 봉무동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 몽개몽개애견호텔유치원</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h2.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1492-4116</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 금~수 08:00~19:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 달서구 송현동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 뚜뚜댕댕</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h3.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-9462-4926</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 수~월 09:00~20:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 서구 원대동3가</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 오냥오냥고양이호텔</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h4.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-2966-8020</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 09:00~20:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 달서구 대곡동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 개바라기</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h5.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-5848-0553</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 화~일 08:00~19:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 북구 칠성동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 알로몽</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h6.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1498-7556</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 08:30~20:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 두산동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 공드린개과점</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h7.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1340-0247</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 11:00~20:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 황금동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 디케어텔</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h8.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-3055-7070</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 10:00~19:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 황금동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 테일즈호텔</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h9.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1419-7336</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 24시간 영업</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 범어동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 욜로펫</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/h10.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1316-6789</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 08:00~20:30</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 동구 각산동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
        <br>
     </div>
  </div>
</div>
<div class="right" id="Btn7">
   <div class="contents">
      <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 아이니 퍼피캐슬 펫카페</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr1.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 053-759-2949</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 11:00~19:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 남구 대명동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 커피멍</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr2.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 053-261-3000</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 화~일 11:00~22:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 달성군 다사읍</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 중대동380</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr3.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1341-3890</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 화~일 11:30~21:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 동구 중대동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 잇츠폴댕</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr4.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1374-7457</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 화~일 12:30~20:30</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 황금동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 오데뜨 대구점</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr5.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1425-8155</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 화~일 11:30~21:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 달성군 옥포읍</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 청춘아지트</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr6.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1333-8023</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 수~월 18:30~02:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 두산동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 포레스트26</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr7.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-3099-3256</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 12:00~24:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 지산동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 푸댕</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr8.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 0507-1317-6765</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 수~월 12:00~21:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 두산동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
     </div>
     <div class="box">
        <div class="left2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 여리식당</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr9.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-3254-1259</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 11:00~22:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 수성구 만촌동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>&nbsp;
        <div class="right2">
           <br>
           <table class="table">
              <tr>
                 <th width="60%" height="50px"><a href=""> 어바웃스튜디오</a></th>
                 <td width="10%"></td>
                 <td width="30%" rowspan="5"><img class="img" src="img/cr10.png"></td>
              </tr>
              <tr>
                 <td width="60%"> 010-3097-3173</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 매일 10:00~23:00</td>
                 <td width="10%"></td>
              </tr>
              <tr>
                 <td width="60%"> 대구 북구 산격동</td>
                 <td width="10%"></td>
              </tr>
           </table>
        </div>
        <br>
     </div>
  </div>
</div>
</div>
</div>


</section>
</article>
<footer id="footer">
   <div class="footer-main">
      <div id="copyright">
         <ul class="copyright-list">
            <li>고객문의 <a href="mailto:cs@happypetppy.com">cs@happypetppy.com</a>
            </li>
            <li>제휴문의 <a href="mailto:contact@happypetppy.com">contact@happypetppy.com</a></li>
         </ul>
         <br>
         <ul class="copyright-list">
            <li>지역광고 <a href="mailto:ad@happypetppy.com">ad@happypetppy.com</a>
            </li>
            <li>PR문의 <a href="mailto:pr@happypetppy.com">pr@happypetppy.com</a>
            </li>
         </ul>
         <br><br>
         <ul class="copyright-list">
            <li>
               <address>경상북도 경산시 하양읍 하양로 13-13 (Happy Petppy)</address>
            </li>
         </ul>
         <br><br>
         <ul class="copyright-list">
            <li>사업자 등록번호 : 001-002-0003</li>
            <li>직업정보제공사업 신고번호 : J0000000000000</li>
         </ul>
         <div class="copyright-text">©Happy Petppy Inc.</div>
      </div>
   </div>
</footer>
</body>

</html>