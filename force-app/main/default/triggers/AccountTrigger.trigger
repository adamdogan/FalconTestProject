/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-13-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
// /**
//  * @description       : 
//  * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
//  * @group             : 
//  * @last modified on  : 05-10-2022
//  * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
// **

/*trigger AccountTrigger on Account (before insert) {
    System.debug('before insert account trigger fired ');

}
*/


// simdi deneyecegumiz code hepsi beraber olacak 
 /*trigger AccountTrigger on account (before insert, before update){
     System.debug('before update trigger called.');
     System.debug('before update trigger called.');
    if (trigger.isInsert) {
        System.debug('before insert trigger called ');
    }
         if (trigger.isUpdate) {
            System.debug('before update trigger called ');        
         }        
    
 }
*/

/*
 trigger AccountTrigger on account (before insert, before update, after insert, after update){
if (trigger.isBefore && trigger.isInsert) {
     System.debug('before insert trigger fired');
 }
 if (trigger.isInsert && trigger.isAfter) {
     System.debug('after insert trigger fired');
    
}
 if (trigger.isBefore && trigger.isUpdate) {
     System.debug('before update trigger fired');
 }
 if (trigger.isAfter && trigger.isUpdate) {
     System.debug('before Update trigger fired');
 }
*/

trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        map<id, account> newAccountMap = trigger.newmap;
        map<id, account> oldAccountMap = trigger.oldmap;
        for(account eachAcc: trigger.new){
            boolean updateDesc = false;
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(trigger.isUpdate){
                Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
/*
    if (trigger.isBefore) {
        System.debug('before insert/ update trigger on account object ');
        Map<id, Account> newAccountMap = trigger.newMap;
        Map<Id, Account> oldAccountMap = trigger.oldMap;
        for (account eachAcc: trigger.new) {
            if (trigger.isInsert && eachAcc.Active__c=='yes') {
                //just set the field value 
                eachAcc.description='account is now active. Enjoy';
            }
            if (trigger.isUpdate) {
                account oldAccount =oldAccountMap.get(eachAcc.Id);
                string oldAccountActive = oldAccount.active__c;
                 // check if active is updated 
                // active is changed to 'yes'
                if (eachAcc.active__c=='yes' &&
               oldAccountActive != 'yes' )
               {
                  eachAcc.description = 'account is now active. enjoy ';  
                }
                
            }
        }
    }  
}  
*/
    
    
    
    //6
    /*
     if (trigger.isAfter && trigger.isUpdate) {
         System.debug('after update the trigger of account ');
       integer countWSUpdate=0;
         Map<id, account> oldAccMap =trigger.oldMap;
        
        for (id eachAccId : trigger.newMap.keyset()) {
            string oldWS = trigger.oldMap.get(eachAccId).Website;
             account newAcc= trigger.newMap.get(eachAccId);
            if (oldWS != newAcc.website) {
                 System.debug('for account ' + newAcc.name + ', new website is ' + newAcc.Website);
                countWSUpdate++;   
             }     
         }
        System.debug('# of accounts website updated  ' + countWSUpdate);
      }
*/


//5
/*
    // question is print old and new account .Nme for all the Updated account in After Update 
// we now we are going to update the account 
        (trigger.isAfter && trigger.isUpdate) {
        System.debug('after update trigger of account opject .');
        Map<Id, Account> accNewMap = trigger.newMap;
         Map<Id, account> accOldMap = trigger.oldMap;
        // for loop on set<id> --> keyset() for a map
         for (id eachId :accNewMap.keyset()) {
         System.debug('acc id' + eachId);

         account newAcc = accNewMap.get(eachId);
         System.debug('new acc name  ' + newAcc.name);

         account oldAcc =accOldMap.get(eachId);
         System.debug('old acc name ' + oldAcc.name);
    }   
     }
     */




//4
/*
     if(trigger.isBefore && trigger.isUpdate){
    system.debug('trigger.new before update = ' + trigger.new);
     list<account> newAccounts = trigger.new;
      for (account acc :  newAccounts) {
        system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    }
  }
*/


//3
/*
 if (trigger.isAfter && trigger.isUpdate) {
     //trigger.new -> record(s) which were responsible for firing the trigger
    system.debug('trigger.new after update = ' + trigger.new);
     for (account acc :  trigger.new) {
         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
     }
  } 
*/



//2
/*
  //simdide old date gitmek istoyoruz daha once new data olusturmustuk 
        if (trigger.isBefore && trigger.isInsert) {
          System.debug('trigger.old before the insert ' + trigger.old);   
      }
      if (trigger.isInsert && trigger.isAfter ) {
          System.debug('trigger.old after insert=' + trigger.old);  
          } 
          if (trigger.isBefore && trigger.isUpdate) {
            System.debug('trigger.org before update ' + trigger.old);  
          } 
          if (trigger.isAfter && trigger.isUpdate) {
             System.debug('trigger.old after update is '+ trigger.old);  
    } 
}
  */

//1
/*
    if (trigger.isAfter) {
       if (trigger.isInsert) {
            List<account> oldAccount = trigger.old;
            List<account> newAccount = trigger.new;
            for (account oldAcc : trigger.old) {
                System.debug('old acx.id = ' + oldAcc.id  + 'old acc name ' + oldAcc.name);   
            }  
           for (account newAcc : trigger.new) {
                System.debug('new acc id ' + newAcc.id + 'new acc name ' + newAcc.name);  
           }  
      }      
 }
*/}
}
