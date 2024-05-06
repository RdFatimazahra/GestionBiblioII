<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06/05/2024
  Time: 09:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livre Review</title>
    <link rel="stylesheet" href="../Css/feedback.css">
</head>
<body>
<div class="container">
    <h1>Donner votre avis :</h1>
    <form action="#" method="post">
        <div class="form-group">
            <label for="book-title">Titre du livre :</label>
            <input type="text" id="book-title" name="book-title" required>
        </div>
        <div class="form-group">
            <label for="author">Auteur :</label>
            <input type="text" id="author" name="author" required>
        </div>

        <div class="form-group">
            <label for="review">Votre avis :</label>
            <textarea id="review" name="review" rows="4" required></textarea>
        </div>
        <button type="submit">Ajouter</button>
    </form>
</div>
</body>
</html>