<%@page import="java.sql.*"%>
<%
class Cart{
   String MiniSofaSet;
   double 17094;

}

  String MiniSofaSet=req.getParameter("n");
  String cost=req.getParameter("c");

  HttpSession s=req.getSession();

  List<Cart> list= (List<Cart>) s.getAttribute("list");

  if(list==null){
    list =new ArrayList<>();
  }
  list.add(new Cart(MiniSofaSet, 17094));

  s.setAttribute("list",list);

To display the List value, you need to iterate the List

 for(Cart cart : list){
   out.println("Mini Sofa Set "+ cart.getName());
   out.println("17094 "+ cart.getCost());
 }
%>