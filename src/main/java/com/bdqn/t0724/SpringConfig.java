package com.bdqn.t0724;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.*;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackages = {"com.bdqn.t0724"})
//@PropertySource("classpath:/db.properties")
@Import(ShiroConfig.class)
@EnableTransactionManagement
public class SpringConfig {




    @Profile("development")
    @Bean
    public DataSource dataSource() {
        DruidDataSource dataSource = new DruidDataSource();
        // 设置jdbc driver的主类
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql:///p2p_loan");
        dataSource.setUsername("root");
        dataSource.setPassword("123456");
        return dataSource;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory(ApplicationContext context) throws Exception {
        SqlSessionFactoryBean ssfBean = new SqlSessionFactoryBean();
        ssfBean.setDataSource(dataSource());
        ssfBean.setMapperLocations(context.getResources("classpath:/com/bdqn/t0724/*Mapper.xml"));
        return ssfBean.getObject();
    }

    @Bean
    public DataSourceTransactionManager dataSourceTransactionManager(){
        DataSourceTransactionManager manager = new DataSourceTransactionManager();
        manager.setDataSource(dataSource());
        return manager;
    }

    @Bean
    public MapperScannerConfigurer mapperScannerConfigurer(){
        MapperScannerConfigurer configurer = new MapperScannerConfigurer();
        configurer.setSqlSessionFactoryBeanName("sqlSessionFactory");
        configurer.setBasePackage("com.bdqn.t0724.mapper");
        return configurer;
    }
}
