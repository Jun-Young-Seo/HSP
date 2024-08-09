<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>고봉밥 회원가입</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../Style/sign_up.css" rel="stylesheet">
    <script>
        let experienceCount = 0;

        function addExperienceField() {
            const container = document.getElementById('experience-container');
            const newField = document.createElement('div');
            newField.className = 'experience-box mt-2';
            newField.innerHTML = `
            <div class="exp">
                <div class="mb-3">
                    <label for="experience${experienceCount}" class="form-label">경력사항 ${experienceCount}</label>
                    <div class="mb-3">
                        <label for="workplace${experienceCount}" class="form-label">근무지</label>
                        <input type="text" class="form-control" id="workplace${experienceCount}" name="company_${experienceCount}" placeholder="근무지를 입력하세요">
                    </div>
                    <div class="mb-3">
                        <label for="workPeriod${experienceCount}" class="form-label">근무 기간</label>
                        <div class="input-group">
                            <input type="date" class="form-control" id="workStart${experienceCount}" name="workStart_${experienceCount}">
                            <span class="input-group-text">~</span>
                            <input type="date" class="form-control" id="workEnd${experienceCount}" name="workEnd_${experienceCount}">
                        </div>
                    </div>
                </div>
                </div>
            `;
            container.appendChild(newField);
            experienceCount++;
            document.getElementById('experienceCount').value = experienceCount;

        }
    </script>

</head>

<body>
<%--progress Bar 75%--%>
<div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="height: 30px">
    <div class="progress-bar bg-success" style="width: 75%"></div>
</div>
<div class="container-fluid full-height">
    <div class="center-box text-center">
        <p>경력사항을 입력해주세요</p>
        <div id="experience-container" class="form-container">
        </div>
        <button type="button" class="btn btn-light mt-3" onclick="addExperienceField()">경력사항 추가하기</button>
        <form class="mt-3" action="Process/process_sign_up3.jsp" method="post">
            <input type="hidden" id="experienceCount" name="experienceCount" value="0">
            <div>
                <button type="submit"  class="btn btn-light">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>