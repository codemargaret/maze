class Maze

  attr_accessor :location, :castle
  def initialize
    @location = ["h"]
    @castle = {"hall" => ["h"], "ballroom" => ["h", "s"], "tower" => ["h", "s", "r"], "throne room" => ["h", "s", "l"]}
  end

  def move(direction)
    if direction == "left" || direction == "right" || direction == "straight"
      is_room = location
      is_room.push(direction[0])
      if castle.keys.include?(is_room)
        location.push(direction[0])
    else
      "You are in the Dungeon! Welcome to a world of Pain!, try going either left, right, or straight"
    end
  end
end
