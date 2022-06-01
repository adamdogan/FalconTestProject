/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class MapDemo {
    // return monthName from month Name 
    // example : 2 monthName is february 
    public static string  retvieveMonth(integer m) {
        string monthName='';
        map<integer, string> monthMap = new map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');
        monthMap.put(10, 'Octpber');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        // if the user type wrong number like 99 for m we have to enter boolena 
        
        if(monthMap.containsKey(m)){
            monthName= monthMap.get(m);
        } else {
            monthName= ' no cuch month exists. Please type the right number';
        }
       
        return monthName;

    }
}
