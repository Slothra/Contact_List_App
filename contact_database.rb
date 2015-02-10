## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase

	# Reads and returns an array
	class << self
		def read_csv
			CSV.open("contacts.csv", "r") do |csv|
	      csv.readlines
	    end
	  end

	  # def write_to_csv
	  	def writing_csv(name, email)
			id = csv_rows + 1
			CSV.open("contacts.csv", "a") do |x|
	  		x << [id, name, email]
			end
			puts id
		end
	end
end