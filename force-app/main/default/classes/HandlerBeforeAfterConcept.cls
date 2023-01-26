public with sharing class HandlerBeforeAfterConcept {
    public void beforeInsert(List<Account>accList){
        for (Account acc : accList) {
            System.debug('Before Insert=='+acc);
        }
    }
    
    public void afterInsert(List<Account>accList){
        for (Account acc : accList) {
            System.debug('After Insert=='+acc);
        }
    }
    
    public void beforeUpdate(List<Account> accList){
        for (Account acc : accList) {
            System.debug('Before Update=='+acc);
        }
    }
    
    public void afterUpdate(List<Account> accList){
        for (Account acc : accList) {
            System.debug('After Update=='+acc);
        }
    }
    
    public void beforeDelete(List<Account> accList){
        for (Account acc : accList) {
            System.debug('Before Delete=='+acc);
        }
    }
    public void afterDelete(List<Account> accList){
        for (Account acc : accList) {
            System.debug('After Delete=='+acc);
        }
    }
    
    public void afterUndelete(List<Account> accList){
        for (Account acc : accList) {
            System.debug('After Undelete=='+acc);
        }
    }
}