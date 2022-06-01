public class Cat {
    // yeno bir class method olusturum liste olustiracaz 
    public static void allCats(){
        Cat falconsCat = new Cat ('fluffykins', 'white');
        Cat vitapsCat = new Cat ('simba', 'brown');
        Cat sumitsCat = new Cat ('smokey', 'gray');

        list<Cat> cats = new list<Cat>();
        cats.add(falconsCat);
        cats.add(vitapsCat);
        cats.add(sumitsCat);
        System.debug('all cats are ' + cats);

    }
    public string name;
    public string color;
    public Cat() {
        System.debug('constructor called. ');

    }
    public Cat (string n, string c){
        this.name=n;
        this.color=c;
        sleeping();
    }
    public void sleeping(){
        System.debug(name + ' is sleeping ');
    }
}
