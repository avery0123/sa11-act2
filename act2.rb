def extract_hashtags(text)
  pattern = /#\w+/
  hashtags = text.scan(pattern)
  hashtags.flatten
end

p extract_hashtags("Love this #beautiful day! #sunny")

def valid_password?(password)
  pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$/
  password.match?(pattern)
end

p valid_password?("Passw0rd")
p valid_password?("pass")

def find_numbers(text)
  pattern = /\d+\.\d+|\d+/
  text.scan(pattern)
end

p find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")

def valid_date?(date)
  pattern = /\A\d{4}-\d{2}-\d{2}\z/
  date.match?(pattern)
end

p valid_date?("2023-03-15")
p valid_date?("15-03-2023")

def parse_log_entry(log)
  pattern = nil
  match = log.match(pattern)
  [match[1], match[2]] if match
end
