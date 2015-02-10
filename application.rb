require 'csv'
require_relative 'contact'
require_relative 'contact_database'
require_relative 'gemfile'
require_relative 'handling'

def get_input
	var1 = ARGV[0]
	var2 = ARGV[1]
	var3 = ARGV[2]
	var4 = ARGV[3]
	case var1
	when "new"
	begin
		Contact.create(ARGV[1],ARGV[2],ARGV[3])
	rescue ArgumentError
	rescue TypeError
		puts "Please enter a first name:"
		first_name = STDIN.gets.chomp
		puts "Please enter a last name:"
		last_name = STDIN.gets.chomp
		puts "Please enter an email address:"
		email = STDIN.gets.chomp
		Contact.create(first_name,last_name,email)
	end
	when "show"
		ContactDatabase.new
		Contact.show(ARGV[1])
	when "find"
		Contact.find(ARGV[1])
	when "list"
		ContactDatabase.new
		Contact.all
	else
		puts "Here is a list of available commands:"
    puts "new  - Create a new contact (First Last Email)"
    puts "list - List all contacts"
    puts "show - Show a contact ('Search term')"
    puts "find - Find a contact (id)"
	end
end

# def email_duplicated?(email)
#   file = ContactDatabase.read_csv
#   file.each do |row|
#       row.each do |ele|
#         unless ele.match(email)
#       end
#     end
#   end
# end

get_input