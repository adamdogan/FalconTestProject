public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
// assagidaki method non static but bunun icinde ki CompanyName ststic boylelikle static varibale a non-static method icinde ulasabiliriz
    public void printCandidate() {
        System.debug('Candidate name is ' + Name + '('+ gender+') ');
        System.debug('Compnay name is ' + CompanyName); // static variable in non-static method ----> allowed 


    }
    public static void printCandidateInfoSt() {
        System.debug('company name is ' + CompanyName);
       // System.debug('name= ' + Name);non static variable is not allow in the static method.
        
    }
}
