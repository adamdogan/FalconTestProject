public with sharing class AccountsQueueableExample implements Queueable{
    // we are going to use the constructor becuase of the pass Sobject list 
    public List<account> listAccount;// constructor is acclits
    public AccountsQueueableExample(list<account> acclist) {
        listAccount=acclist;
    }
    public void execute(QueueableContext qc){
        for (account a : listAccount) {
            a.name = a.name + '-----SI'; 
        }
        update listAccount;
    }
}
