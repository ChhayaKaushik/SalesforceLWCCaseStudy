//with sharing keyword when declaring a class to enforce sharing rules of the current user
public with sharing class OpportunityController {
    public OpportunityController() {

    }
    @AuraEnabled(cacheable=true)//No of DML'S that can be performed =0 as method is cacheable 
    //i.e. we cannot perform DMLs inside cacheable methods
    public static List<Opportunity> getAllOpportunity(){
        return [select Name,StageName,CloseDate from Opportunity];
    }

    
}
