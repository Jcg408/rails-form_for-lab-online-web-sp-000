class Student < ActiveRecord::Base
  binding.pry
  def to_s
    self.first_name + " " + self.last_name
    
  end
end