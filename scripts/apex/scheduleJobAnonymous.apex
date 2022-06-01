AccountSchedulable aSche = new AccountSchedulable();
String cron = '0 0 13 * * ?';
system.schedule('Schedule Account Job via cron', cron, aSche);