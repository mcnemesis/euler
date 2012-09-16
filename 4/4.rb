#!/usr/bin/env ruby

#--------- Problem 4 (palindromic numbers) ---------------
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.
#---------------------------------------------------------

def smallest_n_digit_number(n)
    10 ** (n-1)
end

def largest_n_digit_number(n)
    (10 ** n) - 1
end

#stored for fun...
palindromes = []
#what we want
largest_palindrome = 0

#number of digits
n = 3
low_limit = smallest_n_digit_number(n)
upper_limit = largest_n_digit_number(n)

i = low_limit
while i <= upper_limit
    j = upper_limit
    while j >= low_limit
        p = i * j
        #palindrome property
        if p.to_s == p.to_s.reverse
            palindromes << p 
            largest_palindrome = p if p > largest_palindrome
        end
        j -= 1
    end
    i += 1
end

p largest_palindrome


