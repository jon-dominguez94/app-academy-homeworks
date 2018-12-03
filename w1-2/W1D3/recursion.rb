require 'byebug'

def sum_to(num)
  return nil if num < 1
  return 1 if num == 1
  num + sum_to(num - 1)
end

def add_numbers(nums_array)
  return nil if nums_array.empty?
  return nums_array.first if nums_array.length == 1
  nums_array.first + add_numbers(nums_array[1..-1])
end

def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1
  (num - 1) * gamma_fnc(num-1)
end

def ice_cream_shop(arr,flavor)
  return false if arr.empty?
  return true if arr.first == flavor
  ice_cream_shop(arr[1..-1],flavor)
end

def reverse(string)
  return string if string.length <= 1
  reverse(string[1..-1]) + string[0]
end
