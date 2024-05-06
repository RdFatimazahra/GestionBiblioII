<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06/05/2024
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Frame 1</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Itim', sans-serif;
        }

        .container {
            background-color: #FFF9EB;
            padding: 35px 0 0 1px;
            display: flex;
            box-sizing: border-box;
        }

        .inner-container {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-sizing: border-box;
        }

        .title {
            margin: -1px 0 14px 346.3px;
            font-size: 20px;
            color: #F13A3C;
            word-wrap: break-word;
        }
        .box {
            border-radius: 41px;
            border: 3px solid #FF9090;
            display: flex;
            flex-direction: column;
            padding: 6px 16px 164px 13px;
            width: fit-content;
            box-sizing: border-box;
            margin-left: 407px;
        }
        .item > div {
            margin: 5px 0 1px 0;
            font-size: 21px;
            color: #7F002F;
            word-wrap: break-word;
            padding-left: -34PX;
            padding-right: 60px;
        }

        .item:nth-child(even) {
            background-color: #FECBCB;
            border-radius: 14px;
            padding-left: 18px;
            MARGIN: 12px;
        }


        .item:nth-child(odd) {
            background-color: #FF9090;
            border-radius: 14px;
            padding-left: 18px;

            MARGIN: 12px;
        }

        .item > div {
            margin: 5px 24px 2px 5px;
            font-size: 16px;
            color: #7F002F;
            word-wrap: break-word;
        }
        .item > span {
            margin: 0 3px 0 3px;
            font-size: 15px;
            color: #FFFFFF;
            word-wrap: break-word;
        }

        .bg-image {

            background-position: 50% 50%;
            background-size: cover;
            background-repeat: no-repeat;
            position: absolute;
            left: 228px;
            top: 18px;
            width: 103px;
            height: 59px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="inner-container">
        <div class="title">Historique</div>
        <div class="box">
            <div class="item">
                <div>Les Fleurs du mal (1857)</div>
                <span>2024-01-15</span>
            </div>
            <div class="item">
                <div>Les Fleurs du mal (1857)</div>
                <span>2024-01-15</span>
            </div>
            <div class="item">
                <div>Les Fleurs du mal (1857)</div>
                <span>2024-01-15</span>
            </div>
            <div class="item">
                <div>Les Fleurs du mal (1857)</div>
                <span>2024-01-15</span>
            </div>
            <div class="item">
                <div>Les Fleurs du mal (1857)</div>
                <span>2024-01-15</span>
            </div>
            <!-- Repeat this structure for other items -->
        </div>
    </div>
    <div class="bg-image"></div>
</div>
</body>
</html>