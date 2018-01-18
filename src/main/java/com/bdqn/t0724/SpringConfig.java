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
@ComponentScan(basePackages = {"com.bdqn.t0724.service"})
@PropertySource("classpath:/db.properties")
@Import(ShiroConfig.class)
@EnableTransactionManagement
public class SpringConfig {
    @Value("${p2p.className}")
    private String className;
    @Value("${p2p.url}")
    private String url;
    @Value("${p2p.username}")
    private String username;
    @Value("${p2p.password}")
    private String password;

//    @Profile("development")
//    @Bean
//    public DataSource dataSource() {
//        BasicDataSource dataSource = new BasicDataSource();
//        // 设置jdbc driver的主类
//        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//        dataSource.setUrl("jdbc:mysql:///t0724");
//        dataSource.setUsername("root");
//        dataSource.setPassword("123456");
//        return dataSource;
//    }

//    @Profile("development")
    @Bean
    public DataSource druidDataSource(){
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setDriverClassName("com.mysql.jdbc.Driver");
        druidDataSource.setUrl("jdbc:mysql:///t0724");
        druidDataSource.setUsername("root");
        druidDataSource.setPassword("123456");
        return druidDataSource;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory(ApplicationContext context) throws Exception {
        SqlSessionFactoryBean ssfBean = new SqlSessionFactoryBean();
        ssfBean.setDataSource(druidDataSource());
        ssfBean.setMapperLocations(context.getResources("classpath*:*-mapper.xml"));
        return ssfBean.getObject();
    }

    @Bean
    public DataSourceTransactionManager dataSourceTransactionManager(){
        DataSourceTransactionManager manager = new DataSourceTransactionManager();
        manager.setDataSource(druidDataSource());
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
