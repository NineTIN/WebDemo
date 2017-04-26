<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
<%@ include file="/WEB-INF/include/include-body.jsp" %>
</head>
<script type="text/javascript">
	$(document).ready(function(){
	    $("#list").on("click", function(e){ //Go ListButton
	        e.preventDefault();
	        fn_openBoardList();
	    });
	     
	    $("#write").on("click", function(e){ //Write Button
	        e.preventDefault();
	        fn_insertBoard();
	    });
	});
	 
	function fn_openBoardList(){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
	    comSubmit.submit();
	}
	 
	function fn_insertBoard(){
	    var comSubmit = new ComSubmit("frm");
	    comSubmit.setUrl("<c:url value='/sample/insertBoard.do' />");
	    comSubmit.submit();
	}
</script>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%">
                <col width="*"/>
            </colgroup>
            <caption>Create</caption>
            <tbody>
                <tr>
                    <th scope="row">Title</th>
                    <td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <td colspan="2" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
         
        <a href="#this" class="btn" id="write">Write</a>
        <a href="#this" class="btn" id="list">Go to List</a>
    </form>
</body>
</html>
