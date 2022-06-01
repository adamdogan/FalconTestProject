Candidates.CompanyName = 'softinnovas';// set the value 
Candidates c1 =new Candidates();
c1.Name= 'jerry';
c1.Gender='male';
c1.printCandidate();
Candidates c2 = new Candidates();
c2.Name = 'Adam';
c2.Gender= 'male';
c2.printCandidate();

// npw we are going to change to static variable name 

Candidates.CompanyName='softinnovas inc ';
c1.printCandidate();
c2.printCandidate();

Candidates.CompanyName='softinnovas inc ';
Candidates.printCandidateInfoSt();


