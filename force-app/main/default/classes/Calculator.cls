/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Calculator {
    public static void welcomeMessage() {
        System.debug( 'welcome to apex calc.');
        
    }
    public static void printNewMessage(string msg) {
        System.debug(msg);
    }
    public static void printNewMessage2 (string msg, Date dt){
        System.debug(msg);
        System.debug(dt);

    }
    public static integer add(integer a, integer b){
        integer sum = a+b;
        return sum;
    }
    // add method with three params 
    public static integer add (integer int1, integer int2, integer int3){
        return int1 + int2+ int3;

    }
    public static integer add (list<integer> intList){
        // pasam buarada iskeleti hazirlarken 
        //integer returnInt = 0 ;

        // return returnInt; arasini dolduracaz iskele bu unutma 

        integer sum = 0 ;
        // 10,15,20 bu eachInt demek 
        // sum = sum + 10;
        // sum= sum + 15;
        // sum= sum + 20;
        // yukaridakinin yerine loop kullanaca 

        for (integer eachInt : intList) {
            System.debug(' each integer '+ eachInt);
            sum += eachInt;// demek sum=sum+10, sum= 
        }
        return sum ;
    }
    }
