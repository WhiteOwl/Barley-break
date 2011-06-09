class Game < ActiveRecord::Base
  before_create :fill_points
  serialize :points, Array



  def fill_points

    self.points = (1..15).to_a


    self.points = self.points.shuffle
    self.points[15] = ""
  end

  def get_movable
    movable_elements = Array.new

    0.upto(15) do |t|
      if self.points[t] == ""

        if (((t-1) % 4 ) != 3) && self.points[t-1] != nil
          movable_elements << t-1
        end

        if  (((t+1) % 4 ) != 0) && self.points[t+1] != nil
          movable_elements << t+1
        end

        if (self.points[t-4] != nil)
          movable_elements << t-4
        end

        if (self.points[t+4] != nil)
          movable_elements << t+4
        end

      end
    end
    return movable_elements
  end

  def movable?(point_number)
    self.get_movable.include?(point_number)
  end

  def move_it(point_number)
    self.points[point_number], self.points[empty_point_number] = self.points[empty_point_number], self.points[point_number]
  end

  def empty_point_number
    self.points.index("")
  end

end
