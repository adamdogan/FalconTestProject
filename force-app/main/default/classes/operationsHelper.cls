public class OperationsHelper {
    public Decimal largestOutOfTwoNumbers(Decimal d1, Decimal d2){
        Decimal largestDecimal;
        if (d1>d2) {
            largestDecimal=d1;  
        } else {
            largestDecimal=d2;
        }
        return largestDecimal;
    }
    public Decimal smallestOutOfThreeNumbers(Decimal d3, Decimal d4, Decimal d5){
        Decimal smallestNumber;
        if (d3<d4 && d3<d5) {
            smallestNumber= d3;
        }
        else if (d4<d3 && d4<d5) {
            smallestNumber=d4;
        }
        else {
            smallestNumber=d5;
        }
        return smallestNumber;
    }
}