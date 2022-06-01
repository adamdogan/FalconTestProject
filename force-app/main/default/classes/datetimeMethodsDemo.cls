public class datetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date birthDate = date.newInstance(1987,03,10);
        date todayDate = date.today();
        integer ageInMonths = birthDate.monthsBetween(todayDate);

    }
}
