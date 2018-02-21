package com.quanwc.blog.service;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

@Service
public class SpringContext implements ApplicationContextAware {

    private static ApplicationContext applicationContext;

    public static <T> T getBean(Class<T> _class) {
        return _class.cast(applicationContext.getBean(_class));
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
    
    /**
	 * 获取对象
	 */
	public static Object getBean(String name) throws BeansException {
		return applicationContext.getBean(name);
	}
}


