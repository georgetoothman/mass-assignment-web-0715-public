require 'pry'
class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  def initialize(attributes)
    # @name = attributes[:name]
    # @birthday = attributes[:birthday]
    # go through each attribute and set each instance variable named after 
    # the key to the corresponding value

    attributes.each do |property, value|
      # instance_variable_set("@#{property}", value)
      # self.name = "Avi"
      # self.send("name=", "Avi")
      self.send("#{property}=", value)
    end
  end

  define_method "howdy" do
    puts "Howdy!"
  end
end

# .send("takes a string")
# .send("rev" + "erse")
# 1.send("+", 1)      
# self.send("name=", "Avi")
# seld.name=("Avi")

# lines 21 and 22 are the same
# interpolated symbol drops the colon