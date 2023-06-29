<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>개인위탁</title>
   <link href="header.css" rel="stylesheet" />
   <link href="footer.css" rel="stylesheet" />
   <link href="reset.css" rel="stylesheet" />
   <link rel="stylesheet" type="text/css" href="file.css">
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

      #button3 {
         color: #FFB02E;
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

      .box3 {
         margin-top: 7px;
         display: -webkit-flex;
         display: flex;
         -webkit-align-items: center;
         align-items: center;
         position: relative;
         width: 100%;
         justify-content: space-between;
         height: 500px;
         border-radius: 17px;
         background-color: rgba(255, 176, 46, 0.15);
         align-content: center;
      }

      .location {
         color: lightsalmon;
         font-weight: bold;
      }

      .region {
         width: 100%;
      }

      .region input {
         width: 20px;
         /* 너비 설정 */
         height: 20px;
         /* 높이 설정 */
      }

      .pimg {
         width: 80px;
         height: 80px;
         border-radius: 100%;
         border: 3px solid #FFB02E;
         box-shadow: 0px 0px 5px #fff;
         justify-content: space-between;
         display: block;
         margin: 0px auto;
      }

      .img {
         object-fit: cover;
         width: 90%;
         height: 90%;
         border-radius: 100%;
         border: 3px solid #FFB02E;
         box-shadow: 0px 0px 5px #fff;
         display: block;
         margin: 0px;
         position: relative;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         justify-content: center;
      }

      .introduce {
         position: absolute;
         top: 7%;
         left: 7%;
      }

      .request {
         background-color: #F9F5EA;
         padding: 5px;
         width: 80%;
         border: none;
         cursor: pointer;
         border-radius: 10px;
         text-align: center;
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
         font-weight: bold;
         color: #996b20;
         position: absolute;
         bottom: 1px;
         left: 50%;
         transform: translate(-50%, -50%);
      }

      .request:hover {
         background-color: #996b20;
         color: #F9F5EA;
      }

      .buttons {
         text-align: center;
         width: 70%;
         position: absolute;
         bottom: 1px;
         left: 50%;
         transform: translate(-50%, -50%);
      }

      .make {
         background-color: #F9F5EA;
         padding: 10px;
         width: 30%;
         border: none;
         cursor: pointer;
         border-radius: 10px;
         text-align: center;
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
         font-weight: bold;
         color: #996b20;
      }

      .make:hover {
         background-color: #996b20;
         color: #F9F5EA;
      }

      .cancel {
         background-color: #F9F5EA;
         padding: 10px;
         width: 30%;
         border: none;
         cursor: pointer;
         border-radius: 10px;
         text-align: center;
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
         font-weight: bold;
         color: #996b20;
      }

      .cancel:hover {
         background-color: #996b20;
         color: #F9F5EA;
      }

      hr {
         border: 3px solid #F9F5EA;
      }

      #Seoul {
         display: block;
      }

      #Daegu {
         display: none;
      }

      #Busan {
         display: none;
      }

      #Daejeon {
         display: none;
      }

      #Gg {
         display: none;
      }

      #Gw {
         display: none;
      }

      #Gs {
         display: none;
      }

      #Jl {
         display: none;
      }

      #Cc {
         display: none;
      }

      #Jeju {
         display: none;
      }

      #Btn1 {
         display: block;
      }

      #Btn2 {
         display: none;
      }

      input[type='radio'],
      input[type='radio']:checked {
         appearance: none;
         width: 0.9rem;
         height: 0.9rem;
         border-radius: 20%;
         margin-right: 0.1rem;
      }

      input[type='radio'] {
         background-color: floralwhite;
         border: 2px solid #FFB02E;
      }

      input[type='radio']:checked {
         background-color: #FFB02E;
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

   </style>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" src="file.js"></script>
   <script type="text/javascript">
      $(document).ready(function () {
         $("#btn1").click();
      });
      $(document).ready(function () {
         $("input:radio[value=seoul]").click(function () {
            $('#Seoul').css('display', 'block');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=daegu]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'block');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=busan]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'block');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=daejeon]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'block');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=gg]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'block');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=gw]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'block');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=gs]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'block');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=jl]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'block');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=cc]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'block');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=jeju]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'block');
         });
      });
