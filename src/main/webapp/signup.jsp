<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/1/19
  Time: 9:56 AM
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

                <h1>Signup to VGC - Video Game Collection!</h1>

                <form class="form-horizontal" method="post" action="login">
                    <div class="form-group">
                        <label for="username">User Name:</label>
                        <input name="username" type="text" class="form-control" id="username">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address: </label>
                        <input name="email" type="email" class="form-control" id="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password: </label>
                        <input name="pwd" type="password" class="form-control" id="pwd">
                    </div>
                    <div class="form-group">
                        <label for="pwd2">Retype: </label>
                        <input name="pwd2" type="password" class="form-control" id="pwd2">
                    </div>
                    <div class="form-group text-center">
                        <button name="btn_submit" id="btn_submit" type="submit" class="btn btn-default">Signup</button>
                    </div>
                </form>

                <p id="register_p">Already Registered: Login <a id="register_a" href="login.jsp">here</a></p>

            </div>

            <!-- Footer -->

            <jsp:include page="footer.jsp" flush="true" />

        </div>
    </body>
</html>
