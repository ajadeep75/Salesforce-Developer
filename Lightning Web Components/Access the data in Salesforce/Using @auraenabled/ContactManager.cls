public with sharing class ContactManager{
	@AuraEnabled(cachaeble=true)
	public static List<Contact>getContact(){
		return [Select id, LastName, Phone from Contact Limit 20];
	}
}