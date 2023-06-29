<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>커뮤니티 글 목록</title>
<link href="header.css" rel="stylesheet">
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="footer.css">
<link rel="stylesheet" href="community.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
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

.table_title th {
	text-align: center;
	padding: 14px 7px;
	border-top: 2px solid #FFB02E;
	border-bottom: 1px solid #ddd;
}

.com_table td {
	padding: 10px;
} /* 

.page_btn {
	background-color: #ffb02e;
	padding: 15px;
	width: 150px;
	border: none;
	cursor: pointer;
	border-radius: 30px;
	text-align: center;
	box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
	color: white !important;
	font-weight: bold;
	font-size: 11pt;
}

.page_btn:hover {
	background-color: white;
	color: #ffb02e !important;
	cursor: pointer;
} */
.writeTitle {
	padding: 0px 12px;
	padding-top: 15px;
	font-size: 20px;
	font-weight: bold;
	margin: 0px;
}

.button_next {
	text-align: center;
	width: 30%;
	position: absolute;
	bottom: 1px;
	left: 88.8%;
	transform: translate(-50%, -50%);
}

.next {
	padding: 10px;
	width: 30%;
	border: none;
	cursor: pointer;
	border-radius: 10px;
	text-align: center;
	box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
	font-weight: bold;
	background-color: #996b20;
	color: #F9F5EA;
	left: 88.8%;
	clip-path: polygon(80% 0%, 100% 50%, 80% 100%, 0% 100%, 25% 50%, 0% 0%);
}

.next:hover {
	background-color: #F9F5EA;
	color: #996b20;
}

.button_list {
	text-align: center;
	width: 30%;
	position: absolute;
	bottom: 1px;
	left: 50%;
	transform: translate(-50%, -50%);
}

.list {
	padding: 10px;
	width: 30%;
	border: none;
	cursor: pointer;
	border-radius: 10px;
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
</style>
</head>

<body style="background-color: #F9F5EA;">
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int pageNumber = 1; // 기본 페이지
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
						<%
						if (userID == null) {
						%>
						<button class="signUp" onclick="location.href='signUp.jsp'">Sign
							up</button>
					</td>
					<td style="width: 8%;">
						<button class="signIn" onclick="location.href='signIn.jsp'">Sign
							in</button>
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
					<%
					}
					%>
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
				<button class="btn" onclick="location.href='community2.jsp'">글
					작성</button>
				<button class=" btn" onclick="location.href='community3.jsp'">방명록</button>
			</div>
		</div>
		<div class="write_container">
			<div class="writeBox" style="padding-top: 2%;">
				<p class="writeTitle">커뮤니티 글 목록</p>
				<table class="com_table"
					style="text-align: center; border-collapse: separate; border-spacing: 0 10px; width: 100%;">
					<thead>
						<tr class="table_title">
							<th>NO</th>
							<th style="width: 50%;">제목</th>
							<th>작성자</th>
							<th>작성시간</th>
							<th>작성날짜</th>
						</tr>
					</thead>
					<tbody>
						<%
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getlist(pageNumber);
						for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td><%=list.get(i).getBbsID()%></td>
							<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>">
									<%=list.get(i).getBbsTitle()%></a></td>
							<td><%=list.get(i).getUserID()%></td>
							<td><%=list.get(i).getBbsDate().substring(11, 13) + ":" + list.get(i).getBbsDate().substring(14, 16)%></td>
							<td><%=list.get(i).getBbsDate().substring(0, 11)%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				<br>
				<br>
				<span class="button_list">
				<%
 				if (pageNumber != 1) {
 				%>
				<tr>
					<button class="list">
						<a href="community.jsp?pageNumber=<%=pageNumber - 1%>">이전</a>
					</button>
				</tr>
				<%
				}
				if (bbsDAO.nextPage(pageNumber + 1)) {
				%>
				<tr>
					<button class="next">
						<a href="community.jsp?pageNumber=<%=pageNumber + 1%>">다음
					</button>
					</a>
				</tr>
				<%
 					}
 				%>
				</span>
			</div>
		</div>
	</div>

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
				<br> <br>
				<ul class="copyright-list">
					<li>
						<address>경상북도 경산시 하양읍 하양로 13-13 (Happy Petppy)</address>
					</li>
				</ul>
				<br> <br>
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