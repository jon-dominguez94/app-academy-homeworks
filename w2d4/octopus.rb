def sluggish(array)
  longest_fish = ""
  array.each do |fish|
    array.each do |other_fish|
      longest_fish = fish if fish.length > other_fish.length
    end
  end
  longest_fish
end
