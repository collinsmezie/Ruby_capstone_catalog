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

#  time = Time.new
# times = time.strftime("%d/%m/%Y")

# date1 = Date.parse "01/06/2016"
# dates = date1.strftime("%d/%m/%Y")
# p dates.to_i
# p dates

#  "Period #{date1.strftime("%d/%m/%Y")} to #{date2.strftime("%d/%m/%Y")}"

# (dates..times).each do |date|
#    date
# end
# (date1...date2).each do |date|
#   p date
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

# class NetworkProvider
#   attr_accessor :name, :location, :constant_network
#   attr_reader :users

#   def initialize(name, location, constant_network: true)
#     @name = name
#     @location = location
#     @constant_network = constant_network
#     @users = []
#   end

#   def add_user(user)
#     @users << user
#     user.network_provider = self
#   end
# end

# class User
#   attr_accessor :name, :age, :date_of_birth
#   attr_reader :network_provider

#   def initialize(name, age, date_of_birth, network_provider)
#     @name = name
#     @age = age
#     @date_of_birth = date_of_birth
#     @network_provider = network_provider
#   end

#   def network_provider=(network_provider)
#     @network_provider = network_provider
#     network_provider.users << self
#   end
# end

# user = User.new('Ekene', 12, '2020/09/07', 'mtn')

# network_provider = Network_provider.new('mtn', 'Ikorodu')
# p network_provider.add_user(user)
