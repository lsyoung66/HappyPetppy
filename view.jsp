<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>커뮤니티 글 보기</title>
    <link href="header.css" rel="stylesheet">
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="community.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css">
        .section {
            margin: auto;
            justify-content: center;
            width: 60%;
        }

        #button2 {
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

        .mainart {
            margin: auto;
        }

        .intsection {
            position: relative;

        }

        .article1 {
            display: flex;
            margin: auto;
            padding-left: 15em;
        }

        .left1 {
            font-size: 17px;
            font-weight: 400;
            background-color: rgba(255, 176, 46, 0.1);
            border: 0 50 0 0;
            float: left;
            width: 70%;
        }

        .right1 {
            float: right;
            width: 70%;
        }

        .text-top {
            font-size: 23px;
            font-weight: 700;
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
    
.view_menu a{
  background-color: #ffb02e;
  padding: 15px;
  width: 120px;
  border: none;
  cursor: pointer;
  border-radius: 30px;
  text-align: center;
  box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
  color: white;
  font-weight: bold;
  font-size: 11pt;
}

.button_list {
     text-align: center;
     width: 30%;
     position: absolute;
     bottom: 1px;
     left: 10%;
     transform: translate(-50%, -50%);
 }

 .list {
     padding: 10px;
     width: 30%;
     border: none;
     cursor: pointer;
     border-radius: 10px ;
     text-align: center;
     font-weight: bold;
     background-color: #996b20;
     color: #F9F5EA;
     clip-path: polygon(100% 0%, 80% 50%, 100% 100%, 20% 100%, 0% 50%, 20% 0%);
 }

 .list:hover {         
    background-color: #F9F5EA;
    color: #996b20;
}

.buttons {
 text-align: center;
 width: 30%;
 position: absolute;
 bottom: 1px;
 left: 85%;
 transform: translate(-50%, -50%);
}

.edit {
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

.edit:hover {
 background-color: #996b20;
 color: #F9F5EA;
}

.delete {
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

.delete:hover {
 background-color: #996b20;
 color: #F9F5EA;
}
    </style>
</head>

<body style="background-color: #F9F5EA;">
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글 입니다.')");
			script.println("location.href = 'community.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
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
                <a href="requireList.html">요청목록</a>
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
    <div class="comm_main">
        <div class="btns_container">
            <div class="btns">
				<button class="btn" onclick="location.href='community.jsp'"
					style="background-color: white; color: #FFB02E;">최신글</button>
				<button class=" btn" onclick="location.href='community4.jsp'">인기글</button>
				<button class="btn" onclick="location.href='community2.jsp'">글
					작성</button>
				<button class=" btn" onclick="location.href='community3.jsp'">방명록</button>
            </div>
        </div>
       	<div class="write_container">
          	<div class="writeBox">
				<table class="view_table" 
					style="text-align: center;  border-collapse: separate; border-spacing: 0 2px;">
					<thead>
						<tr>
							<th colspan="4" style="padding: 7px 14px; text-align: left; ; font-size: 20px; border-bottom: 2px solid #FFB02E;" >게시물 보기</th>
						</tr>
						<tr style="">
							<th style="text-align: center; padding: 5px 12px; font-size: 12px; width:20%; border-bottom: 2px solid #ddd;">
                			<img class="profile" src="img/profile.png" style="padding: 5px 8px;"><%= bbs.getUserID() %></th> <!-- 작성자 -->
							<th style="text-align: left; padding: 5px 12px; font-size: 12px; width:130px; border-left:1px solid #ddd;  border-bottom: 2px solid #ddd;">
							<%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + ":" + bbs.getBbsDate().substring(14, 16) %></th> <!-- 작성일 -->
							<th colspan="4" style="border-bottom: 2px solid #ddd;"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="6" style="padding: 10px 25px; text-align: left; height: 30px; font-size: 16px; font-weight: bold; border-bottom: 2px solid #ddd;">
							<%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td> <!-- 제목 -->
						</tr>
						<tr>
							<td colspan="6" style="height: auto; text-align: left; padding:20px 25px; font-size: 15px; border-bottom: 2px solid #ddd;">
							<%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td> <!-- 내용 -->
						</tr>
					</tbody>
				</table>
				<br><br>
            	<span class="button_list">
                	<tr><button class="list"><a href="community.jsp">목록</a></button></tr>
            	</span>
         	  	<%
            		if (userID != null && userID.equals(bbs.getUserID())) {
       		  	%>
				<span class="buttons">
					<tr><button class="edit"><a href="update.jsp?bbsID=<%= bbsID %>" style="text-decoration: none;">수정</a></button></tr>&nbsp;&nbsp;
                	<tr><button class="delete"><a href="deleteAction.jsp?bbsID=<%= bbsID %>" style="text-decoration: none;">삭제</a></button></tr>
            	</span>
         	<%   
            	}
         	%>
			</div>
		</div>
	</div>
</body>
</html>