$(document).ready(function () {
   $("button[id=btn1]").click(function () {
      $('#Btn1').css('display', 'block');
      $('#Btn2').css('display', 'none');
   });
   $("button[id=btn2]").click(function () {
      $('#Btn1').css('display', 'none');
      $('#Btn2').css('display', 'block');
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
                <a href="updatePro.jsp">회원정보변경</a>
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
               <li><a id="button1" href="companyT.jsp" style="font-weight: 900;">업체예약</a></li>
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
               <button type="button" class="menu-link" data-menu="1" onclick="location.href='#'"
               id="btn1">개인위탁</button><br><br>
               <button type="button" class="menu-link" data-menu="2" id="btn2">수탁자 신청</button><br><br><br>
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
                  <div class="box" style="border-bottom: 2px solid #8a611e;">
                     <h1>&nbsp지역 선택</h1>
                     <span class="location"><a href="javascript:getUserLocation();">내주변&nbsp</a></span>
                     <script>
                        function success({ coords, timestamp }) {
                           const latitude = coords.latitude;
                           const longitude = coords.longitude;

                           //if ((latitude >= 35.91 && latitude <= 35.92) && (longitude >= 128.81 && latitude <= 128.82)) {
                            $(document).ready(function () {
                              $("#gs").click();
                           });
                        // }
                     }

                     function getUserLocation() {
                        if (!navigator.geolocation) {
                          throw "위치 정보가 지원되지 않습니다.";
                       }
                       navigator.geolocation.watchPosition(success);
                    }

                    getUserLocation();
                 </script>
              </div>
              <br>
              <div>
               <table class="region">
                  <tr>
                     <td width="40%"><label for="seoul"> 서울</label></td>
                     <td width="5%"><input type="radio" name="region" id="seoul" value="seoul" class="seoul"
                        checked></td>
                        <td width="10%"></td>
                        <td width="40%"><label for="busan"> 부산</label></td>
                        <td width="5%"><input type="radio" name="region" id="busan" value="busan" class="busan"></td>
                     </tr>
                     <tr>
                        <td><label for="daegu"> 대구</label></td>
                        <td width="5%"><input type="radio" name="region" id="daegu" value="daegu" class="daegu"></td>
                        <td></td>
                        <td><label for="daejeon"> 대전</label></td>
                        <td width="5%"><input type="radio" name="region" id="daejeon" value="daejeon"
                           class="daejeon">
                        </td>
                     </tr>
                     <tr>
                        <td><label for="gg"> 경기</label></td>
                        <td width="5%"><input type="radio" name="region" id="gg" value="gg" class="gg"></td>
                        <td></td>
                        <td><label for="gw"> 강원</label></td>
                        <td width="5%"><input type="radio" name="region" id="gw" value="gw" class="gw">
                        </td>
                     </tr>
                     <tr>
                        <td><label for="gs"> 경상</label></td>
                        <td width="5%"><input type="radio" name="region" id="gs" value="gs" class="gs"></td>
                        <td></td>
                        <td><label for="jl"> 전라</label></td>
                        <td width="5%"><input type="radio" name="region" id="jl" value="jl" class="jl">
                        </td>
                     </tr>
                     <tr>
                        <td><label for="cc"> 충청</label></td>
                        <td width="5%"><input type="radio" name="region" id="cc" value="cc" class="cc"></td>
                        <td></td>
                        <td><label for="jeju"> 제주</label></td>
                        <td width="5%"><input type="radio" name="region" id="jeju" value="jeju" class="jeju">
                        </td>
                     </tr>
                  </table>
                  <br>
               </div>
            </div>
            <br>
            <div class="contents">
               <div class="box">
                  <h1>&nbsp인기 프로필</h1>
               </div>
               <div class="box">
                  <img src="img/a.JPG" class="pimg">
                  <img src="img/b.JPG" class="pimg">
                  <img src="img/c.JPG" class="pimg">
                  <img src="img/d.JPG" class="pimg">
                  <img src="img/e.JPG" class="pimg">
                  <img src="img/f.JPG" class="pimg">
                  <br>
               </div>
               <br>
            </div>
            <br>
            <div class="print">
               <div class="box2" id="Seoul">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">김토리<br>말티즈<br>200316<br>귀 염증<br>한강 산책 좋아해요~!</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/b.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">두부<br>말티즈<br>210325<br>알레르기X<br>한강 산책 싫어해요~!</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/e.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">올리브<br>A<br>190316<br>알레르기X<br>연어 러버></span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/f.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">몽실이<br>비숑<br>180602<br>두드러기<br>사람을 좋아해요^_^</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Daegu">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/c.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">초롱이<br>A<br>190316<br>발 물기<br>물놀이를 좋아합니당</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/d.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">미미<br>E<br>220101<br>알레르기X<br>목욕을 좋아하고 순해요~</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/g.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">모찌<br>B<br>200202<br>닭고기 알레르기<br>생선 러버></span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/h.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">해피<br>C<br>180219<br>가려움증<br>사람을 좋아해요:)</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Busan">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/aaa.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">구름이<br>말티즈<br>210111<br>연어 알러지<br>사람을 좋아해요~</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/bbb.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">시루<br>골든 리트리버<br>220131<br>알레르기X<br>낯을 가려요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ccc.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">콩이<br>골든 리트리버<br>220204<br>알레르기X<br>산책 교육 중이에요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ddd.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">보름이<br>사모예드<br>200519<br>피부염증<br>강아지 친구들을 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Daejeon">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/hhh.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">뮤즈<br>믹스견<br>190421<br>알레르기X<br>터그 놀이를 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/eee.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">김찹쌀<br>포메라니안<br>200620<br>알레르기X<br>조용한 공원 산책을 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/fff.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">오구<br>푸들<br>211222<br>알레르기X<br>산책을 무서워해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ggg.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">루루<br>토이푸들<br>210321<br>닭고기 알러지<br>강아지 친구들을 좋아해요~</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Gg">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/iii.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">웅이<br>믹스견<br>220116<br>피부염증<br>산책을 좋아해요~~</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/jjj.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">강보리<br>믹스견<br>190707<br>알레르기X<br>남자를 무서워해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a1.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">동동이<br>래브라도리트리버<br>201208<br>다리가 조금 불편해요<br>산책을 힘들어해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a2.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">몽자<br>푸들<br>191116<br>견과류 알레르기<br>간식 너무 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Gw">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a3.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">하양이<br>말티즈<br>201104<br>알레르기X<br>식욕이 없는 편이에요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a4.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">주주<br>비숑<br>201010<br>왼쪽 눈 염증<br>활기 넘치는 편이에요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a5.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">복실이<br>비숑<br>210822<br>알레르기<br>사람을 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a6.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">꼬미<br>스코티쉬폴드<br>120531<br>알레르기X<br>소심한 편이에요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Gs">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a7.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">빌리<br>도메스틱쇼트헤어<br>200525<br>피부 염증<br>애교를 잘 부려요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a8.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">나비<br>컬러포인트 숏헤어<br>190420<br>알레르기X<br>사람을 무서워해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a9.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">소금이<br>말티즈<br>211221<br>귀 염증<br>산책 너무 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a10.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">새삼이<br>코리안숏헤어<br>190827<br>꽃가루 알레르기<br>집에서 노는 걸 더 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Jl">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/aa.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">앙쥬<br>토이푸들<br>220202<br>피부병 치료중<br>낯을 많이 가려요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/bb.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">후추<br>포메라니안<br>180406<br>알레르기 O<br>조용해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/cc.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">까미<br>프렌치 불독<br>201104<br>알레르기X<br>산책이 많이 필요해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/dd.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">루비<br>러시안블루<br>191217<br>귀 염증<br>혼자 있는것을 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Cc">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ee.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">럭키<br>비글<br>210418<br>알레르기X<br>다소 산만해요ㅠ_ㅠ</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ff.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">콩이<br>말티즈<br>120531<br>피부 염증<br>나이가 많아 체력이 부족해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/gg.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">로이<br>미니핀<br>220405<br>돼지고기 알러지<br>사람을 좋아해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/hh.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">쿵이<br>보더콜리<br>180827<br>알레르기X<br>눈물을 많이 흘려요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Jeju">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ii.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">퐁이<br>비숑<br>200911<br>귀 염증<br>낮잠이 필요해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/jj.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">라떼<br>웰시코기<br>190315<br>닭고기 알레르기<br>예민해요</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/g.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">모모<br>B<br>200202<br>닭고기 알레르기<br>생선 러버</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/b.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">푸푸<br>말티즈<br>180219<br>가려움증<br>사람을 좋아해요:)</span>
                        <button class="request" onclick="alert('요청이 완료되었습니다.')">요청하기</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="right" id="Btn2" style="overflow: visible;">
            <div class="contents">
               <div class="box" style="border-bottom: 2px solid #8a611e;">
                  <h1>&nbsp수탁자 프로필 생성</h1>
               </div>
               <div class="box3">
                <br>
                <form action="http://localhost/upload.php" method="post" enctype="multipart/form-data" align="center">
                   <div class="filebox preview-image">
                      <label for="input-file">사진 선택</label> 
                      <input type="file" id="input-file" class="upload-hidden"> 
                      <input class="upload-name" value="이미지를 선택하세요." disabled="disabled">
                      <br><br>
                      <textarea placeholder="내용을 입력하세요."></textarea>
                   </div>
                </form>
                <span class="buttons">
                  <tr><button class="make" onclick="alert('수탁자 프로필을 생성했습니다.')">생성</button></tr>&nbsp;&nbsp;
                  <tr><button class="cancel" onclick="alert('수탁자 프로필 생성을 취소했습니다.', window.location.reload())">취소</button></tr>
               </span>
            </div>
         </div>
      </div>
   </div>
   <br>
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