<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%-- <%@ page isErrorPage="true" %> --%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>숫자 합 계산</title>
    </head>

    <body>
   
        <form>
            <input type="number" name="num" min="1" required>
            <button type="submit">계산</button>
            <%
String num = request.getParameter("num");
	if (num != null) {
		
		int sum = 0;
		int i = 0;
		for(i=1; i<= Integer.parseInt(num); i++) {
			sum += i;
		}
		out.println("<h1>1 ~ "+num+"까지의 합은 "+Integer.toString(sum)+"입니다. </h1>");
	}
%>

<%
// 현재 일시 구하기
SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
%>

현재 일시는 <%= date.format(new Date()) %>
        </form>
    </body>

    </html>