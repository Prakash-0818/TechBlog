<%-- 
    Document   : loadPost
    Created on : Jan 6, 2021, 4:01:33 PM
    Author     : PRAKASH
--%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<div class="row">
<%
  PostDao d=new PostDao(ConnectionProvider.getConnection());
  int cid=Integer.parseInt(request.getParameter("cid"));
  List<Post> posts=null;
  if(cid==0)
  {
    posts=d.getAllPosts();
  
  }else{
   posts=d.getPostByCatId(cid);
  
  }
  if(posts.size()==0)
  {
  out.println("<h3 class='display-3 text-center'>No Post Available in this Category</h3>");
  return;
  }
  
  for(Post p:posts)
  {
  %>
  <div class="col-md-6 mt-3">
      <div class="card">
          <div class="card-header bg-primary">
              <b><%=p.getpTitle()%></b>
          </div>
           <img class="card-img-top" src="blog_pics/<%=p.getpPic()%>" alt="Card image cap">
          <div class="card-body">
              <p><%=p.getpCode() %></p>
              
          </div>
          <div class="card-footer bg-dark">
              <%
              LikeDao ld=new LikeDao(ConnectionProvider.getConnection());
              %>
                    <a href="show_blog_page.jsp?post_id=<%=p.getpId() %>" class="btn btn-outline-primary btn-sm">Read more</a>
                    <a href="#" class="btn btn-outline-primary btn-sm"><i class="fa fa-thumbs-o-up"></i><span><%=ld.countLikeOnPost(p.getpId()) %></span></a>
                    <a href="#" class="btn btn-outline-primary btn-sm"><i class="fa fa-commenting-o"><span>20</span></i></a>
                </div>
          
      </div>
  </div>
  
  
  <%
  
  }

%>
</div>