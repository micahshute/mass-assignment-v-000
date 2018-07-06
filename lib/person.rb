class Person

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(params)
    params.each{|k,v| self.send("#{k}", v)}
  end
end

person = {name: "micah", birthday: "may", eye_color: "green"}
me = Person.new(person)
puts me.name
puts me