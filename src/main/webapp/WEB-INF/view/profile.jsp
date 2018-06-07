<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<%@ page import="codeu.model.store.basic.UserStore" %>
<%@ page import="codeu.model.data.User" %>
<%@ page import="codeu.model.data.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.time.Instant" %>
<%
/** Gets the UserStore instance to access all users. */
UserStore userStore = UserStore.getInstance();
%>

<!DOCTYPE html>
<html>
<head>
  <title>Profile</title>
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>

  <nav>
    <a id="navTitle" href="/">CodeU Chat App Team 34</a>
    <a href="/conversations">Conversations</a>
    <a href="/users/<%= request.getSession().getAttribute("user") %>">Profile</a>
    <% if(request.getSession().getAttribute("user") != null){ %>
      <a href="/users/<%= request.getSession().getAttribute("user") %>" > <%= request.getSession().getAttribute("user") %>'s Profile</a>
    <% } else{ %>
      <a href="/login">Login</a>
    <% } %>
    <a href="/about.jsp">About</a>
  </nav>

  <div id="container">
  	<div
			style="width:75%; margin-left:auto; margin-right:auto; margin-top: 50px;">

			<h1><strong><%=request.getSession().getAttribute("user")%>'s Profile Page</strong></h1>
			<h2>Welcome!</h2>
			
			<div id="avatar">
				<img alt="cute dog" src = "https://learnwebcode.com/images/lessons/insert-image-funny-dog.jpg">
			</div>

			<h3 class="font-semibold mgbt-xs-5"> Google CodeU Summer 2018 Student </h3>
			<h4> University Student </h4>
			
			
			 <form action="/users/<%= request.getSession().getAttribute("user") %>" method="POST">
     		 	<button type="Edit Profile">Edit Profile</button>
   			 </form>
			<ul>
				<li>Edit Your Bio</li>
				<li>Change Profile Picture</li>
				<li>Change Profile Color</li>
			</ul>
		</div>
	</div>
</body>
</html>
