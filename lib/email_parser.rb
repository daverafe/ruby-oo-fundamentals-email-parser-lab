require "pry"
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end
    attr_accessor :emails
#use scan or maybe match to see if there are commas or spaces then depending on if there are split according to that.
    def parse 
        spaced_emails = @emails.gsub(", ", " ")
        space_emails = spaced_emails.split.uniq 
    end
end

