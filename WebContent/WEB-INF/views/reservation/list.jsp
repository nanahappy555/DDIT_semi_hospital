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

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
.choice {
   border-top: 2px solid #1458a5;
   background: #f4f4f4;
   padding: 20px 35px;
   margin-bottom: 35px;
}

.choice span {
   display: table-cell;
   vertical-align: middle;
   color: #2c2c2c;
   font-size: 16px;
   line-height: 1.3em;
   letter-spacing: -0.06em;
   font-weight: 500;
}

.choice h3 {
   padding-left: 20px;
   display: table-cell;
   vertical-align: middle;
   color: #1458a5;
   font-size: 22px;
   line-height: 1.3em;
   letter-spacing: -0.06em;
}

.choice {
   padding: 26px 0;
   text-align: center;
}

a {
   color: #000000;
   text-decoration: none;
}

.scriptCalendar {
   text-align: center;
   width: 100%;
   height: 100%;
   /*    position: fixed; */
   /*    left: 150px; */
}

.table_layout {
   width: 50%;
   height: 50%;
}

.scriptCalendar>thead>tr>td {
   /*    width: 90px; */
   height: 90px;
}

.scriptCalendar>thead>tr:first-child>td {
   font-weight: bold;
}

.scriptCalendar>thead>tr:last-child>td {
   background-color: #007BFF;
}

.scriptCalendar>tbody>tr>td {
   /*    width: 90px; */
   height: 90px;
   /*    left: 100px; */
}

.box {
   padding-top: 100px;
   padding-left: 50px;
   /*    position: fixed; */
   /*    right: 200px; */
   /*    top: 250px; */
}

.main_content {
   display: flex;
}
</style>

