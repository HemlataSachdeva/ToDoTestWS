package com.todo;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


public class TodoController {
	
	ArrayList<TaskDto> todoList= new ArrayList<TaskDto>();
	
	
	@RequestMapping(value="/addTodo", method=RequestMethod.POST)
	@ResponseBody
    public ArrayList<TaskDto> addTodoList(TaskDto data) {
		
		//ArrayList<TaskDto> todoList= new ArrayList<TaskDto>();
		todoList.add(data);        
        return todoList;
        		
	}
	
	@RequestMapping(value="/addTodo", method=RequestMethod.POST)
	@ResponseBody
    public ArrayList<TaskDto> DeleteTodoList(String str) {
		
		 for (TaskDto obj : todoList) { 		      
	           if(obj.getTask().equals(str)){
	        	   todoList.remove(obj);
	           }
	      }

		return todoList;
        		
	}


}
