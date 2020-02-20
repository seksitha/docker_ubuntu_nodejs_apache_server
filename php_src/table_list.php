<?php
   // OK, this is the full app with mysql that can do , read, insert, update, and delete.
   // My goals is to give you the complete example so that you can read the code and have as much as question.
   // there are app.css, mysql.php, http_handler.php, and table_list.php
   // I thought it is the easy on but I think this is rather advance. when I frist start writing this app it took me 
   // about 2 months to just write this funtionality but now I can write it about 6 hours.
   // css maybe about 100 lines
   // php and javascript is about 300 line of codes.
   // this app is client side rendering it is mainly done by JS
   // So this is the challenge of you guys to read and ask me any question. I have PDF files for you to print and read.
   // Please open and print them in folder of old_files. good luck.
   // So this video is to show you how the app work.

   // WHAT VUTEY HAS LEARNED SO FAR
   // Syntax and control flow in programing is learned by Vutey but not yet algorithm Design, Design parttern, Development achitecture,
   
   // WHAT HE HAS TO LEARN MORE
   // algorithm Design, input and output thought process base on heavily understand of logic.
   // Design parttern and best practice, resusable code, clean and easy maintinance, prodedule code, funtional program, object oriented, spagati code. javascript objec!
   // Development achitecture ex. do you use framework, single page appliciation, server rendering, or client side rendering, 
      // use mobile rendering, detabase decision: nosql, relational sql, embeded data store.


   // NEXT STEP TO GET THE 3 IMPORTANT GOALS ABOVE
   // 1. what is the output goal and app feature, app requirements of this app from output/requirement perspective.
         // the goal is to take mysql table and do CRUD event.
   // 2. Understand the algorithm by Finding the all the event that make up the application
   // 3. Try to understand the algorithm that buil the app
   // 4. Why do we used client side development achitecture 
   // 5. Learn to design database for specific application and how to write report from database ex. inventory book borrowed, products sold!

   include_once 'data_api/mysql.php';
   include_once 'header.php';
   $sql = "INSERT into $table_name (a, b , c , d ) values (3, 'helo', 'kkk', 4) "
   
?>

<main id='info-list' class="panel panel-info row">
   <?php
      // $data = read_data('info_teacher');
      // // echo '<pre>';
      // // print_r($data);

      // echo '<table border="1"><thead>';

      //    foreach ($data[0] as $key => $value) {
      //       echo '<th>' . $key . '</th>';
      //    }

      // echo '</thead>';
      // echo '<tbody>';

      //    foreach ($data as $key => $value) {
      //       echo '<tr>';
      //       foreach ($value as $ind => $val) {
      //             echo '<td>' . $val . '</td>';
      //       }
      //       echo '</tr>';
      //    }

      // echo '</tbody></table>';
   ?>
   <div class="panel-heading col-md-12">
      <div class="row">
         <div class="col-md-9"><b>Book list</b> </div>
         <div class="col-md-1"><button data-server-read value='info_teacher' class="btn btn-info btn-sm">Teachers</button></div>
         <div class="col-md-1"><button data-server-read value='info_student' class="btn btn-info btn-sm">Students</button></div>
         <div class="col-md-1"><button data-server-read value='info_book' class="btn btn-info btn-sm">Books</button></div>
         <div class="col-md-1"><button data-server-read value='book_transaction_record' class="btn btn-info btn-sm">records</button></div>
      </div>
   </div>
   <div class="panel-body">
      <div id="ajaxTable"></div>
   </div>

   <div id="pagination" class="">
      <form id="form" class='form-inline'></form>
      <div class="spacer">
         <button data-pagination value='pre' class="btn btn-info btn-sm">Previous</button>
         <button data-pagination value='next' class="btn btn-info btn-sm">Next</button>
      </div>
   </div>
</main>

<script>

