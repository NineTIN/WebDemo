<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
<%@ include file="/WEB-INF/include/include-body.jsp" %>
</head>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //Go to List
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){ //Save Button
                e.preventDefault();
                fn_updateBoard();
            });
             
            $("#delete").on("click", function(e){ //Delete Button
                e.preventDefault();
                fn_deleteBoard();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
            comSubmit.submit();
        }
         
        function fn_updateBoard(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/sample/updateBoard.do' />");
            comSubmit.submit();
        }
         
        function fn_deleteBoard(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/deleteBoard.do' />");
            comSubmit.addParam("IDX", $("#IDX").val());
            comSubmit.submit();
             
        }
    </script>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <caption>Board Modify</caption>
            <tbody>
                <tr>
                    <th scope="row">No</th>
                    <td>
                        ${map.IDX }
                        <input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
                    </td>
                    <th scope="row">Hit</th>
                    <td>${map.HIT_CNT }</td>
                </tr>
                <tr>
                    <th scope="row">Author</th>
                    <td>${map.CREA_ID }</td>
                    <th scope="row">Date</th>
                    <td>${map.CREA_DTM }</td>
                </tr>
                <tr>
                    <th scope="row">Title</th>
                    <td colspan="3">
                        <input type="text" id="TITLE" name="TITLE" class="wdp_90" value="${map.TITLE }"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS">${map.CONTENTS }</textarea>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
     
    <a href="#this" class="btn" id="list">Go to List</a>
    <a href="#this" class="btn" id="update">Save</a>
    <a href="#this" class="btn" id="delete">Delete</a>
</body>
</html>