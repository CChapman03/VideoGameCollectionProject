<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/25/19
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!-- Head -->
<jsp:include page="head.jsp" flush="true" />

<body>
    <div>
        <!-- Main Navbar -->

        <jsp:include page="nav.jsp" flush="true" />

        <!-- Main Content -->

        <div id="div_message" class="container center-block">
            <h1>Error! Failed to login!</h1>
        </div>

        <!-- Footer -->

        <jsp:include page="footer.jsp" flush="true" />

    </div>
</body>
</html>
