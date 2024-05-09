<%--
  Created by IntelliJ IDEA.
  User: SeoJunYoung
  Date: 2024-05-06
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../CSS/index_style.css">

</head>
<body>
    <h1>phone call page</h1>
    <%@ include file="../navbar.jsp"%>
    <div class="grid-container">
        <div class="card" id="119">
                <img src="https://via.placeholder.com/300" alt="Placeholder Image">
                <div class="card-body">
                    <p>119</p>
                </div>
        </div>
        <div class="card" id="112">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>112</p>
            </div>
        </div>
        <div class="card" id="114">
                <img src="https://via.placeholder.com/300" alt="Placeholder Image">
                <div class="card-body">
                    <p>114</p>
                </div>
        </div>
        <div class="card" id="111">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>111</p>
            </div>
        </div>
        <div class="card" id="123">
                <img src="https://via.placeholder.com/300" alt="Placeholder Image">
                <div class="card-body">
                    <p>123</p>
                </div>
        </div>
        <div class="card">
                <img src="https://via.placeholder.com/300" alt="Placeholder Image">
                <div class="card-body">
                    <p>456</p>
                </div>
        </div>
        <div class="card">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>789</p>
            </div>
        </div>
        <div class="card">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>1111</p>
            </div>
        </div>
        <div class="card">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>010-1234-5678</p>
            </div>
        </div>
    </div>
    <script>
        document.querySelectorAll('.card').forEach(card => {
            card.addEventListener('click', function() {
                var phoneNumber = this.getAttribute('id'); // data-phone 속성값을 읽음
                if (phoneNumber) {
                    window.location.href = 'tel:' + phoneNumber; // 전화 걸기
                }
            });
        });

    </script>

</body>
</html>