(function($){
   var infoId, editRecord={}, updateCommand, recordToBuildForm={}, dataFromServer = [];
   var currentPage = 1;
   var maxPage = 0;
   var itemPerPage = 20;
   var pageData = [];

   document.querySelectorAll('button[data-pagination]').forEach(function(el){
      el.addEventListener('click', function(e){
         if(e.target.value=='pre'){
            if(currentPage > 1) {
               currentPage--;
               pageData = pagInation(dataFromServer, currentPage)
               buildTable(pageData);
            }
         }else if(e.target.value=='next'){
            if(currentPage < maxPage ){
               currentPage++;
               pageData = pagInation(dataFromServer, currentPage)
               buildTable(pageData);
            }
         }
         // console.log(e.target.value,currentPage,maxPage)
      })
   })

   var btn = document.querySelectorAll('button[data-server-read]');

   setTimeout(function(){
      console.log(btn);
   },500);

   btn.forEach(function(el){
      el.addEventListener('click', function(e){
         console.log(e.target.value)
         infoId = e.target.value;
         getData(e.target.value);
      })
   })

   
   document.querySelector('body').addEventListener('click', function(event) {
      if (event.target.attributes['data-edit']) {
         editRecord = pageData[event.target.parentNode.parentNode.rowIndex-1]
         console.log(editRecord);
         buildAddEditForm(editRecord,'edit')
         updateCommand = true;
      }
      if (event.target.attributes['data-delete']) {
         var record = pageData[event.target.parentNode.parentNode.rowIndex-1];
         $.ajax({
            url: 'data_api/http_handler.php?query=delete&table_name='+ infoId +'&id='+record.id,
            dataType:'json',
            type: 'get',
            success: function(response) {
               dataFromServer.splice(dataFromServer.indexOf(record), 1);
               maxPage = Math.ceil(dataFromServer.length / itemPerPage) || 1
               currentPage = maxPage;
               pageData = pagInation(dataFromServer, currentPage)
               console.log(pageData);
               buildTable(pageData);
            },
            error: function(xhr, status, error) {
               var errorMessage = xhr.status + ': ' + xhr.statusText
               console.log('Error - ' + errorMessage);
            }
         });
      }

      if (event.target.attributes['data-add-or-edit']) {
         console.log(editRecord);
         var form = document.querySelector('#form');
         var record = new FormData(form);
         
         if(updateCommand) {
            var beforeEdit = Object.assign({},editRecord); // 
         }else{
            editRecord = Object.assign({}, recordToBuildForm); // we don't delete id here but in the backend at insert fnc
         }
         for (var pair of record.entries()) {
            editRecord[pair[0]] = pair[1]; 
         }
         $.ajax({
            url: 'data_api/http_handler.php?query=' + (updateCommand ? 'update' : 'insert' ) + '&table_name='+ infoId ,
            // dataType:'json',
            type: 'post',
            data: editRecord,
            success: function(response) {
               
               if(updateCommand) { // if this the update command
                  dataFromServer[dataFromServer.indexOf(beforeEdit)] = Object.assign({},editRecord);
               }else{ // or adding new
                  editRecord.id = parseInt(response);
                  dataFromServer.push(Object.assign({},editRecord));// without object.assign we will get object deep link!
               }
               console.log(dataFromServer);
               // console.log(dataFromServer.indexOf(originalRecord));
               maxPage = Math.ceil(dataFromServer.length / itemPerPage) || 1
               currentPage = maxPage;
               pageData = pagInation(dataFromServer, currentPage)
               buildTable(pageData);
               buildAddEditForm(editRecord, 'add')
               updateCommand = false;
            },
            error: function(xhr, status, error) {
               var errorMessage = xhr.status + ': ' + xhr.statusText
               console.log('Error - ' + errorMessage);
            }
         });
      }
   });

   function pagInation (records, index){
      pageIndex = index;
      return records.slice(itemPerPage * (index - 1), itemPerPage * index) // slice(data, 0, 15)
   }

   function getData(infoId) {
      $.ajax({
         url: 'data_api/http_handler.php?query=read&table_name='+infoId,
         dataType:'json',
         type: 'get',
         success: function(response) {
            dataFromServer = response;
            maxPage = Math.ceil(response.length / itemPerPage) || 1
            currentPage = maxPage;
            pageData = pagInation(dataFromServer, currentPage)
            buildTable(pageData);
            recordToBuildForm = pageData[0];
            buildAddEditForm(pageData[0],'add');

         },
         error: function(xhr, status, error) {
            var errorMessage = xhr.status + ': ' + xhr.statusText
            console.log('Error - ' + errorMessage);
         }
      });
   }

   function buildAddEditForm (obj, typeForm){
      var formString = '';

      Object.keys(obj).forEach(function(val){
         // console.log(val)
         if (val != 'id') {
            formString += '<input value="' + (typeForm == 'edit' ? obj[val] : '' ) + '" type="text" class="form-control " placeholder="' +  val + '" name="' + val + '"style="width:' + (val.length > 5 ? val.length * 9 : 150) + 'px ">'
         }
      })
      formString += '<input type="button" data-add-or-edit class="btn btn-info btn-xs" name="OK" value="OK">' +  (typeForm == 'edit' ?'<input type = "button" value="X" class="btn btn-warning btn-xs" data-cancel-edit >' : '' )
      // console.log(formString);
      document.getElementById('form').innerHTML = formString;
   }

   function buildTable (records){
      var htmlString =
               '<table class="table table-striped table-bordered table-condensed table-hover" id="record"> <thead>'

      // loop for header of talbe
      // console.log(records);//
      Object.keys(records[0]).forEach(function(val) { // TODO: bug when adding new record will id become last index!
         htmlString = htmlString + '<th>' + val + '</th>'
      })

      htmlString = htmlString + ' <th class="table-command"> Del/Ed </th> </thead> <tbody> '

      // loop for body of talbe
      records.forEach(function(record, ind) {
         htmlString = htmlString + '<tr>';
         Object.keys(records[0]).forEach(function(val) {
            htmlString = htmlString + '<td>' + record[val] + '</td>'
         })
         htmlString = htmlString +
            ` <td class="button table-command" >
                  <button class="btn btn-xs btn-danger" data-delete >X</button>
                  <button class="btn btn-xs btn-warning" data-edit >√</button>
            </td> </tr>
         `
      })

      htmlString = htmlString + '</tbody> </table>'
      // console.log(htmlString)
      document.querySelector('#ajaxTable').innerHTML = htmlString;
   }
})($,window)
// console.log(getData)
</script>

<?php //include_once 'footer.php'?>