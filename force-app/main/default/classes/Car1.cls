public  class Car1 {
    public string carColor= '';
    public string carName = '';
    private integer maxSpeedKMperHour= 150;
    public void switchOn(){
        Datetime switchOnTime = Datetime.now();
        System.debug('starting the car');
    }
    public void drive(){
        System.debug('start this car ');
    }
    public void driveAtMaxSpeed(){
        String drivingDescription = 'driving'+ carName + 'at' + maxSpeedKMperHour + 'km/h';
        System.debug(drivingDescription);
    }
    // burada yine list yapmayi deniyoruz 
    public static void allCars(){
        Car1 lm = new Car1();
        lm.carColor='red';
        bm.carColor='gray';

        list<Car1> cars = new list<Car1>();
        cars.add(lm);
        cars.add(bm);
        System.debug(cars);

    }
    
}