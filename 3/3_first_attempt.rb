#!/usr/bin/env ruby

#-------- Problem 3 (prime factors) --------
#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?
#------------------------------------------------------------


def isprime(n)
    if n == 2
        return true
    else
        return false if n <= 1
        return false if (n%2) == 0
        sqrt = Math.sqrt(n)
        i = 3
        while i <= sqrt
            return false if (n%i) == 0
            i += 2
        end
        return true
    end
end

def all_primes(n)
    (2..n).each.select{|s| isprime(s) }
end

def only_factors(n,vals)
    vals.select{|v| (n%v) == 0}.map{|v| p v; v}
end

def all_factors(n)
    (1..(n/2)).each.select{|v| (n%v) == 0} << n
end

n = 13195 
n = 600851475143
#Largest Prime Factor of n
p only_factors(n,all_primes(n)).max
p "---------"
#p all_factors(n).select{|v| isprime(v) }.map{|v| p v; v}.max
