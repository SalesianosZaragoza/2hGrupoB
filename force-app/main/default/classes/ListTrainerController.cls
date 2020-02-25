public class ListTrainerController{
 
    public List<TRAINER__c> trainers {get;set;}

    public ListTrainerController() {
        trainers = [SELECT Trainer_ID__c, Trainer_Name__c, Trainer_Country__c FROM TRAINER__c ORDER BY Trainer_ID__c];
    }


    public Pagereference goToTrainer(){
        PageReference pr=Page.AddTrainer;
        return pr;
    }
}