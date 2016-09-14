package com.aspectj.demo.aspect;

public aspect CfowAspect {

    pointcut barPoint() :  execution(* bar(..));  
    pointcut fooPoint() : execution(* foo(..));  
    pointcut barCfow() : cflow(barPoint())&& !within(CfowAspect);//cflow的参数是一个pointcut  
    pointcut fooInBar() : barCfow() && fooPoint();  //获取bar流程内的foo方法调用  
      
      
    before() : fooInBar(){  
        System.out.println("Enter1 Edit:" + thisJoinPoint);  
    }  
    
}
