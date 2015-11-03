require_relative "contact.rb"

class CRM
   
   #initializing CRM to run
   def initialize(name)
   	@name = name
   end
   
   #self run after file is opened
   def self.run (name)
   	crm = CRM.new(name)
   	crm.main_menu
   end
   
   #main menu puts options and passes input to other methods
   def main_menu
   	puts "1) Add Contact"
    puts "2) Modify Contact"
    puts "3) Display All Contacts"
    puts "4) Display Contact"
    puts "5) Display Attribute"
    puts "6) Delete Contact"
    puts "7) Exit"
    puts "Please Choose an option."
    choice = gets.to_i
    num_select(choice)
   end
    
   #passing main menu options to specific methods
   def num_select (choice)
   	 case choice 
   	 when 1 then add_contact
   	 when 2 then Contact.modify_contact_check
   	 when 3 then Contact.display_all_contact
     when 4 then Contact.display_contact
     when 5 then Contact.display_attribute
     when 6 then Contact.delete_contact
     when 7 then return
     end
     
    main_menu

   end
    
    #accepting input from user and creating a contact passing to Contact class
    def add_contact
      puts "Enter first name: "
      first_name = gets.chomp
      puts "Enter last name: "
      last_name = gets.chomp
      puts "Enter email: "
      email = gets.chomp
      puts "Enter notes: "
      notes = gets.chomp
      Contact.create(first_name, last_name, email: email, notes: notes)
    end
end

CRM.run("mycrm")
