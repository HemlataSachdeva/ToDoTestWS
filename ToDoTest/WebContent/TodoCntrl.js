var mainApp = angular.module('myApp', []);

 mainApp.controller('TodoCntrl',function($scope, $http){

	 var toDoList=[{task:'exsercise',done:false,status:false},
	 	 {task:'sleep on tym',done:false,status:false},
	 	 {task:'eat fruits',done:false,status:false}];
 $scope.todo = toDoList;
 $scope.mtask = '';
 $scope.addTodo=function(){
 
// $scope.todo.push({task:$scope.mtask,done:false,status:false});
 
 
	 $http.post('/addTodo', $scope.mtask)
		.success(function(data) {
			$scope.todo = data;
		})
		.error(function(data, status, headers, config) {
			alert( "failure message: " + JSON.stringify({data: data}));
		});		
 
 };
 $scope.removeTask=function(index){
 //$scope.todo.splice(index, 1)
	 
	 $http.post('/deleteTodo', $scope.toDoList(index))
		.success(function(data) {
			$scope.todo = data;
		})
		.error(function(data, status, headers, config) {
			alert( "failure message: " + JSON.stringify({data: data}));
		});		

 
 
 };
 $scope.complted=function(index){
 $scope.todo[index]={task:$scope.todo[index].task,done:true,status:true};


 
 
 };
 
 
 });
