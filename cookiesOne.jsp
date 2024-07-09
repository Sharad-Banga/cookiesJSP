<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
    h1 {
        background-color: #4CAF50;
        color: white;
        padding: 20px;
        text-align: center;
        margin: 0;
    }
    h3 {
        color: #333;
        margin-left: 20px;
    }
    ul {
        list-style-type: none;
        padding: 0;
    }
    li {
        background-color: #fff;
        margin: 10px 20px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    a {
        display: block;
        width: 200px;
        margin: 20px auto;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        text-align: center;
        text-decoration: none;
        border-radius: 5px;
    }
    a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

	<%
	
		//the default ... if there are no cookies 
		String favLang = "Java";
	
		//get the cookies from the browser
		Cookie[] theCookies = request.getCookies();
		
		//find our favourite language cookie
		if(theCookies != null){
			for (Cookie ele : theCookies){
				if("meriFvrt".equals(ele.getName())){
					favLang = ele.getValue();
					break;
				}
			}
		}
		
	%>
	

	<h1>Training Portal</h1>
	<h3>New Books for <%= favLang %></h3>
	
	
	<ul>
	<li>Mc Graw Hill</li>
	<li>Start with <%= favLang %></li>
	</ul>
	
	<h3>Latest News reports for <%= favLang %></h3>
	
	<ul>
	<li><%= favLang %> is booming </li>
	<li>learn <%= favLang %></li>
	</ul>
	
	<h3>Hot Job for <%= favLang %></h3>
	
	<ul>
	<li><%= favLang %> developer</li>
	<li><%= favLang %>  DSA </li>
	</ul>
	
	<a href="cookiesTwo.html">Personalize this website</a>

</body>
</html>