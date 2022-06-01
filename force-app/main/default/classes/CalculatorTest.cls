/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class Cal culatorTest {
    @isTest
    private static void testMessage(){
        Calculator.welcomeMessage();
        Calculator.printNewMessage('message m test class ');
    }   
    @isTest
    private static void addTest() {
        integer i =10;
        integer j= 15; 
        integer caLCADD = Calculator.add(i,j);
      System.assertEquals(25,caLCADD);
    }  
@isTest
private static void addTest2(){
    integer calcAdd = Calculator.add(10,15,200);
    System.assertEquals(225,calcAdd);
    
}
@isTest
private static void addTest3(){
   List<integer> listInt = new List<integer> {15,15,15}; 
   integer calcAdd = Calculator.add(listInt);
   System.assertEquals(45, calcAdd);    
}
}