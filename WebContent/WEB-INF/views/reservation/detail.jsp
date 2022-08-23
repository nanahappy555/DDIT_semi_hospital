<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Starter</title>
<!-- 헤더, 푸더 외부 css파일 -->
<link rel="stylesheet" href="css/header_footer.css">

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<style>
h3 {
   margin-bottom: 0;
}

.ti {
   float: left;
}

.step {
   border-top: 2px solid #1458a5;
   background: #f4f4f4;
   padding: 20px 35px;
   margin-bottom: 35px;
}
table{
   width: 100%;
    border-collapse: collapse;
    border-spacing: 0px;
    border-top: 2px solid #505050
}

.cancel_reservation{
   color:red;
   text-decoration: none;
}
.Details_cancel_reservation{
   padding-top: 200px;
   padding-bottom: 200px;
}

</style>

</head>
<body class="hold-transition layout-top-nav">
  
         <!-- Main content -->
         <div class="content">
            <div class="container-fluid">
               <!-- 본문 세로4행 -->
               <div class="card card-primary card-outline">
                  <div class="card-header">
                     <h3>병원소개</h3>
                  </div>
                  <!-- 추가 -->
                  <div class="step">

                     <h3>예약 확인 및 취소</h3>
                     <table>
                        <colgroup>
                           <col width="18%">
                           <col width="18%">
                           <col width="18%">
                           <col width="18%">
                           <col />
                        </colgroup>
                        <thead>
                           <tr>
                              <th scope="col">예약일자</th>
                              <th scope="col">진료과목</th>
                              <th scope="col">예약시간</th>
                              <th scope="col">예약상태</th>
                              <th scope="col"></th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td class="choiceDate"></td>
                              <td class="subject"></td> <!-- 진료과목 -->
                              <td class="time"></td>    <!-- 예약시간 -->
                              <td class="time"><a
                                 href="javascript:updateStats('5314');" class=cancel_reservation>예약취소</a>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>

               </div>

            </div>

         </div>
    

</body>
</html>