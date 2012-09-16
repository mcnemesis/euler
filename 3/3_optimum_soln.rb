#!/usr/bin/env ruby

#-------- Problem 3 (prime factors) --------
#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?
#------------------------------------------------------------

#http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
#NOTE:Includes the optimization that initializes the step value at p^2 (reason ?)
def all_primes(n)
    start = 2
    vals = (start..n).to_a
    return [] if vals.empty?
    i = 0
    while i <= n
        p = vals[i]
        p = p.nil? ? i+2 : p
        step = p*p
        while step <= n
            #NOTE: we deduct 'start' from the step because we started populating the natural numbers from 'start', though counting is from 0 
            vals[step - start] = nil
            #NOTE: we step by p because all factors of p are additive composites of p
            step += p
        end
        i += 1
    end
    vals.select{|v| not v.nil?}
end

def only_factors(n,vals)
    vals.select{|v| (n%v) == 0}
end

n = 13195 
n = 600851475143

#Largest Prime Factor of n
#NOTE:Takes advantage of the fact that the biggest prime factor of n
#can't exceed the square-root of n
p only_factors(n,all_primes(Math.sqrt(n).ceil)).max
