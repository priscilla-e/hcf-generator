# Highest Common Factor Generator
# Using Euclid's Algorithm
# By: Priscilla Emasoga

def gen(max, min)
  puts "================================="
  puts "Find hcf(#{max},#{min})"
  puts "================================="
  q = nil
  r = nil
  possible_hcfs = []
  while r != 0
    q = (max / min).floor()
    r = max - (min * q)
    puts "#{max} = #{q} x #{min} + #{r}"
    possible_hcfs << min
    max = min
    min = r
  end
  hcf_index = possible_hcfs.length - 1
  puts
  puts "The hcf is: #{possible_hcfs[hcf_index]}"
  puts "================================="
end


gen(123456789, 465465)