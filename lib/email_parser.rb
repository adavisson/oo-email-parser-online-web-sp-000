# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  
  attr_accessor :email_list
  
  def initialize(email_string)
    @email_list = email_string
  end
  
  def parse
    array = []
    @email_list.split(/[\s,]+/).each do |string|
      if !array.include?(string)
        array.push(string)
      end
    end
    array
  end
end