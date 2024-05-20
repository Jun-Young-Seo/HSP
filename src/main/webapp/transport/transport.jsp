<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>장소검색</title>
        <meta charset="UTF-8">
        <link href="../resources/CSS/transport.css" rel="stylesheet"/>

    </head>
    <body>
    <div class="map_wrap">
        <p>Context Path: ${pageContext.request.contextPath}</p>
        <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

        <div id="menu_wrap" class="bg_white">
            <div class="option">
                <div>
                    <form onsubmit="searchPlaces(); return false;">
                        키워드 : <input type="text" value="" id="keyword" size="15">
                        <button type="submit">검색하기</button>
                    </form>
                </div>
            </div>
            <hr>
            <ul id="placesList"></ul>
            <div id="pagination"></div>
        </div>
    </div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=80008da57b759dd4742228e28d4fa354&libraries=services"></script>
    <script src="../resources/JS/transport.js"></script>

</body>
</html>