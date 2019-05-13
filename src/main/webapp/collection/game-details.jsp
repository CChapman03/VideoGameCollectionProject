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

            <div id="div_main_content" class="container">
                <img id="gameImg" src="../images/${game.getArtwork()}" alt="Game Boxart" />
                <div class="container">
                    <table>
                        <tr>
                            <td>Title: </td>
                            <td>${game.getName()}</td>
                        </tr>
                        <tr>
                            <td>Platform: </td>
                            <td>${game.getPlatform.getName()}</td>
                        </tr>
                        <tr>
                            <td>Developer: </td>
                            <td>${game.getDeveloper.getName()}</td>
                        </tr>
                        <tr>
                            <td>Publisher: </td>
                            <td>${game.getPublisher.getName()}</td>
                        </tr>
                        <tr>
                            <td>Release Date: </td>
                            <td>${game.getReleaseDate()}</td>
                        </tr>
                        <tr>
                            <td>Rating: </td>
                            <td>${game.getRating()}</td>
                        </tr>
                        <tr>
                            <td>Genre: </td>
                            <td>${game.getGenre()}</td>
                        </tr>
                        <tr>
                            <td>Players: </td>
                            <td>${game.getPlayers()}</td>
                        </tr>
                    </table>

                    <h4>Description: </h4>
                    <p>${game.getDescription()}</p>
                </div>
            </div>

            <!-- Footer -->

            <jsp:include page="../footer.jsp" flush="true" />

        </div>
    </body>
</html>
