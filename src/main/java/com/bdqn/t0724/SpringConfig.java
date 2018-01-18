package com.bdqn.t0724;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.*;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackages = {"com.bdqn.t0724.service"})
@PropertySource("classpath:/db.properties")
@EnableTransactionManagement

public class SpringConfig {
    @Value("${hello.className}")
    private String className;
    @Value("${hello.url}")
    private String url;
    @Value("${hello.username}")
    private String username;
    @Value("${hello.password}")
    private String password;

    @Profile("development")
    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        // 设置jdbc driver的主类
        dataSource.setDriverClassName(className);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);

        return dataSource;
    }

    @Profile("production")
    @Bean
    public  DataSource druidDataSource(){
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setDriverClassName(className);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        return dataSource;
    }
//配置mybatis的sql会话工厂，同时也是启动mybatis的地方
    //具体启动工作有mybatis spring插件中的sqlsessionfactorybean 完成
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource , ApplicationContext context) throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(dataSource);
        //classpath*:可以让我找到所有classpath中的文件，classpath：能力差些
        //这个区别可以导致某些代码在正常情况下可以运行，但是在测试中不行。
        bean.setMapperLocations(context.getResources("classpath*:*-mapper.xml"));
        return bean.getObject();
    }
//配置spring的事务管理器（基于数据源的事务管理器）
    @Bean
    public DataSourceTransactionManager transactionManager(DataSource dataSource){
        DataSourceTransactionManager tx = new DataSourceTransactionManager();
        tx.setDataSource(dataSource);
        return tx;
    }
    @Bean
    public static MapperScannerConfigurer mapperScannerConfigurer() {
        MapperScannerConfigurer configurer = new MapperScannerConfigurer();
        configurer.setSqlSessionFactoryBeanName("sqlSessionFactory");
        configurer.setBasePackage("com.bdqn.t0724.mapper");
        return configurer;

    }

    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setMaxUploadSize((1 << 20)*5);//5M
        return resolver;
    }

}
