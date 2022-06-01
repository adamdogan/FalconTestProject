public class LoopDemo {
    public void print_int_while(){
        integer count = 0;
        while (count<=25) {
            System.debug(count);
            count++;
        }
    }
    public void print_N_numbers(integer n){
        for (integer i=0; i<n; i++) {
            System.debug(i);
        }
    }// burada integer i stringe ceviriyorux print 1 to N: 0,1,2,3,4,
    public void print_N_numbers_2(integer n){
        string s= '';
        for (Integer i = 0; i < n; i++) {
            s += string.valueOf(i) + ',';
        }
        System.debug('print 1 to N: ' + s);
    }
    // eger return olacaksa void olmaz data type 
    public integer print_sum_N_numbers(integer n){
        integer sum = 0;
        for (Integer i =0 ; i <= n; i++){
            //integer tempNumber = i;
            //1
            //sum=sum+tempNumber;
            // sum=0+1;=1;
            sum+= i;   
        }
        System.debug('summation is =' + sum);
        return sum;
    } 
    public void print_N_number3(integer startInt, integer endInt){
        // i=4 ...........5 <94 .........4++(5) 5++ (6)
        for (Integer i =startInt ; i <endInt ; i++) {
            integer modI = math.mod(i,2);
            if (modI==1)  System.debug(i);
        }
    }
    
  
}
 