<script type="text/javascript">
   document.addEventListener("DOMContentLoaded", function() {
      buildCalendar();
   });

   var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
   var date = new Date(); // @param 전역 변수, today의 Date를 세어주는 역할

   /**
    * @brief   이전달 버튼 클릭
    */
   function prevCalendar() {
      this.today = new Date(today.getFullYear(), today.getMonth() - 1, today
            .getDate());
      buildCalendar(); // @param 전월 캘린더 출력 요청
   }

   /**
    * @brief   다음달 버튼 클릭
    */
   function nextCalendar() {
      this.today = new Date(today.getFullYear(), today.getMonth() + 1, today
            .getDate());
      buildCalendar(); // @param 명월 캘린더 출력 요청
   }

   /**
    * @brief   캘린더 오픈
    * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
    */
   function buildCalendar() {

      let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
      let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

      let tbCalendar = document.querySelector(".scriptCalendar > tbody");

      document.getElementById("calYear").innerText = today.getFullYear(); // @param YYYY월
      document.getElementById("calMonth").innerText = autoLeftPad((today
            .getMonth() + 1), 2); // @param MM월

      // @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
      while (tbCalendar.rows.length > 0) {
         tbCalendar.deleteRow(tbCalendar.rows.length - 1);
      }

      // @param 첫번째 개행
      let row = tbCalendar.insertRow();

      // @param 날짜가 표기될 열의 증가값
      let dom = 1;

      // @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
      //               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
      let daysLength = (Math
            .ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7)
            - doMonth.getDay();

      // @param 달력 출력
      // @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
      for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

         let column = row.insertCell();

         // @param 평일( 전월일과 익월일의 데이터 제외 )
         if (Math.sign(day) == 1 && lastDate.getDate() >= day) {

            // @param 평일 날짜 데이터 삽입

            column.innerText = autoLeftPad(day, 2);

            // @param 일요일인 경우
            if (dom % 7 == 1) {
               column.style.color = "#FF4D4D";
            }

            // @param 토요일인 경우
            if (dom % 7 == 0) {
               column.style.color = "#4D4DFF";
               row = tbCalendar.insertRow(); // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
            }

         }

         // @param 평일 전월일과 익월일의 데이터 날짜변경
         else {
            let exceptDay = new Date(doMonth.getFullYear(), doMonth
                  .getMonth(), day);
            column.innerText = autoLeftPad(exceptDay.getDate(), 2);
            column.style.color = "#A9A9A9";
         }

         // @brief   전월, 명월 음영처리
         // @details 현재년과 선택 년도가 같은경우
         if (today.getFullYear() == date.getFullYear()) {

            // @details 현재월과 선택월이 같은경우
            if (today.getMonth() == date.getMonth()) {

               // @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
               if (date.getDate() > day && Math.sign(day) == 1) {
                  column.style.backgroundColor = "#E5E5E5";
               }

               // @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
               else if (date.getDate() < day && lastDate.getDate() >= day) {
                  column.style.backgroundColor = "#FFFFFF";
                  column.style.cursor = "pointer";
                  column.onclick = function() {
                     calendarChoiceDay(this);
                  }
               }

               // @details 현재일인 경우
               else if (date.getDate() == day) {
                  column.style.backgroundColor = "#FFFFE6";
                  column.style.cursor = "pointer";
                  column.onclick = function() {
                     calendarChoiceDay(this);
                  }
               }

               // @details 현재월보다 이전인경우
            } else if (today.getMonth() < date.getMonth()) {
               if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
                  column.style.backgroundColor = "#E5E5E5";
               }
            }

            // @details 현재월보다 이후인경우
            else {
               if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
                  column.style.backgroundColor = "#FFFFFF";
                  column.style.cursor = "pointer";
                  column.onclick = function() {
                     calendarChoiceDay(this);
                  }
               }
            }
         }

         // @details 선택한년도가 현재년도보다 작은경우
         else if (today.getFullYear() < date.getFullYear()) {
            if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
               column.style.backgroundColor = "#E5E5E5";
            }
         }

         // @details 선택한년도가 현재년도보다 큰경우
         else {
            if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
               column.style.backgroundColor = "#FFFFFF";
               column.style.cursor = "pointer";
               column.onclick = function() {
                  calendarChoiceDay(this);
               }
            }
         }

         dom++;

      }
   }

   /**
    * @brief   날짜 선택
    * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
    */
   function calendarChoiceDay(column) {

      // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.  선택을 하나만 할 수 있음
      if (document.getElementsByClassName("choiceDay")[0]) {
         document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
         document.getElementsByClassName("choiceDay")[0].classList
               .remove("choiceDay");

      }

      // @param 선택일 클래스명 변경       선택을 하나만 할 수 있음
      column.classList.add("choiceDay");

      // @param 선택일 체크 표시    색상
      column.style.backgroundColor = "#FF9999";

   }

   /**
    * @brief   숫자 두자릿수( 00 ) 변경
    * @details 자릿수가 한자리인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
    * @param   num     앞에 0을 붙일 숫자 값
    * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
    */
   function autoLeftPad(num, digit) {
      if (String(num).length < digit) {
         num = new Array(digit - String(num).length + 1).join("0") + num;
      }
      return num;
   }
</script>
<script>
      $(document).on(
                  "click",
                  ".choiceDay",
                  function() {
                     //이벤트
                     let calYear = document.getElementById("calYear").textContent;
                     let calMonth = document.getElementById("calMonth").textContent;
                     let day = document
                           .getElementsByClassName("choiceDay")[0].textContent;

                     document.getElementById("choiceDate").textContent = calYear
                           + calMonth + day;
                  })
                  
      
   </script>
   <script> 
      function wantdoctor(){

         
         
      }
   </script>

