<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <div class="container pt-5">
  
   <form  method="post" action="login.do">
  <div class="form-group">
    <label for="userId">아이디</label>
    <input type="text" class="form-control" id="userId" name="id" placeholder="Enter your username">
  </div>
  <div class="form-group">
    <label for="userPass">비밀번호</label>
    <input type="password" class="form-control" id="userPass" name="pass" placeholder="Enter your password">
  </div>
  <button type="submit" class="btn btn-primary">Login</button>
</form>
   
  
  </div>
