package com.aspectj.demo.test;

public class TestCfow {

	   
    public void foo(){  
        System.out.println("foo......");  
    }  
      
    public void bar(){  
        foo();  
        System.out.println("bar.........");  
    }  
       
    public void testMethod(){  
        bar();  
        foo();  
    } 
    
    
	public static void main(String[] args){  
	  	TestCfow testcas1 = new TestCfow();
	  	testcas1.testMethod();
	}
    
}
