<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/13/19
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <!-- Head -->
    <jsp:include page="head.jsp" flush="true" />

    <body>
        <!-- Nav -->
        <jsp:include page="nav.jsp" flush="true" />

        <!-- Main Content-->

        <div class="container-fluid">
            <c:choose>
                <c:when test = "${errorMessage == null}">
                    <div class="alert alert-success" role="alert">
                        <strong>You are signed in</strong> Welcome To VGC - Video Game Collection!
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="alert alert-danger" role="alert">
                        <strong>Login -- Failed</strong><br />
                        ${errorMessage}<br /><br />
                        <a href="signup.jsp"><button type="button" class="btn btn-primary">
                            Retry</button></a>
                        <a href="index.jsp"><button type="button" class="btn btn-default">
                            Cancel</button></a>

                    </div>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- Footer -->
        <jsp:include page="footer.jsp" flush="true" />

    </body>
</html>
