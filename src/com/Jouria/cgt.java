package com.Jouria;      
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

 public class cgt {

    public static void main(String[] args) {
        //����Connection����
        Connection con;
        //����������
         String driver = "com.mysql.jdbc.Driver";
        //URLָ��Ҫ���ʵ����ݿ���mydata
         String url = "jdbc:mysql://localhost:3306/spoc";
         //MySQL����ʱ���û���
        String user = "root";
         //MySQL����ʱ������
         String password = "";
         //������ѯ�����
         try {
            //������������
             Class.forName(driver);
            //1.getConnection()����������MySQL���ݿ⣡��
            con = DriverManager.getConnection(url,user,password);
            if(!con.isClosed())
                 System.out.println("Succeeded connecting to the Database!");
            //2.����statement���������ִ��SQL��䣡��
            Statement statement = con.createStatement();
             //Ҫִ�е�SQL���
             String sql = "select * from user";
            //3.ResultSet�࣬������Ż�ȡ�Ľ��������
            ResultSet rs = statement.executeQuery(sql);
            System.out.println("-----------------");
            System.out.println("ִ�н��������ʾ:");  
            System.out.println("-----------------");  
            System.out.println("�û���" + "\t" + "����");  
            System.out.println("-----------------");              
            String job = null;
            String id = null;
            while(rs.next()){
                 //��ȡstuname��������
                job = rs.getString("username");
                 //��ȡstuid��������
                 id = rs.getString("passwd");
 
                //������
                 System.out.println(job + "\t" + id);
            }
             rs.close();
            con.close();
        } catch(ClassNotFoundException e) {   
            //���ݿ��������쳣����
             System.out.println("Sorry,can`t find the Driver!");   
            e.printStackTrace();   
             } catch(SQLException e) {
            //���ݿ�����ʧ���쳣����
             e.printStackTrace();  
            }catch (Exception e) {
            // TODO: handle exception
             e.printStackTrace();
         }finally{
            System.out.println("���ݿ����ݳɹ���ȡ����");
         }
     }
 
 }