def echo(str)
  str
end
#
def shout(str)
  str.upcase
end
#
def repeat(str, n=2)
  arr = []
  (1..n).each { arr.push(str) }
  arr.join(" ")
end
#
def start_of_word(str, times)
str[0..times-1]
end
#
def first_word(str)
  str.split(" ")[0]
end
#
def titleize(str)
  little_words = %w(a an and the end over)
  str.capitalize.gsub(/\w+/) do |word|
      little_words.include?(word) ? word : word.capitalize
  end
end

puts shout('hello')
