public class DateTimeMethodsDemo1 {
    public void calculateAgeInMonths() {
        Date birthDate = Date.newInstance(1987,03,10);
        Date todayDate = Date.today();
        Integer ageInMonths = birthDate.monthsBetween(todayDate);
        System.debug('age in months ' + ageInMonths);
    }
    public void printSubscriptionEndDate(){
        Date subscriptionStartDate = date.today();
        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('subscription end date ' + subscriptionEndDate);

    }
    public void printOfferEndDateTime(){
        DateTime dtNow =  DateTime.now();
        DateTime dtOfferEnd = dtNow.addHours(51);
        System.debug('Offer will end on ' + dtOfferEnd);
    }
    }