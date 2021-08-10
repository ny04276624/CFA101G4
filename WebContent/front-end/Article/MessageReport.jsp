<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="atmem" scope="page" class="com.member.model.MemberService" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.5.0.js" integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.all.min.js"></script>
<link href="/CFA101G4/CSS/Forum-css/MessageReport.css" rel="stylesheet" type="text/CSS">
<link rel="icon" href="/CFA101G4/Img/logo1.ico" type="image/x-icon">
<title>天堂鳥討論區</title>
</head>
<style>
p#RRRRR{
 	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 5;
	-webkit-box-orient: vertical;
	white-space: normal;
	margin-bottom: 0px;
}
</style>
<body>
  <div class="container" style="margin:110px 0px 80px 100px;">
    <div class="card w-75" style="height: 550px; margin-left:150px; background-color: white; opacity: 0.88;">
      <div class="card-header text-center">
        文章留言檢舉表單
      </div>
      <div class="card-body" style="padding-bottom:2px">
        <div class="card mb-3" style="max-width: 100%;">
          <div class="row g-0">
            <div class="col-md-4 text-center">
              <img src="${pageContext.request.contextPath}/Img/logo1.png" class="img-thumbnail border-0 p-2" alt="...">
              <p class="fs-6" style="color: cadetblue;">${artMSVO.memname}</p>
            </div>
            <div class="col-md-8 ">
              <div class="card-body " >
                <p class="card-text p-0" id="RRRRR">${artMSVO.msgtext}</p>
                <p class="card-text m-1"><small class="text-muted">留言時間${artMSVO.msgtime}</small></p>
              </div>
            </div>
          </div>
        </div>
        <div class="form-floating">
          <textarea class="form-control" placeholder="Leave a comment here" id="reportTextarea" style="height: 100px; resize: none; " ></textarea>
          <label for="reportTextarea">回報內容</label>
          <p class="fs-6 m-1" id="repTextwarn"></p>
        </div>
      </div>
      <div class="card-footer text-muted text-center">
        <button type="button" class="btn btn-secondary m-1" id="cancel">取消提交</button>
        <button type="button" class="btn btn-secondary m-1" id="RepSubmit" value="${artMSVO.msgid}" disabled>提交表單</button>
      </div>
    </div>
   </div> 
    	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
		<script src="/CFA101G4/JS/Forum-js/MessageReport.js"></script>
</body>
</html>