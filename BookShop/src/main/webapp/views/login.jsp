<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <title>Double Connexion/Inscription - Page de Connexion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    <link rel="stylesheet" href="../Css/signing.css" />
</head>
<style>
    /* POPPINS FONT */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

    *{
        font-family: 'Poppins', sans-serif;
        margin: 0px;
    }
    .wrapper{
        background: #a14e00;
        padding: 0 20px 0 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }
    .main{
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    .side-image{
        background-image: url("/Media/login.png");
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        border-radius: 10px 0 0 10px;
        position: relative;
    }
    .row{
        width:  900px;
        height:550px;
        border-radius: 10px;
        background: #fff;
        padding: 0px;
        box-shadow: 5px 5px 10px 1px rgba(0,0,0,0.2);
    }
    .text{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
    .text p{
        color: #fff;
        font-size: 20px;
    }
    i{
        font-weight: 400;
        font-size: 15px;
    }
    .right{
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
    }
    .input-box{
        width: 330px;
        box-sizing: border-box;
    }
    img {
        width: 35px;
        position: absolute;
        top: 30px;
        left: 30px;
    }
    .input-box header{
        font-weight: 700;
        text-align: center;
        margin-bottom: 45px;
    }
    .input-field{
        display: flex;
        flex-direction: column;
        position: relative;
        padding: 0 10px 0 10px;
    }
    .input{
        height: 45px;
        width: 100%;
        background: transparent;
        border: none;
        border-bottom: 1px solid rgba(0, 0, 0, 0.2);
        outline: none;
        margin-bottom: 20px;
        color: #40414a;
    }
    .input-box .input-field label{
        position: absolute;
        top: 10px;
        left: 10px;
        pointer-events: none;
        transition: .5s;
    }
    .input-field input:focus ~ label
    {
        top: -10px;
        font-size: 13px;
    }
    .input-field input:valid ~ label
    {
        top: -10px;
        font-size: 13px;
        color: #5d5076;
    }
    .input-field .input:focus, .input-field .input:valid{
        border-bottom: 1px solid #743ae1;
    }
    .submit{
        border: none;
        outline: none;
        height: 45px;
        background: #ececec;
        border-radius: 5px;
        transition: .4s;
    }
    .submit:hover{
        background: rgba(37, 95, 156, 0.937);
        color: #fff;
    }
    .signin{
        text-align: center;
        font-size: small;
        margin-top: 25px;
    }
    span a{
        text-decoration: none;
        font-weight: 700;
        color: #000;
        transition: .5s;
    }
    span a:hover{
        text-decoration: underline;
        color: #000;
    }

    @media only screen and (max-width: 768px){
        .side-image{
            border-radius: 10px 10px 0 0;
        }
        img{
            width: 35px;
            position: absolute;
            top: 20px;
            left: 47%;
        }
        .text{
            position: absolute;
            top: 70%;
            text-align: center;
        }
        .text p, i{
            font-size: 16px;
        }
        .row{
            max-width:420px;
            width: 100%;
        }
    }
</style>
<body>
<div class="wrapper">
    <div class="container main">
        <div class="row">
            <div class="col-md-6 side-image">
                <!-- Your image here -->
                <a href="#"><img src="Media/booknook.png" alt=""></a>
            </div>
            <div class="col-md-6 right">
                <div class="input-box">
                    <header>Login account</header>
                    <form action="filter" method="post">
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
                    </form>
                    <div class="signin">
                        <span>Already have an account? <a href="signup.jsp">Log in here</a></span>
                    </div>
                </div>
            </div>
        </div>
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
