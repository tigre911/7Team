<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/adminHome.css" type="text/css"/>
<style>
	header, footer {display:none}
</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$("#adminUser").click(function(){ 
      $("#adminUserShow").css('display','block');
   });
$("#adminReport").click(function(){ 
    $("#adminReportShow").css('display','block');
 });
$("#adminOld").click(function(){ 
    $("#adminOldShow").css('display','block');
 });
$("#adminBoard").click(function(){ 
    $("#adminBoardShow").css('display','block');
 });
</script>
<div id="admin_container">
	<div id="admin_wrap">
		<div id="admin_lnb">
			<a href="/"><img id="ad_logo" src="/img/logo_full_w.png" alt="logo"/></a>
			<!-- 검색 -->
			<div id="admin_search">
				<form method="get" action="" id="ad_searchFrm">
				    <input type="text" name="searchWord" id="ad_searchWord"/>
				    <input type="submit" value="search"/>
				</form>
			</div>
			<div id="ad_profile">
				<img id ="ad_p_img" src="/img/profileDefault.png" alt="프로필 이미지">
				<!-- <img id ="ad_p_img" src="/upload/${vo.profile_image}" alt="프로필 이미지"> -->
				<a href="/member/myPage"></a>
				<p>마이페이지 ^</p>
			</div>
			<ul>
				<li><span id="adminUser">회원 관리</span></li>
				<li><span id="adminReport">신고 관리</span></li>
				<li><span id="adminOld">중고거래 관리</span></li>
				<li><span id="adminBoard">게시글/댓글 관리</span></li>
			</ul>
		</div>
		<div id="resultArea">
			<p style="display:none" id="adminUserShow"><%@ include file="/WEB-INF/views/admin/adminUser.jsp" %></p>
			<p style="display:none" id="adminReportShow"><%@ include file="/WEB-INF/views/admin/adminReport.jsp" %></p>
			<p style="display:none" id="adminOldShow"><%@ include file="/WEB-INF/views/admin/adminOld.jsp" %></p>
			<p style="display:none" id="adminBoardShow"><%@ include file="/WEB-INF/views/admin/adminBoard.jsp" %></p>
		</div>
	</div>
</div>