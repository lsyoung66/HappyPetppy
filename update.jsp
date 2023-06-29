<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>커뮤니티 글 수정</title>
<link href="header.css" rel="stylesheet">
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="footer.css">
<link rel="stylesheet" href="community.css">
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
	padding: 12px;
	width: 140px;
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
</style>
</head>

<body style="background-color: #F9F5EA;">
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'signIn.jsp'");
		script.println("</script>");
	}
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글 입니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if (!userID.equals(bbs.getUserID())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	User user = new UserDAO().getMember(userID);
	%>
	<header style="background-color: #FFB02E;">
		<section class="section">
			<br>
			<table class="header">
				<tr>
					<td style="width: 17%;"><a href="main.jsp"> <img
							src="img/logo.png" style="height: 50px">
					</a></td>
					<td style="width: 50%; align-items: stretch;"><input
						class="input" type="text" name="search" placeholder="검색어를 입력하세요">
						<input class="submit" type="submit" value="submit"></input></td>
					<td style="width: 17%;"></td>
					<td style="width: 8%;">
						<div class="dropdown">
							<button class="dropbtn">
								<img class="profile" src="img/profile.png">
								<%
								if (userID != null && userID.equals(user.getUserID())) {
								%>
								<span class="dropbtn_icon" value="userID"><%=userID%> 님</span>
								<%
								}
								%>
							</button>
							<div class="dropdown-content">
								<a href="updatePro.jsp">회원정보변경</a> <a href="requireList.html">요청목록</a>
								<a href="logoutAction.jsp">로그아웃</a>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br>
			<ul></ul>
			<ul class="nav">
				<div>
					<li><a id="button1" href="companyT.jsp"
						style="font-weight: 900;">업체예약</a></li>
					<li><a id="button2" href="community.jsp"
						style="font-weight: 900;">커뮤니티</a></li>
					<li><a id="button3" href="individualT.jsp"
						style="font-weight: 900;">위탁</a></li>
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
				<button class="btn" onclick="location.href='community2.jsp'">글작성</button>
				<button class=" btn" onclick="location.href='community3.jsp'">방명록</button>
			</div>
		</div>
		<div class="write_container">
			<div class="writeBox">
				<form method="post" class="writePost"
					action="updateAction.jsp?bbsID=<%=bbsID%>">
					<input type="text" name="bbsTitle" maxlength="50" placeholder="제목"
						value="<%=bbs.getBbsTitle()%>">
					<textarea name="bbsContent" maxlength="2048"
						placeholder="내용을 입력하세요."><%=bbs.getBbsContent()%></textarea>
					<br>
					<br>
					<span class="buttons">
						<button class="cancel" type="button" onclick="alert('글 수정을 취소했습니다 😥', location.href='community.jsp')">취소</button>&nbsp;&nbsp;
						<button class="edit" type="submit">수정</button>
					</span>
				</form>
			</div>
		</div>
	</div>
</body>
</html>