#!/usr/bin/env ruby

#---------- Problem 5 -------------
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#----------------------------------
#The solution is apparent once u realize that the lcm of a list can be obtained by this approach (which am yet to find proof for though):
#lcm([a1,a2,a3,...,an]) = lcm(a1,lcm([a2,a3,a4,...,an]))
#where the base case lcm(ai,aj) is obtained as defined 
#----------------------------------

#NOTE : this problem is about LCMs!


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

#get the lcm of all the items in a list
def alcm(a)
    #reduce to the result... lcm([a,b,c]) = lcm([lcm(a,b),c])
    a.inject(){|i,val| lcm(val,i) }
end

low = 1
high = 20
factors = (low..high).to_a

#Solution amounts to finding the LCM of all the given numbers (in range given)
p alcm(factors)
