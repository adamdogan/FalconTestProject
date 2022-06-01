/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class OpportunityTriggerHandler {
    public static void printOfOpportunity(list<opportunity> oppTriggerNew) {
        integer totalOpp = oppTriggerNew.size();
        System.debug('Total of the opportunity is ' + totalOpp);
        for (opportunity eachOpp :oppTriggerNew ) {
            System.debug('Opportunity name is ' + eachOpp.Name + 'Opportunity closed date is ' + eachOpp.CloseDate + 'Opportuity account is ' + eachOpp.Amount);
            
        }
    }
    public static void  updatedOpp(map<id,opportunity> oppTriggerNew, map<id, Opportunity> oppTriggerOld ){
        set<id> setOppIds = oppTriggerNew.keySet();
        for(id eachOppId: setOppIds){
          Opportunity oppNew = oppTriggerNew.get(eachOppId);
          decimal oppAmountNew = oppNew.Amount;
          Date clsDateNew = oppNew.CloseDate;
          Opportunity oppOld = oppTriggerOld.get(eachOppId);
          Decimal oppAmountOld = oppOld.Amount;
          Date clsDateOld = oppOld.CloseDate;
          System.debug('New Amount ' +  oppAmountNew + 'Old Amount ' + oppAmountOld);
          System.debug('New close Date ' + clsDateNew + 'Old close Date  '+ clsDateOld);
           
        }
    }
    public static void printDescName(Map<Id,Opportunity> mapOppNew, Map<Id, Opportunity> mapOppOld){
        Set<Id> setNewOld = mapOppNew.keySet();
        for (Id oppEachId : setNewOld) {
            Opportunity oppNew = new Opportunity();
            oppNew = mapOppNew.get(oppEachId);
            String oppStageNameNew = oppNew.stagename;
            String oppDescriptionNew = oppNew.description;
            String oppNameNew = oppNew.name;
            Opportunity oppOld = new Opportunity();
            oppOld = mapOppOld.get(oppEachId);
            String oppStageNameOld = oppOld.stagename;
                if (oppStageNameOld != oppStageNameNew) {
                    System.debug('Description; '+ oppDescriptionNew);
                    System.debug('Name; '+oppNameNew);
                }
            }
     }                                
}








/*
When an opportunity is created show a debug message ([OpportunityName] – [CloseDate] – [Amount]) for each opportunity and print the total number of opportunities created in the transaction. For example: Demo Opportunity – 20/10/2022 – 40000.
2. Print the Old and New Amount field values in one line. Old and New Close Date field values in another line for opportunity when opportunities are updated.
3. When the StageName of an opportunity is updated, then print the value of description field and opportunity name.
*/