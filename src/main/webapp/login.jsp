<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/25/19
  Time: 12:06 PM
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

        <div class="container">

            <h1>Login to VGC - Video Game Collection!</h1>

            <form class="form-horizontal" action="j_security_check" method="post">
                <div class="form-group">
                    <label for="username">User Name:</label>
                    <input type="text" name="j_username" class="form-control" id="username">
                </div>
                <div class="form-group">
                    <label for="pwd">Password: </label>
                    <input type="password" name="j_password" class="form-control" id="pwd">
                </div>
                <div class="form-group text-center">
                    <button id="btn_submit" type="submit" class="btn btn-default">Login</button>
                </div>
            </form>

            <p id="register_p">Signup <a id="register_a" href="signup.jsp">here</a></p>

        </div>

        <!-- Footer -->
        <jsp:include page="footer.jsp" flush="true" />

    </div>
</body>
</html>
