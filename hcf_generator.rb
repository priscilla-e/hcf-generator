# Highest Common Factor Generator
# Using Euclid's Algorithm
# By: Priscilla Emasoga


def gen(max, min)
  q = nil
  r = nil
  possible_hcfs = []
  while r != 0
    compute = max / min
    q = compute.floor()
    r = max - (min * q)
    puts "#{max} = #{q} x #{min} + #{r}"
    possible_hcfs << min
    max = min
    min = r
  end
  hcfIndex = possible_hcfs.length - 1
  puts "The hcf is: = #{possible_hcfs[hcfIndex]}"
end


gen(123456789, 456456)