<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<form id="myPageForm" action="myPage" method="post">
		<input type="hidden" name="mem_num" value="${sessionScope.mvo.mem_num}">
	</form>
	<div class="util_menuWrap">
    	<ul class="util_menu">
    		<li>
    			<a id="a_addMenu" href="#" onclick="toggle_addMenu(); return false;">&#128712; 정보 등록</a></li>
    		</li>
    		
    		<li>
	    		<c:if test="${!empty sessionScope.mvo.mem_name}">
	    			<a id="a_myMenu" href="#" onclick="toggle_myMenu(); return false;">&#128100; <strong>${sessionScope.mvo.mem_name}</strong> 님 환영합니다.</a></li>
	    		</c:if>
    		</li>
        </ul>
        <ul class="pop" id="pop_myMenu">
        	<li><a href="#">개인정보수정</a></li>
        	<li id="mypage"><a href="#">마이페이지</a></li>
        	<li><a href="#" onclick="mdOpen_fri_header(); return false;">친구목록</a></li>
        	<li><a href="#" onclick="mdOpen_note_header(); return false;">쪽지</a></li>
        	<li id="logout"><a href="logout">로그아웃</a></li>
        </ul>
        
        <ul class="pop" id="pop_addMenu">
        	<li><a href="addConcertForm">공연정보</a></li>
        	<li><a href="addArtistForm">아티스트정보</a></li>
        	
        </ul>
    	</div>    
       <div id="modalWindowWrap_note_header">
       		<div id="modalWindow3">	
       			<div class="mdHeader">
       				<p>NOTE<input class="mdClose" type="button" value="X" onclick="mdClose_note_header()"/></p>
       			</div>
       			<div id="mdBody_left">
       				<ul>
       					<li><input class="innerButton" id="write_note" type="button" value="쪽지 쓰기"/></li>
       					<li><a href="#">받은 쪽지함 <span>(0)</span></a></li>
       					<li><a href="#">보낸 쪽지함 <span>(0)</span></a></li>
       				</ul>
       			</div>
       			<div id="mdBody_right">
       				<table class="table_list" id="table_readNote">
       					<tr class="tr_list">
       						<td class="td_list" id="td_infoNote">
       							<p>보낸 사람: <span>이유라</span></p>
       							<p>보낸 날짜: <span>2012.05.05</span></p>
       						</td>
       					</tr>
       					<tr class="tr_list">
       						<td class="td_list" id="td_contentNote">
       							쪽지내용ㅇ
       						</td>
       					</tr>
       					
       					<tr class="tr_list">
       						<td class="td_list" id="td_buttonNote">
       							<input id="replyNote" class="innerButton button" type="button" value="답장" onclick=""/>
       						</td>
       					</tr>
       				</table>
       			</div>
            			
            			
            		
       </div>
        
    </div>
    
    <div id="modalWindowWrap_fri_header">
       		<div id="modalWindow_fri">	
       			<div class="mdHeader">
       				<p>NOTE<input class="mdClose" type="button" value="X" onclick="mdClose_fri_header()"/></p>
       			</div>
       			<div class="mdBody">
       				<ul class="ul_commList">
            			<li>
            				<div class="mdImgWrap"><img src="resources/css/profile_img_default.png" width="50" height="50"/></div>
            				<div class="mdTextWrap">
            					<p id="p_friend">
            						<strong>asdfasdf<span> (ddaf)</span></strong>
         							<input class="innerButton button" id="mdDelete" type="button" value="삭제" onclick=""/>
         							<input class="innerButton button" id="friendNoteBtn" type="button" value="&#9993;" onclick=""/>
            					</p>
            				</div>
            			</li>
            			
            			<li>
            				<div class="mdImgWrap"><img src="resources/css/profile_img_default.png" width="50" height="50"/></div>
            				<div class="mdTextWrap">
            					<p id="p_friend">
            						<strong>asdfasdf<span> (ddaf)</span></strong>
         							<input class="innerButton button" id="mdDelete" type="button" value="삭제" onclick=""/>
         							<input class="innerButton button" id="friendNoteBtn" type="button" value="&#9993;" onclick=""/>
            					</p>
            				</div>
            			</li>
            			
            			<li>
            				<div class="mdImgWrap"><img src="resources/css/profile_img_default.png" width="50" height="50"/></div>
            				<div class="mdTextWrap">
            					<p id="p_friend">
            						<strong>asdfasdf<span> (ddaf)</span></strong>
         							<input class="innerButton button" id="mdDelete" type="button" value="삭제" onclick=""/>
         							<input class="innerButton button" id="friendNoteBtn" type="button" value="&#9993;" onclick=""/>
            					</p>
            				</div>
            			</li>
            			
            			<li>
            				<div class="mdImgWrap"><img src="resources/css/profile_img_default.png" width="50" height="50"/></div>
            				<div class="mdTextWrap">
            					<p id="p_friend">
            						<strong>asdfasdf<span> (ddaf)</span></strong>
         							<input class="innerButton button" id="mdDelete" type="button" value="삭제" onclick=""/>
         							<input class="innerButton button" id="friendNoteBtn" type="button" value="&#9993;" onclick=""/>
            					</p>
            				</div>
            			</li>
            			
            			
           			</ul>
	            	
	                
       			</div>
            			
            			
            		
       </div>
        
    </div>
    
    	
    <div class="gnb">
    	<a id="logo" href="main"><img id="imgLogo" src="resources/img/logo_main.png" alt="CONPLAKE" /></a>
    </div>
</header>