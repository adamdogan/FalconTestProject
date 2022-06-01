RankHandler rh = new RankHandler();
String won = rh.rankPrize(2);
system.debug(won);
String won2 = rh.rankPrize(6);
system.debug(won2);
string won3= rh.rankPrize(12);
system.debug(won3);

RankHandler r = new RankHandler();
system.debug(r.rankPrizeSwitch(1));
system.debug(r.rankPrizeSwitch(10));
system.debug(r.rankPrizeSwitch(100));