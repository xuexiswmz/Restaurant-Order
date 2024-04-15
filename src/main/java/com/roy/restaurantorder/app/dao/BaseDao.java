package com.roy.restaurantorder.app.dao;

import com.roy.restaurantorder.util.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class BaseDao<T> {

    /**
     * 查询单个对象
     *
     * @param sql
     * @param <T>
     * @param clazz
     * @param params
     *  当没有参数时, 设定为null
     *
     *  @return
     */
    public <T> T get(String sql, Class<T> clazz, Object[] params) {
        T obj = null;
        Connection con = null;
        try {
            con = JDBCUtils.getConnection();
            obj = new QueryRunner().query(con, sql, new BeanHandler<T>(clazz), params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
    }

    /**
     * 查询单个对象 带有事务
     *
     * @param sql
     * @param <T>
     * @param clazz
     * @param params
     *  当没有参数时, 设定为null
     *
     *  @return
     */
    public <T> T get(Connection con, String sql, Class<T> clazz, Object[] params) {
        T obj = null;
        try {
            obj = new QueryRunner().query(con, sql, new BeanHandler<T>(clazz), params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
    }

    /**
     *
     * @param sql
     * @param clazz
     * @param params
     * @return
     * @param <T>
     */
    public <T> List<T> query(String sql, Class<T> clazz, Object[] params) {
        List<T> beans = null;
        Connection con = null;
        try {
            con = JDBCUtils.getConnection();
            beans = new QueryRunner().query(con, sql, new BeanListHandler<T>(clazz), params);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(con, null, null);
        }
        return beans;
    }

    /**
     * 返回增删改是否成功
     * @param sql
     * @param params
     * @return
     */
    public boolean update(String sql,Object[] params) {
        Connection con = null;
        //定义一个返回值
        boolean flag = false;
        try {
            con = JDBCUtils.getConnection();
            QueryRunner qRunner = new QueryRunner();
            int i = qRunner.update(con,sql, params);
            if(i>0) {
                flag = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 返回增删改是否成功 带事务
     * @param sql
     * @param params
     * @return
     */
    public boolean update(Connection con, String sql,Object[] params) {
        //定义一个返回值
        boolean flag = false;
        try {
            QueryRunner qRunner = new QueryRunner();
            int i = qRunner.update(con,sql, params);
            if(i>0) {
                flag = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 返回批量操作的，需要用到事物
     * @param con
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     *
     */
    public boolean batchUpdate(Connection con,String
            sql,Object[][] params) throws SQLException {
        QueryRunner qRunner = new QueryRunner();
        //事务处理我们需要手动去获取 con 对象，那么在这里就不需要去获取 con对象了 直接使用参数中的 con 对象
        int result = 0; //用来接收操作结果的
        boolean flag = false;
        result = qRunner.batch(con, sql, params).length;
        if (result > 0) {
            flag = true;
        }
        return flag;
    }

    /**
     * 返回统计单值的
     * @param sql
     * @param params
     * @return
     */
    public long getCount(String sql,Object[] params) {
        long count = 0L;
        Connection con = null;
        try {
            con = JDBCUtils.getConnection();
            QueryRunner qRunner = new QueryRunner();
            count = qRunner.query(con, sql,new
                    ScalarHandler<>(),params);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;
    }
    /**
     * 返回主键的，通常是执行 insert 语句时 返回当前的主键
     * @param sql
     * @param params
     * @return
     */
    public Object getCurrentKey(String sql,Object[] params) {
        Connection con = null;
        Object key = 0;
        try {
            con = JDBCUtils.getConnection();
            QueryRunner qRunner = new QueryRunner();
            key = qRunner.insert(con, sql, new
                    ScalarHandler<>(1), params);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return key;
    }

    /**
     * 返回主键的，通常是执行 insert 语句时 返回当前的主键 带有事务的
     * @param sql
     * @param params
     * @return
     * @throws SQLException
     */
    public Object getCurrentKey(Connection con,String
            sql,Object[] params) throws SQLException {
        Object key = 0;
        QueryRunner qRunner = new QueryRunner();
        key = qRunner.insert(con, sql,new ScalarHandler(1),params);
        return key;
    }
}

