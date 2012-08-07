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
    
limit,u,v = 1e3.to_i,3,5
#Solution to our problem becomes...
#1 - find sums of all factors of 3 and 5 within limit
#2 - sum them
#3 - subtract the sum of all the factors of their lcm (lcm of 3&5 -> 15), within the limit
#reason for 3 : these values will otherwise be included twice in sum 2
print (z(u,limit-1) + z(v,limit-1) - z(lcm(u,v),limit-1))
