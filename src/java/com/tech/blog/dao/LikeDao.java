/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;
import java.sql.*;
/**
 *
 * @author PRAKASH
 */
public class LikeDao {
    Connection con;
    public LikeDao(Connection con)
    {
        this.con=con;
        
    }
   
    
    
    public boolean insertLike(int pid, int uid)
    {
    boolean f=false;
     try{
       String q="insert into liked(pid,uid) values(?,?)";
       PreparedStatement p=this.con.prepareStatement(q);
       //value set
       p.setInt(1,pid);
       p.setInt(2,uid);
        
       p.executeUpdate();
       f=true;
         
     }catch(Exception e)
     {
      e.printStackTrace();
     
     }
     
    return f;
    }
  
    
    public int countLikeOnPost(int pid)
    {
    
    int count=0;
     String q="Select count(*) from liked where pid=?";
      try{
      
        PreparedStatement p=this.con.prepareStatement(q);
        p.setInt(1, pid);
        
        p.executeQuery();
        ResultSet set=p.executeQuery();
        if(set.next())
        {
        count=set.getInt("count(*)");
        }
        
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    return count;
    }
    
    public boolean isLikeByUser(int pid, int uid)
    {
    boolean f=false;
    try{
       String q="SELECT * FROM liked where pid=? and uid=?";
       PreparedStatement p=this.con.prepareStatement(q);
       p.setInt(1, pid);
       p.setInt(2, uid);
       p.executeQuery();
       ResultSet set=p.executeQuery();
       
       if(set.next())
           
       {
        f=true;
       }
        
       
    }catch(Exception e){
    e.printStackTrace();
    
    }
    
    return f;
    }
    
    public boolean deleteLike( int pid, int uid)
    {
    boolean f=false;
    
    
    try{
      String q="Delete from liked where pid=? and uid=?";
      PreparedStatement p=this.con.prepareStatement(q);
      p.setInt(1, pid);
      p.setInt(2, uid);
      p.executeUpdate();
      f=true;
      
    }catch(Exception e)
    {
      e.printStackTrace();
    }
    
    return f;
    
    
    }
}
