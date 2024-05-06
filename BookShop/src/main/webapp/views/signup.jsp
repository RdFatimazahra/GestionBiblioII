<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <title>Double Connexion/Inscription - Page de Connexion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="style.css" />
</head>
<style>
    /* Your CSS styles here */
</style>
<body>
<div class="wrapper">
    <div class="container main">
        <form action="filter" method="post">
            <div class="row">
                <div class="col-md-6 right">
                    <div class="input-box">
                        <header>Create account</header>
                        <div class="input-field">
                            <input type="text" class="input" id="email" required="" autocomplete="off" name="username">
                            <label for="email">Username</label>
                        </div>
                        <div class="input-field">
                            <input type="text" class="input" id="email" required="" autocomplete="off" name="email">
                            <label for="email">Email</label>
                        </div>
                        <div class="input-field">
                            <input type="password" class="input" id="pass" required="" name="password">
                            <label for="pass">Password</label>
                        </div>
                        <div class="input-field">
                            <input type="submit" class="submit" value="Sign Up">
                        </div>
                    </div>
                    <div class="signin">
                        <span>Login Admin ? <a href="login.jsp">Log in here</a></span>
                    </div>
                </div>
                <div class="col-md-6 side-image">
                    <!-- Your image here -->
                    <a href="#"><img src="Media/booknook.png" alt=""></a>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    const signUpButton = document.getElementById("signUp");
    const signInButton = document.getElementById("signIn");
    const container = document.getElementById("container");

    signUpButton.addEventListener("click", () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener("click", () => {
        container.classList.remove("right-panel-active");
    });

    // You can keep your JavaScript code here
</script>
</body>
</html>
