require_relative "contact.rb"

class CRM
   
   def initialize(name)
   	@name = name
   end
   
   def self.run (name)
   	crm = CRM.new(name)
   	crm.main_menu
   end
   
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

   def num_select (choice)
   	case choice 
   	when 1 then add_contact
   	when 2 then modify_contact
   	when 3 then display_all_contact
    when 4 then display_contact
    when 5 then display_attribute
    when 6 then delete_contact
    when 7 then return
    end

    main_menu

   end

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

    def modify_contact
    	Contact.modify_contact
    end

    def display_all_contact
    	Contact.display_all_contact
    end

    def display_contact
    	Contact.display_contact
    end

    def display_attribute
    	Contact.display_attribute
    end

    def delete_contact
    	Contact.delete_contact
    end
end

CRM.run("mycrm")
