public class StringDemoClass {
    public void stringMethod1() {
string sessionDescription = 'Learning string method in apex langiage ';
integer lengthOfStr= sessionDescription.length();
        System.debug('lenght of string is = ' +lengthOfStr);
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);
        System.debug('original string= ' + sessionDescription);
        Decimal decValue = 27.01;
        System.debug('Decimal: ' + decValue);
        Long longValue = 1234567L;
        System.debug('long = ' + longValue);
        Id id1= '5008c00001EREujAAH';
        System.debug('Id = ' + id1);
        string sessionDescription1 = ' Learning string\'s mrthod inthe apex language. ';
        integer lengthOfStr1 = sessionDescription1.length();
        System.debug('the length of the description is = ' + lengthOfStr1);
        string upperCaseSessionDes = sessionDescription1.toUpperCase();
        System.debug( ' the upper case of the description is ' + upperCaseSessionDes);
        Boolean conDescription = sessionDescription1.contains('apex');
        System.debug('has apex? '+ conDescription);



    }
}
