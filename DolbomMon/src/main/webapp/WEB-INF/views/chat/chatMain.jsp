<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device, initial-scale=1" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

$( '.friend-drawer--onhover' ).on( 'click',  function() {
  
  $( '.chat-bubble' ).hide('slow').show('slow');
  
});
</script>
<style>
body {
  background-color: #fff;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-rendering: optimizeLegibility;
}

.container {
  margin: 60px auto;
  background: #fff;
  padding: 0;
  border-radius: 7px;
}

.profile-image {
  width: 50px;
  height: 50px;
  border-radius: 40px;
}

.settings-tray {
  background: #eee;
  padding: 10px 15px;
  border-radius: 7px;
}
.settings-tray .no-gutters {
  padding: 0;
}
.settings-tray--right {
  float: right;
}
.settings-tray--right i {
  margin-top: 10px;
  font-size: 25px;
  color: grey;
  margin-left: 14px;
  transition: 0.3s;
}
.settings-tray--right i:hover {
  color: #74b9ff;
  cursor: pointer;
}

.search-box {
  background: #fafafa;
  padding: 10px 13px;
}
.search-box .input-wrapper {
  background: #fff;
  border-radius: 40px;
}
.search-box .input-wrapper i {
  color: grey;
  margin-left: 7px;
  vertical-align: middle;
}

input {
  border: none;
  border-radius: 30px;
  width: 80%;
}
input::placeholder {
  color: #e3e3e3;
  font-weight: 300;
  margin-left: 20px;
}
input:focus {
  outline: none;
}

.friend-drawer {
  padding: 10px 15px;
  display: flex;
  vertical-align: baseline;
  background: #fff;
  transition: 0.3s ease;
}
.friend-drawer--grey {
  background: #eee;
}
.friend-drawer .text {
  margin-left: 12px;
  width: 70%;
}
.friend-drawer .text h6 {
  margin-top: 6px;
  margin-bottom: 0;
}
.friend-drawer .text p {
  margin: 0;
}
.friend-drawer .time {
  color: grey;
}
.friend-drawer--onhover:hover {
  background: #74b9ff;
  cursor: pointer;
}
.friend-drawer--onhover:hover p,
.friend-drawer--onhover:hover h6,
.friend-drawer--onhover:hover .time {
  color: #fff !important;
}

hr {
  margin: 5px auto;
  width: 60%;
}

.chat-bubble {
  padding: 10px 14px;
  background: #eee;
  margin: 10px 30px;
  border-radius: 9px;
  position: relative;
  animation: fadeIn 1s ease-in;
}
.chat-bubble:after {
  content: "";
  position: absolute;
  top: 50%;
  width: 0;
  height: 0;
  border: 20px solid transparent;
  border-bottom: 0;
  margin-top: -10px;
}
.chat-bubble--left:after {
  left: 0;
  border-right-color: #eee;
  border-left: 0;
  margin-left: -20px;
}
.chat-bubble--right:after {
  right: 0;
  border-left-color: #74b9ff;
  border-right: 0;
  margin-right: -20px;
}

@keyframes fadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
.offset-md-9 .chat-bubble {
  background: #74b9ff;
  color: #fff;
}

