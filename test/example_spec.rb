# class Ekene
#     def initialize(name, age, height, country, gender)
#         @name = name
#         @age = age
#         @height = height
#         @country = country
#         @gender = gender
#     end
# end

# class Collins < Ekene
#     def initialize(name, age, height, country, gender, school)
#         super(name, age, height, country, gender)
#         @school = school
#     end

# end

# collin = Collins.new('big chief', 22, 60, 'Nigeris', 'male', 'miccorvers')
# p collin

# class Author
#     # Define class variable
#     @name = "John Doe"

#     # Getter method
#     def self.name
#         puts "Self inside class method is: #{self}"
#         return @name
#     end
# end

# puts "Author class method 'name' is: #{Author.name}"

# To test you use this pattern The A,A,A patern
# [Fact]
# public void Add_EmptyString_ReturnsZero()
# {
#     // Arrange
#     var stringCalculator = new StringCalculator();

#     // Act
#     var actual = stringCalculator.Add("");

#     // Assert
#     Assert.Equal(0, actual);
# }

# class HelloWorld

#    def say_hello
#       "Hello World!"
#    end

# end

# describe HelloWorld do
#    context 'When testing the HelloWorld class' do

#       it "should say 'Hello World' when we call the say_hello method" do
#          hw = HelloWorld.new
#          message = hw.say_hello
#          expect(message).to eq "Microverse!"
#       end

#    end
# end
# #  rspec spec example.rb

# require 'date'

# time = Time.new
# time1 = Date.parse "01/06/2016"
# date1 = time.strftime("%d/%m/%Y")
# date2 = time1.strftime("%d/%m/%Y")
# p date1.to_i
# p date2
# p "Period #{time.strftime("%d/%m/%Y")} to #{time1.strftime("%d/%m/%Y")}"

# (time..time1).each do |date|
#   p date.strftime("%d/%m/%Y")
# end

# musics = [
#   { author: { first_name: 'ekene' }, genre: { name: 'blues' }, id: 1, publish_date: '2017/08/08' },
#   { author: { first_name: 'Collins' }, genre: { name: 'pop' }, id: 2, publish_date: '2017/08/20' },
#   { author: { first_name: 'John' }, genre: { name: 'raggae' }, id: 3, publish_date: '2017/02/08' },
#   { author: { first_name: 'Craig' }, genre: { name: 'highlife' }, id: 4, publish_date: '2014/08/08' }
# ]
# musics.each do |music, index|
#   puts "#{index} #{music.first}"
# end

#   [5, 10, 15, 20, 25, 30].each_with_index do |num, idx|
#     puts "#{num} #{idx}"
#   end
