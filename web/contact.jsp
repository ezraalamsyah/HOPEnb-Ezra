<%@page import="Controller.ContactDAO"%>
<jsp:useBean id="d" class="Model.Contact"></jsp:useBean>
<jsp:setProperty property="*" name="d"/>

<%
int i=ContactDAO.save(d);
if(i>0){
response.sendRedirect("contact-success.jsp");
}else{
response.sendRedirect("contact-failed.jsp");
}
%>