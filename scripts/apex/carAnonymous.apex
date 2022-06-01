// created new object 
Car1 bm = new Car1();
bm.carColor = 'black';
system.debug('car color '+ bm.carColor);
bm.switchOn();
system.debug(' car object 1 = '+ bm);
Car1 lm = new Car1 ();
lm.carColor= 'red';
system.debug('car color: ' + lm.carColor);
lm.switchOn();
system.debug('car obj2 ' + lm);
Car1 vw = new Car1();
vw.carColor= 'white';
vw.carName='polo';
vw.switchOn();
vw.driveAtMaxSpeed();
system.debug('vw = ' + vw.carColor );
Car1.allCars();

