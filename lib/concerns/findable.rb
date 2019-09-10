module Concerns::Findable
  def find_by_name(name)
    self.all.find do |instance|
      instance.name == name
    end
  end
      
  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
    end  
<<<<<<< HEAD
end  
=======
  end  
  
  

>>>>>>> ac5e1086a296a054c1f0047b2d118d23ae34f6d7
