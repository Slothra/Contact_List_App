require 'contact'
require 'contact_database'
require 'gemfile'

def get_input
	var1 = ARGV[0]
	var2 = ARGV[1]
	var3 = ARGV[2]
	var4 = ARGV[3]

	case var1
	when "new"
		Contact.create(ARGV[1],ARGV[2],ARGV[3])
	when "show"
		Contact.show(ARGV[1])
	when "find"
		Contact.find(ARGV[1])
	else
		puts "Here is a list of available commands:"
    puts "new  - Create a new contact"
    puts "list - List all contacts"
    puts "show - Show a contact"
    puts "find - Find a contact"
    get_input
	end
end

get_input