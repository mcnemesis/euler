#!/usr/bin/env ruby
def mmul(k,u)
    u - (u%k)
end

def z(k,u)
    (mmul(k,u) * (mmul(k,u)/k + 1))/2
end

def gcd(u,v)
  u, v = u.abs, v.abs
  while v > 0
    u, v = v, u % v;
  end
  u
end

def lcm(u,v)
    (u*v).abs/gcd(u,v)
end

limit,u,v = 1e3.to_i,3,5
print(z(u,limit-1) + z(v,limit-1) - z(lcm(u,v),limit-1))
