<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!--Header section-->
<header id="header_wrapper">
  <div class="container">
    <div class="header_box">
      <div class="logo">
        <s:property value="user.name"/>&nbsp;
        <s:property value="user.surname"/>
      </div>
      <nav class="navbar navbar-inverse" role="navigation">
        <div class="navbar-header">
          <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div id="main-nav" class="collapse navbar-collapse navStyle">
          <ul class="nav navbar-nav" id="mainNav">
            <li class="active"><a href="#hero_section" class="scroll-link">Home</a></li>
            <li><a href="#aboutUs" class="scroll-link">About Me</a></li>
            <li><a href="#answers" class="scroll-link">Answers</a></li>
            <li><a href="#contact" class="scroll-link">Contact</a></li>
          </ul>
        </div>
      </nav>
    </div>
  </div>
</header>
<!--Header_section-->