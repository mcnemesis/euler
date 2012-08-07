#!/usr/bin/env ruby
#--- finding sum of all the natural numbers that are multiples of 3 or 5 below 1000

#gets the largest multiple of k  less than or equal to u
def mmul(k,u)
    u - (u%k)
end

#gets the sum of all multiples of u less than or equal to u
def z(k,u)
    (mmul(k,u) * (mmul(k,u)/k + 1))/2
end

#find gcd of u and v
def gcd(u,v)
  u, v = u.abs, v.abs
  while v > 0
    u, v = v, u % v
  end
  u
end

#find lcm of u and v
def lcm(u,v)
    (u*v).abs/gcd(u,v)
end
    
limit = 1000
#Solution to our problem becomes...
p
