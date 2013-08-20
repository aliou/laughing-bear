require 'net/http'

def string_value(str)
  value = 0
  str.each_byte {|c| value += c - 64}
  value
end

url = URI.parse('http://projecteuler.net/project/names.txt')

req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) do |http|
  http.request(req)
end

val = 0
names = res.body.split(",").map { |n| n.gsub(/"/, '') }.sort
names.each_with_index { |n, idx| val += (idx + 1) * string_value(n) }

puts val
