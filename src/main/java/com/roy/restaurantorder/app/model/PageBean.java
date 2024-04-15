package com.roy.restaurantorder.app.model;

import java.io.Serializable;
import java.util.List;

public class PageBean<E> implements Serializable {
    private List<E> list; // 某对象(比如说商城商品)当前页的数据
    private Integer currPage; // 当前所在的页数,如第 1 页,第 2 页
    private Integer pageSize; // 每页所包含的商品的数量
    @SuppressWarnings("unused")
    private Integer totalPage; // 总页数
    private Integer totalCount; // 总商品数

    public PageBean(List<E> list, Integer currPage, Integer pageSize, Integer totalPage, Integer totalCount) {
        this.list = list;
        this.currPage = currPage;
        this.pageSize = pageSize;
        this.totalPage = totalPage;
        this.totalCount = totalCount;
    }

    public PageBean() {
        super();
    }

    public List<E> getList() {
        return list;
    }

    public void setList(List<E> list) {
        this.list = list;
    }

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }
}
