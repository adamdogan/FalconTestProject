@isTest
public with sharing class ContactTriggerTest {
    @isTest
    public static void testValidation1() {
        contact c1 = new contact();
        c1.LastName = 'test lead ';
        c1.LeadSource = 'email';
        insert c1;
        try {
            c1.LeadSource='phone';
            update c1;
        } catch (DmlException ex) {
            System.debug(ex.getMessage());
            System.debug(ex.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCEPTION'));
        }
        update c1;
    }
    
}
