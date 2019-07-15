<%@page import="Controller.DonationDAO"%>
<jsp:useBean id="d" class="Model.Donation"></jsp:useBean>
<jsp:setProperty property="*" name="d"/>

<%
int i=DonationDAO.save(d);
if(i>0){
response.sendRedirect("donation-success.jsp");
}else{
response.sendRedirect("donation-failed.jsp");
}
%>