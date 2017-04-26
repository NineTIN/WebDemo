<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
<%@ include file="/WEB-INF/include/include-body.jsp" %>
</head>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //Go to Board List
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardUpdate.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
    </script>
<body>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>Board Detail</caption>
        <tbody>
            <tr>
                <th scope="row">No</th>
                <td>${map.TITLE }</td>
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
                <td colspan="3">${map.TITLE }</td>
            </tr>
            <tr>
                <td colspan="4">${map.CONTENTS }</td>
            </tr>
        </tbody>
    </table>
     
    <a href="#this" class="btn" id="list">Go to List</a>
    <a href="#this" class="btn" id="update">Modify</a>
</body>
</html>