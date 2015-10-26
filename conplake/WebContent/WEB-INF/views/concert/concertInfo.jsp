<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<h1>CONCERT INFORMATION</h1>
        	<h2 id="concertTitle">쏜애플(THORNAPPLE) 콘서트 ‘한낮’
            	<div id="innerButtonBox">
                    <input id="GoTogether" class="innerButton button" type="button" value="함께가요" onclick=""/>
                    <input id="likeToGo" class="innerButton button" type="button" value="갈거예요" onclick=""/>
                </div>
            </h2>
            
            <div id="concertProfileBox">
            	<div id="concertPoster">
                	<img src="resources/img/apple.png" width="225" height="300" />
                </div>
                <div id="concertProfile">
                	<hgroup>
                    <h4>장르 : 발라드</h4>
                    <h4>일시 : 2014/12/24 ~ 2014/12/25</h4>
                    <h4>장소 : <span><a href="#">서울 잠실 학생체육관</a></span></h4>
                    <h4>출연 : <span><a href="#">쏜애플</a></span></h4>
                    <h4>관란등급 : 만 7세 이상</h4>
                    <h4>관람시간 : 120분</h4>
                    </hgroup>
                </div>
            </div>
            
            <div id="concertIntro">
            	<h3 class="concert_subTitle">공연 소개</h3>
            	<img src="resources/img/apple_intro.png" width="900">
            </div>
           
           <div id="concertSetrist">
            	<h3 class="concert_subTitle">세트리스트
                	<input id="edit_setList" class="innerButton button" type="button" value="수정" onclick=""/>
                </h3>
            	<Table id="table_setList">
                    <tr class="tr_setList">
                        <th class="setListNum">순서</th>
                        <th class="setListTitle">곡 제목</th>
                        <th class="setListLink">링크</th>
                    </tr>
                    <tr class="tr_setList">
                        <td class="setListNum"></td>
                        <td class="setListTitle"></td>
                        <td class="setListLink"></td>
                    </tr>
                    <tr class="tr_setList">
                        <td class="setListNum"></td>
                        <td class="setListTitle"></td>
                        <td class="setListLink"></td>
                    </tr>
                    
                  
                </Table>
            </div>
            
            <footer></footer>