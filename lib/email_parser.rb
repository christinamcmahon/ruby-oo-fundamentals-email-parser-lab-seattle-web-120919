# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    attr_accessor :email_addresses

    def parse
        # initialize array and remove duplicates
        email_addresses_array = @email_addresses.split(/[, ]/).uniq
        # delete any empty elements
        email_addresses_array.reject! {|element| element.empty?}
        email_addresses_array
    end
end