class Game < ActiveRecord::Base
  serialize :points, Array
  
  
  
  def fill_table
    self.points = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, ""]
    self.save
  end
  
  def self.is_movable?(t) 
    if @f.points[t] == "[]"
      
       if @f.points[t-1] != nil
        @f.points[t-1] = "yarr!"
       end
       
       if @f.points[t+1] != nil
         f.points[t+1] = "yarr!"
       end
       
       if f.points[t-4] != nil
         f.points[t-4] = "yarr!"
       end
       
       if f.points[t+4] != nil
         @f.points[t+4] = "yarr!"
       end
    end
  end
  
  
  
end
