route_1 = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']
route_2 = ['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']
route_3 = ['w', 's', 'e']

def ten_minute_walk?(route)
  if route.length == 10
    direction_calculator(route)
  else 
    return false
  end
end

def direction_calculator(route)
  hash = Hash.new(0)
  route.each { |x| hash[x] += 1}
  direction_match?(hash)
end

def direction_match?(hash)
  if hash.fetch('w') == hash.fetch('e') && hash.fetch('n') == hash.fetch('s')
    return true
  else 
    return false
  end
end


