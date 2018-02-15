<!doctype html>
<html ng-app="myApp">
  <head>
    <title>to do list</title>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
 <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
    <script src="angular.js"></script>
    <script src="TodoCntrl.js"></script>
 <style>
        .strike {
    text-decoration: line-through;
        }
    </style>
 
  </head>
  <body ng-controller="TodoCntrl">
<h1 align="center">TO DO TASK

</h1>
<div class="form-group col-sm-4">
<input type="text" id="entertask" class="form-control input-sm-6" ng-model="mtask"/>
<br/>
<input type="button" id="addtask" value="Add Todo" class="btn btn-primary" ng-click="addTodo()"/>
 
</div>
  <table class="table table-striped" >
  <thead>
  <tr>
  
  <th>My Task</th>
  <th></th>
  </tr>
  </thead>
  <tbody>
<tr ng-repeat="mytask in todo">
<td>{{$index+1}}</td>
<td><span ng-class="{strike:mytask.status }" ng-bind="mytask.task"></span></td>
<td><button type="button" id="complted" ng-click="complted($index)" class="btn btn-success btn-sm">
           Mark completed
        </button>
</td>
<td><button type="button" id="removetask" ng-click="removeTask($index)" class="btn btn-failure btn-sm">
          <span class="glyphicon glyphicon-remove-circle"></span> Delete
        </button>
</td>

</tr>
  </tbody>
  
  </table>
  
  </body>

</html>


 