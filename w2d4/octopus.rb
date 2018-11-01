def sluggish(array)
  longest_fish = ""
  array.each do |fish|
    array.each do |other_fish|
      longest_fish = fish if fish.length > other_fish.length
    end
  end
  longest_fish
end

def dominant(array)
  merge_sort(array).last
end

def merge_sort(array)
  return array if array.length <= 1
  mid = array.length / 2

  left = array[0...mid]
  right = array[mid..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  return right if left.empty?
  return left if right.empty?

  result = []

  until left.empty? || right.empty?
    if left.first.length < right.first.length
      result << left.shift
    else
      result << right.shift
    end
  end

  result + left + right
end

def clever(array)
  longest = array[0]

  array[1..-1].each do |el|
    longest = el if el.length > longest.length
  end

  longest
end

def tiles_array
  ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
end

def slow_dance(dir, tiles_array)
  tiles_array.each_with_index do |tile, i|
    return i if tile == dir
  end
end

def tiles_hash
  {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
  }
end

def fast_dance(dir, tiles_hash)
  tiles_hash[dir]
end
