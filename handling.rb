def email_duplicated?(email)
  file = ContactDatabase.read_csv
  file.each do |row|
      row.each do |ele|
        if ele.match(email)
        	return true
      end
    end
  end
end

def to_string(row)
  # TODO: return string representation of Contact
  row.join(' - ').to_s
end

def create_name(first_name, last_name)
  "#{first_name.capitalize} #{last_name.capitalize}"
end

def csv_rows
	file = ContactDatabase.read_csv
	file.length
end