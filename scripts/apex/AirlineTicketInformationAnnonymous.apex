AirlineTicketInformations ati = new AirlineTicketInformations ();
ati.deperartureCities = 'New York';
ati.arrivialCities = 'Izmir';
ati.fligtNumber ='TK567';
ati.seatAssignment= '1A';
ati.printTicket();
system.debug('Ticket 1 Details: ' + ati );

AirlineTicketInformations ati2 = new AirlineTicketInformations ();
ati2.deperartureCities = 'boston';
ati2.arrivialCities = 'istanbul';
ati2.fligtNumber ='TK566';
ati2.seatAssignment= '22A';
ati2.printTicket();
system.debug('Ticket 2 Details: ' + ati2 );