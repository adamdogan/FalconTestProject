public class Students {
    public String firstName = '';
    public String lastName = '';
    public String classYear = '';
    public String major = '';
    
    public String generateReport(){
        system.debug('Report generated for ' + firstName + ' '+ lastName + 'of'+ classYear);

        return major;

    }

}
