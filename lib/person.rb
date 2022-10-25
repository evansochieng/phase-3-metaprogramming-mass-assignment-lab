# use keywords arguments to define initialize method
# use mass assignment in initialize method
class Person
  # your code here
  def initialize(attributes)
    #iterate over the hash of attributes passed
    attributes.each do |key, value|
      self.class.attr_accessor(key) #dynamically add getter and setter method to the key of every attribute
      self.send("#{key}=", value) #abstract away the attribute names by using #send method
    end
  end
end