</head>
<body class="hold-transition layout-top-nav">


      <!-- Content Wrapper. Contains page content -->
      <div>
         <!-- /.content-header -->
         <!-- Main content -->
         <div class="title"></div>
         <h2>진료예약</h2>
         <div class="choice"></div>
         <h3>예약일 및 시간선택</h3>
         <div class="container">
            <div class="row"></div>
            <div class="row main_content">
               <div class="col-md-1"></div>
               <div class="col-md-5 table_layout">
                  <table class="scriptCalendar">
                     <colgroup>
                        <col width="14%" />
                        <col width="14%" />
                        <col width="14%" />
                        <col width="14%" />
                        <col width="14%" />
                        <col width="14%" />
                        <col width="14%" />
                     </colgroup>
                     <thead>
                        <tr>
                           <td onClick="prevCalendar();" style="cursor: pointer;">&#60;&#60;</td>
                           <td colspan="5"><span id="calYear">YYYY</span>년 <span
                              id="calMonth">MM</span>월</td>
                           <td onClick="nextCalendar();" style="cursor: pointer;">&#62;&#62;</td>
                        </tr>
                        <tr>
                           <td>일</td>
                           <td>월</td>
                           <td>화</td>
                           <td>수</td>
                           <td>목</td>
                           <td>금</td>
                           <td>토</td>
                        </tr>
                     </thead>
                     <tbody class="tbody"></tbody>
                  </table>
               </div>
               <div class="col-md-5">
                  <div class="box">
                     <ul>
                        <li>
                           <h3>선택일</h3>
                           <div id="choiceDate"></div>
                           
                        </li>
                        <li>
                           <h3>의료진</h3> <select name="dcode" id="departmentDoctor">
                              <option value="wantdoctor" selected="selected">원하는 의료진을 선택하세요.</option>
                              <option value="1">곽동석 원장님</option>
                              <option value="2">김민수 원장님</option>
                              <option value="3">박수현 원장님</option>
                              <option value="4">양형주 원장님</option>
                              <option value="5">이혜림 원장님</option>
                              <option value="6">최재혁 원장님</option>
                              
                        </select>
                        </li>
                        <li>
                           <h3>예약시간</h3> <select name="rtime" id="reservationTime">
                              <option value="" selected="selected">원하는 진료시간을 선택하세요.</option>
                               <option value="10:00">10:00</option>
                               <option value="11:00">11:00</option>
                               <option value="12:00">12:00</option>
                               <option value="14:00">14:00</option>
                               <option value="15:00">15:00</option>
                               <option value="16:00">16:00</option>
                               <option value="17:00">17:00</option>

                        </select>
                        </li>
                     </ul>
                     <p class="ps">
                       - 전화예약은 받지않습니다.
                     </p>
                              <input type ="button" value = "예약하기" id="reservation" onclick=" regist_go()"/>
                  </div>
               </div>
               <div class="col-md-1">
               
               </div>
            </div>
         </div>
      </div>
      <!-- /.content -->
   <!-- /.content-wrapper -->
   <form id="reservationForm">   
   <input type='hidden' name="rnum" value="" />
   <input type='hidden' name="rdate" value=""/>
   <input type='hidden' name="rtime" value="" />
   <input type='hidden' name="mcode" value=""/>
   <input type='hidden' name="dcode" value=""/>
   
</form>

<script>

   
function regist_go(){
//      alert("regist btn click");
   let choiceDate = $('#choiceDate').text();
   let mcode = 1;
   
   
   
   //form에 title,content세팅
   
   var reservationForm = $('form[id="reservationForm"]');
   reservationForm.find('[name="rnum"]').val(choiceDate + mcode);
   reservationForm.find('[name="rdate"]').val(choiceDate);
   reservationForm.find('[name="rtime"]').val($("#reservationTime option:selected").val());
   reservationForm.find('[name="mcode"]').val(mcode);
   reservationForm.find('[name="dcode"]').val($("#departmentDoctor option:selected").val());
   
   
   console.log("rdate",reservationForm);
   reservationForm.attr({"method":"get",
              "action":"regist.do"
              });      
   reservationForm.submit();
   
   
}

</script>   






   <!-- ./wrapper -->

   <!-- REQUIRED SCRIPTS -->

   <!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>
</html>