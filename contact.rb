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

    def self.modify_contact
    end

    def self.display_all_contact
    end

    def self.display_contact
    end

    def self.display_attribute
    end

    def self.delete_contact
    end

end


