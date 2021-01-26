package com.tech.blog.dao;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import com.tech.blog.helper.ConnectionProvider;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {

        ArrayList<Category> list = new ArrayList<>();
        try {
            String q = "Select * from categories";
            Statement st = con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {

                int cid = set.getInt("cid");
                String name = set.getString("name");
                String description = set.getString("description");

                Category c = new Category(cid, name, description);
                list.add(c);

            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return list;
    }

    public boolean savePost(Post p) {
        boolean f = false;
        try {
            String q = "insert into posts(pTitle, pContent, pCode, pPic, catId, userId, userName) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatId());
            pstmt.setInt(6, p.getUserId());
            pstmt.setString(7, p.getUserName());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    //get all the post
    public List<Post> getAllPosts() {
        List<Post> list = new ArrayList<>();
        //fetch all the post

        try {
            PreparedStatement p = con.prepareStatement("SELECT * FROM posts order by pId desc");

            ResultSet set = p.executeQuery();

            while (set.next()) {
                int pId = set.getInt("pId");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp pDate = set.getTimestamp("pDate");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                String userName = set.getString("userName");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId, userName);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Post> getPostByCatId(int catId) {
        List<Post> list = new ArrayList<>();
        //fetch all PostByCatId

        try {
            PreparedStatement p = con.prepareStatement("SELECT * FROM posts where catId=?");
            p.setInt(1, catId);
            ResultSet set = p.executeQuery();

            while (set.next()) {
                int pId = set.getInt("pId");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp pDate = set.getTimestamp("pDate");

                int userId = set.getInt("userId");
                String userName = set.getString("userName");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId, userName);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public Post getPostByPostId(int postId) {
        Post post = null;

        String q = "select * from posts where pId=?";
        try {
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, postId);
            
            ResultSet set=p.executeQuery();
            
            if(set.next())
            {
            int pId = set.getInt("pId");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp pDate = set.getTimestamp("pDate");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                String userName = set.getString("userName");

                post= new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId, userName);
           
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return post;
    }
}
