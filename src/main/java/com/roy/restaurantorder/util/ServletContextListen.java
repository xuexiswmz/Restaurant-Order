package com.roy.restaurantorder.util;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.io.File;

/**
 * 监听器
 * @author Roy
 */
@WebListener
public class ServletContextListen implements ServletContextListener {
    public ServletContextListen() {
        //TODO
    }
    public void contextDestroyed(ServletContextEvent event) {
        //TODO
    }

    public void contextInitialized(ServletContextEvent event) {
        //调度器
        ServletContext servletContext = event.getServletContext();
        String filePath = servletContext.getRealPath("upload/food");
        System.out.println("filePath:" + filePath);
        File file = new File(filePath);

        if (!file.exists()) {
            file.mkdirs();
        }
    }
}
