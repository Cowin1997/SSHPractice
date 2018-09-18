package sql.test;

import java.sql.*;
public class SQLTest {
    public static void main(String []args){
        String user = "root";
        String password = "root";
        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
        String driver = "com.mysql.cj.jdbc.Driver";
        String tableName = "factorylogin";
        String sqlstr;
        Connection con = null;
        Statement state = null;
        ResultSet rs = null;

        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,password);
            state = con.createStatement();

            sqlstr = "select * from "+tableName;
            rs = state.executeQuery(sqlstr);

            ResultSetMetaData metaData = rs.getMetaData();

            int j = 0;
            j = metaData.getColumnCount();

            for(int k=0;k<j;k++){
                System.out.print(metaData.getColumnName(k+1));
                System.out.print("\t");
            }

            System.out.println();

            while(rs.next()){
                for(int i=0;i<j;i++){
                    System.out.print(rs.getString(i+1));
                    System.out.print("\t");
                }
                System.out.println();
            }


        }

        catch (ClassNotFoundException e1){
            System.out.println("数据库驱动不存在！");
            System.out.println(e1.toString());
        }

        catch (SQLException e2){
            System.out.println("数据库存在异常！");
            System.out.println(e2.toString());
        }
        finally {
            try{
                if(rs!=null)
                    rs.close();
                if(state!=null)
                    rs.close();
                if(con!=null)
                    rs.close();
            }
            catch (SQLException e){
                System.out.println(e.toString());
            }
        }












    }
}
