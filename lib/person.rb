class Person

  attr_accessor :bio, :age, :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(params)
    params.each{|k,v| self.send(()"#{k}"), v)}
  end

end

class User
  attr_accessor :name, :user_name, :age, :location, :bio

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end

person = {name: "micah", age: "may", bio: "green"}
me = User.new(person)
puts me.name
puts me
