class Contact
 
  attr_accessor :first_name, :last_name, :email
 
  def initialize(name, email)
    @name = name
    @email = email
  end

  def create_name(first_name, last_name)
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
 
  ## Class Methods
  class << self
    def create(first_name, last_name, email)
      if email_duplicated?(email)
        return puts "That Email already exists." 
      end
      name = create_name(first_name, last_name)
      Contact.new(name, email)
      ContactDatabase.writing_csv(name, email)
    end
 
    def find(index)
      # TODO: Will find and return contact by index
      file = ContactDatabase.read_csv
      file.each do |row|
        row.each do |ele|
          if ele.match(index)
            puts to_string(row)
          end
        end
      end
    end

    def all
      # TODO: Return the list of contacts, as is
      file = ContactDatabase.read_csv
      file.each do |row|
        puts row.inspect
      end
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
      id = id.to_s
      file = ContactDatabase.read_csv
      file.each do |row|
        row.each do |ele|
          if ele.match(id)
            puts to_string(row)
          end
        end
      end
    end
  end
end