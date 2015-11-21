<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<script src="js/edit_setList.js"></script>
<h1>EDIT SETLIST</h1>
	<input type="hidden" id="setList_con_num" value="${concertInfo.con_num}">
	<input type="hidden" id="setList_con_artist" value="${concertInfo.con_artist}">
            	<p class="concert_subTitle">
                	<input id="remove_setList" class="innerButton button" type="button" value="행 삭제" onclick="removeRow()"/>
                    <input id="edit_setList" class="innerButton button" type="button" value="행 추가" onclick="createRow()"/>
                    
                </p>
            	<Table id="table_setList">
                    <tr class="tr_setList">
                        <th class="setListCheck">
                        	<input class="input_check" id="input_check0" name="s_checkAll" type="checkbox"/>
                            <label class="label_check" for="input_check0"></label>
                        </th>
                        <th class="setListNum">순서</th>
                        <th class="setListTitle">곡 제목</th>
                    </tr>
                    <c:forEach var="setlist" items="${setlist}">
	                    <tr class="tr_setList">
		                    <td class="setListCheck">
	                        	<input class="input_check" id="input_check1" name="s_check" type="checkbox"/>
	                            <label class="label_check" for="input_check1"></label>
	                        </td>
	                        <td class="setListNum">
	                        	<input class="input_setList" id="input_setListNum" name="input_setListNum" type="number" value="${setlist.song_order}"/>
	                        </td>
	                        <td class="setListTitle">
	                        	<input class="input_setList" id="input_setListTitle" name="input_setListTitle" type="text" value="${setlist.song_title}"/>
	                        </td>
	                    </tr>
                    </c:forEach>
                    <tr class="tr_setList">
                    	<td class="setListCheck">
                        	<input class="input_check" id="input_check1" name="s_check" type="checkbox"/>
                            <label class="label_check" for="input_check1"></label>
                        </td>
                        <td class="setListNum">
                        	<input class="input_setList" id="input_setListNum" name="input_setListNum" type="number" />
                        </td>
                        <td class="setListTitle">
                        	<input class="input_setList" id="input_setListTitle" name="input_setListTitle" type="text" />
                        </td>
                      
                    </tr>
                    
                    
                    
                    
                    
                </Table>
                
                <input id="setList_saveBtn" class="button" type="submit" value="저장" name="setList_submit">
                
                <footer></footer>    