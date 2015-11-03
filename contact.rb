class Contact
	attr_accessor :first_name, :last_name, :email, :notes, :id
	@@contacts = []
	@@id = 1
    
	def initialize(first_name, last_name, options = {})
		@first_name = first_name
		@last_name = last_name
		@email = options[:email]
		@notes = options[:notes]
		@id = @@id
		@@id += 1
	end

	def self.create(first_name, last_name, options = {})
    new_contact = Contact.new(first_name, last_name, options)
    @@contacts << new_contact
    end

    def self.modify_contact_check
        puts "Please provide ID for Contact."
        @id_check = gets.to_i
        puts "Are you sure? Y/N"
        conf = gets.chomp
        if conf == "y"
            Contact.modify_contact
        else
            return
        end
    end

    def self.modify_contact
        puts "1) Change first name."
        puts "2) Change last name."
        puts "3) Change email."
        puts "4) Change notes."
        puts "5) Quit."
        choice = gets.to_i
        if choice == 1
            change_first
        elsif choice == 2
            change_last
        elsif choice == 3
            change_email
        elsif choice == 4
            change_notes
        elsif choice == 5
            return
        end
    end

    def change_first
        puts "Enter new first name."
        new_first_name = gets.chomp
        @@contacts.each do |contact|
            if contact.id == @id_check
                contact.first_name = new_first_name
            end
        end
    end

    def change_last
        puts "Enter new last name."
        new_last_name = gets.chomp
        @@contacts.each do |contact|
            if contact.id == @id_check
                contact.last_name = new_last_name
            end
        end
    end

    def change_email
        puts "Enter new email."
        new_email = gets.chomp
        @@contacts.each do |contact|
            if contact.id == @id_check
                contact.email == new_email
            end
        end
    end

    def change_notes
        puts "Enter new notes."
        new_notes = gets.chomp
        @@contacts.each do |contact|
            if contact.id == @id_check
                contact.notes = new_notes
            end
        end
    end

    def self.display_all_contact
        @@contacts.each do |contact|
            puts "#{contact.first_name}, #{contact.last_name}, #{contact.email}, #{contact.notes}, #{contact.id}"
        end
    end

    def self.display_contact
        puts "Enter ID of contact you would like to display."
        id_check = gets.to_i
        @@contacts.each do |contact|
            if contact.id == id_check
                puts "#{contact.first_name}, #{contact.last_name}, #{contact.email}, #{contact.notes}, #{contact.id}"
            end
        end
    end

    def self.display_attribute
        puts "Enter the Information you would like to display for each contact."
        puts "first names, last names, emails, or notes"
        attribute = gets.chomp
        if attribute == "first names"
            @@contacts.each do |contact|
                puts contact.first_name
            end
        elsif attribute == "last names"
            @@contacts.each do |contact|
                puts contact.last_name
            end
        elsif attribute == "emails"
            @@contacts.each do |contact|
                puts contact.email
            end
        elsif attribute == "notes"
            @@contacts.each do |contact|
                puts contact.notes
            end
        end
    end

    def self.delete_contact
        puts "Please enter the ID of the contact you would like to delete."
        id_check = gets.to_i
        @@contacts.each do |contact|
            if contact.id == id_check
                @@contacts.delete(contact)
            end
        end
    end

end


