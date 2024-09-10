<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>활동 선택</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Style/interest.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid">
    <form action="Process/interest_process.jsp" method="post">
    <div class="activity-title">관심있는 활동을 모두 선택해주세요</div>
    <div class="row row-cols-2 g-3 activity-container">
        <div class="col">
            <div class="activity-box" onclick="toggleSelect(this,'education')">
                <img src="<%=request.getContextPath()%>/resources/images/edu.png" alt="교육">
                <span>교육</span>
            </div>
            <input type="hidden" name="interest" value="">
        </div>
        <div class="col">
            <div class="activity-box" onclick="toggleSelect(this,'counselling')">
                <img src="<%=request.getContextPath()%>/resources/images/heart.png" alt="상담">
                <span>상담</span>
            </div>
            <input type="hidden" name="interest" value="">
        </div>
        <div class="col">
            <div class="activity-box" onclick="toggleSelect(this,'environment')">
                <img src="<%=request.getContextPath()%>/resources/images/env.png" alt="환경">
                <span>환경</span>
            </div>
            <input type="hidden" name="interest" value="">
        </div>
        <div class="col">
            <div class="activity-box" onclick="toggleSelect(this,'support')">
                <img src="<%=request.getContextPath()%>/resources/images/hand.png" alt="활동보조">
                <span>활동보조</span>
            </div>
            <input type="hidden" name="interest" value="">

        </div>
        <div class="col">
            <div class="activity-box" onclick="toggleSelect(this,'participate')">
                <img src="<%=request.getContextPath()%>/resources/images/foot.png" alt="활동참여">
                <span>활동참여</span>
            </div>
            <input type="hidden" name="interest" value="">

        </div>
        <div class="col">
            <div class="activity-box" onclick="toggleSelect(this,'campaign')">
                <img src="<%=request.getContextPath()%>/resources/images/campaign.png" alt="캠페인">
                <span>캠페인</span>
            </div>
            <input type="hidden" name="interest" value="">

        </div>
    </div>
        <button type="submit" class="btn btn-light mt-4">다음</button>
    </form>
</div>

<script>
    let selectedCount = 0;

    function toggleSelect(element,interest) {
        let inputField= element.nextElementSibling;

        if (element.classList.contains('selected')) {
            element.classList.remove('selected');
            inputField.value = '';
            selectedCount--;
        } else {
            if (selectedCount < 3) {
                element.classList.add('selected');
                inputField.value=interest;
                selectedCount++;
            }
        }
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