.chat-box-tray {
  background: #eee;
  display: flex;
  align-items: baseline;
  padding: 10px 15px;
  align-items: center;
  margin-top: 19px;
  bottom: 0;
}
.chat-box-tray input {
  margin: 0 10px;
  padding: 6px 2px;
}
.chat-box-tray i {
  color: grey;
  font-size: 30px;
  vertical-align: middle;
}
.chat-box-tray i:last-of-type {
  margin-left: 25px;
}
</style>
</head>
<body>
<div class="container">
	<div class="row no-gutters">
	  <div class="col-md-4 border-right">
		<div class="settings-tray">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/filip.jpg" alt="Profile img">
		  <span class="settings-tray--right">
			<i class="material-icons">cached</i>
			<i class="material-icons">message</i>
			<i class="material-icons">menu</i>
		  </span>
		</div>
		<div class="search-box">
		  <div class="input-wrapper">
			<i class="material-icons">search</i>
			<input placeholder="Search here" type="text">
		  </div>
		</div>
		<div class="friend-drawer friend-drawer--onhover">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/robocop.jpg" alt="">
		  <div class="text">
			<h6>Robo Cop</h6>
			<p class="text-muted">Hey, you're arrested!</p>
		  </div>
		  <span class="time text-muted small">13:21</span>
		</div>
		<hr>
		<div class="friend-drawer friend-drawer--onhover">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/optimus-prime.jpeg" alt="">
		  <div class="text">
			<h6>Optimus</h6>
			<p class="text-muted">Wanna grab a beer?</p>
		  </div>
		  <span class="time text-muted small">00:32</span>
		</div>
		<hr>
		<div class="friend-drawer friend-drawer--onhover ">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/real-terminator.png" alt="">
		  <div class="text">
			<h6>Skynet</h6>
			<p class="text-muted">Seen that canned piece of s?</p>
		  </div>
		  <span class="time text-muted small">13:21</span>
		</div>
		<hr>
		<div class="friend-drawer friend-drawer--onhover">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/termy.jpg" alt="">
		  <div class="text">
			<h6>Termy</h6>
			<p class="text-muted">Im studying spanish...</p>
		  </div>
		  <span class="time text-muted small">13:21</span>
		</div>
		<hr>
		<div class="friend-drawer friend-drawer--onhover">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/rick.jpg" alt="">
		  <div class="text">
			<h6>Richard</h6>
			<p class="text-muted">I'm not sure...</p>
		  </div>
		  <span class="time text-muted small">13:21</span>
		</div>
		<hr>
		<div class="friend-drawer friend-drawer--onhover">
		  <img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/rachel.jpeg" alt="">
		  <div class="text">
			<h6>XXXXX</h6>
			<p class="text-muted">Hi, wanna see something?</p>
		  </div>
		  <span class="time text-muted small">13:21</span>
		</div>
	  </div>
	  <div class="col-md-8">
		<div class="settings-tray">
			<div class="friend-drawer no-gutters friend-drawer--grey">
			<img class="profile-image" src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/robocop.jpg" alt="">
			<div class="text">
			  <h6>Robo Cop</h6>
			  <p class="text-muted">Layin' down the law since like before Christ...</p>
			</div>
			<span class="settings-tray--right">
			  <i class="material-icons">cached</i>
			  <i class="material-icons">message</i>
			  <i class="material-icons">menu</i>
			</span>
		  </div>
		</div>
		<div class="chat-panel">
		  <div class="row no-gutters">
			<div class="col-md-3">
			  <div class="chat-bubble chat-bubble--left">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row no-gutters">
			<div class="col-md-3 offset-md-9">
			  <div class="chat-bubble chat-bubble--right">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row no-gutters">
			<div class="col-md-3 offset-md-9">
			  <div class="chat-bubble chat-bubble--right">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row no-gutters">
			<div class="col-md-3">
			  <div class="chat-bubble chat-bubble--left">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row no-gutters">
			<div class="col-md-3">
			  <div class="chat-bubble chat-bubble--left">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row no-gutters">
			<div class="col-md-3">
			  <div class="chat-bubble chat-bubble--left">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row no-gutters">
			<div class="col-md-3 offset-md-9">
			  <div class="chat-bubble chat-bubble--right">
				Hello dude!
			  </div>
			</div>
		  </div>
		  <div class="row">
			<div class="col-12">
			  <div class="chat-box-tray">
				<i class="material-icons">sentiment_very_satisfied</i>
				<input type="text" placeholder="Type your message here...">
				<i class="material-icons">mic</i>
				<i class="material-icons">send</i>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
          
</body>
</html>