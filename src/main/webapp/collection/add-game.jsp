<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/1/19
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <!-- Head -->

    <jsp:include page="../head.jsp" flush="true" />

    <body>
        <div>
            <!-- Main Navbar -->

            <jsp:include page="../nav.jsp" flush="true" />

            <!-- Main Content -->

            <div class="container">

                <h1>Add A Game!</h1>

                <form name="searchForm" method="post" action="collection/add-game.jsp">
                    <div class="form-group">
                        <label for="txt_search">Game To Add: </label>
                        <input name="txt_search" class="form-control" id="txt_search" type="text" />
                    </div>
                    <div class="btn-group">
                        <button name="btn_submit" id="btn_submit" type="submit" class="btn btn-primary" value="Search!">Search!</button>
                    </div>
                </form>

                <c:set var="game_count" value="${0}" scope="page" />

                <div class="container-fluid">
                    <c:if test="${games != null}">
                        <c:forTokens items="${games}" delims="" var="game">

                            <c:choose>
                                <c:when test="${game_count % 3 == 0}">
                                    <c:if test="${game_count == 0}">
                                        <c:out value="<div class='row'>" />
                                    </c:if>

                                    <c:out value="<div class='col-sm-3'>" />
                                        <c:out value="<div class='thumbnail'>" />
                                            <c:out value="<a href='game-details.jsp'>" />
                                                <c:out value="<img src='images/artwork/${game.game_title}' alt='${game.game_title}' style='width:100%;'>" />
                                                <c:out value="<div class='caption'>" />
                                                    <c:out value="<p>${game.game_title}</p>" />
                                                <c:out value="</div>" />
                                            <c:out value="</a>" />
                                        <c:out value="</div>" />
                                    <c:out value="</div>" />
                                </c:when>
                                <c:otherwise>
                                    <c:out value="</div>" />
                                    <c:out value="<div class='row'>" />
                                </c:otherwise>
                            </c:choose>

                            <!-- Increment Game Counter -->
                            <c:set var="game_count" value="${game_count + 1}" scope="page" />
                        </c:forTokens>
                    </c:if>
                </div>
            </div>

            <!-- Footer -->

            <jsp:include page="../footer.jsp" flush="true" />

        </div>
    </body>
</html>
