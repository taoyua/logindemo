package com.example.logindemo.config;


import com.example.logindemo.service.LoginDetailsService;
import com.example.logindemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    MySecritySuccessHandler mySecritySuccessHandler;

    @Autowired
    MySecrityFailureHandler mySecrityFailureHandler;

    @Autowired
    LoginDetailsService userDetailsService;

    @Autowired
    MySecrityLogoutHandler mySecrityLogoutHandler;

    @Autowired
    UserService userService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .headers().frameOptions().disable()
                .and().formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/form")
                .successHandler(mySecritySuccessHandler)
                .failureHandler(mySecrityFailureHandler)
                .and().authorizeRequests()
//                .antMatchers( "**/static/**","**/templates/**","/login","**/*.js")
                .antMatchers( "/**")
                .permitAll()
                .anyRequest().authenticated();


        /**
         * 退出处理，logoutSuccessurl退出成功跳转登录
         */
        http.logout().logoutUrl("/signout").deleteCookies("JSESSIONID")//清除cookies
                .logoutSuccessHandler(mySecrityLogoutHandler);
//                .logoutSuccessUrl("/login").invalidateHttpSession(true);

    }

    /**
     * 忽略静态资源访问控制
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        //解决静态资源被拦截的问题
//        web.ignoring().antMatchers("/css/**","/api/**","/images/**","/page/**",
//                "/lib/**","/layui/**","/js/**","/*.js","**/*.js","/*.css","/*.png");
        web.ignoring().antMatchers("/**");
    }


    /**
     * 登录逻辑实现,获取数据库账号密码
     */

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
                .passwordEncoder(new BCryptPasswordEncoder());
    }

    /**
     * 内存处理用户名及密码
     */
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth)throws Exception{
//        auth.inMemoryAuthentication()
//                .passwordEncoder(new BCryptPasswordEncoder())
//                .withUser("admin")
//                .password(new BCryptPasswordEncoder().encode("123456"))
//                .roles("USER");
//    }

//   密码加密
    //    public static void main(String[] args) {
//        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//        boolean matches = bCryptPasswordEncoder.matches( "123456","$2a$10$.y6yRGGU6uXyrq0Ftmdb9.WSZTZPZJmnoisz0IxaiRqvjPKUcywjq");
//        System.out.println(matches);
//        System.out.println(new BCryptPasswordEncoder().encode("123456"));

}

