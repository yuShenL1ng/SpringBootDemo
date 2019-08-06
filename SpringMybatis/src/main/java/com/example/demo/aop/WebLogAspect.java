package com.example.demo.aop;

import java.lang.reflect.Method;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.jboss.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.alibaba.fastjson.JSON;
import com.example.demo.dao.OperationalLogDao;
import com.example.demo.model.OperationalLog;
import com.example.demo.model.Userinfo;

/*
 * AOP日志管理
 */
@Aspect
@Component
public class WebLogAspect {

    private Logger logger = Logger.getLogger(getClass());
    @Autowired
    private OperationalLogDao operationalLogDao;

    @Pointcut("execution(public * com.example.demo.controller..*.*(..))")
    public void webLog(){}
    //注册时 不进行切面拦截    
    @Pointcut("@annotation(com.example.demo.aop.MysqlOperation)")
    public void sqlOperation(){}

    @Before("webLog()")
    public void doBefore(JoinPoint joinPoint) throws Throwable {
        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 记录下请求内容
        logger.info("URL : " + request.getRequestURL().toString());
        logger.info("HTTP_METHOD : " + request.getMethod());
        logger.info("IP : " + request.getRemoteAddr());
        logger.info("CLASS_METHOD : " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
        logger.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));

    }

    @AfterReturning(returning = "ret", pointcut = "webLog()")
    public void doAfterReturning(Object ret) throws Throwable {
        // 处理完请求，返回内容
        logger.info("RESPONSE : " + ret);
    }
    
    //切面 配置通知
    @AfterReturning("sqlOperation()")
    public void saveSysLog(JoinPoint joinPoint) throws JSONException {
        System.out.println("切面。。。。。");
        //保存日志
        OperationalLog sysLog = new OperationalLog();

        //从切面织入点处通过反射机制获取织入点处的方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        //获取切入点所在的方法
        Method method = signature.getMethod();

        //获取操作
        MysqlOperation myLog = method.getAnnotation(MysqlOperation.class);
        if (myLog != null) {
            String value = myLog.value();
            sysLog.setOperation(value);//保存获取的操作
        }

        //获取请求的类名
        String className = joinPoint.getTarget().getClass().getName();
        //获取请求的方法名
        String methodName = method.getName();
        sysLog.setMethod(className + "." + methodName);

        //请求的参数
        Object[] args = joinPoint.getArgs();
        //将参数所在的数组转换成json
        String params = JSON.toJSONString(args);
        sysLog.setParams(params);
        //获取用户名
        HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        Userinfo user = (Userinfo)request.getSession().getAttribute("user");
        sysLog.setUsername(user.getUsername());
        //获取用户ip地址
        sysLog.setIp(request.getRemoteAddr());

        //调用service保存SysLog实体类到数据库
        operationalLogDao.addOperationalLog(sysLog);
    }

}
