List<account> accs = [select id , name from account]; 
AccountsQueueableExample qa = new AccountsQueueableExample(accs);
id jobid = system.enqueueJob(qa);
System.debug('job id is ' + jobid);