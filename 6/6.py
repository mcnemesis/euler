#!/usr/bin/env python
# -*- coding: utf-8 -*-

#-----------------------------------
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#------------------------------------
#
# Summing Squares is FUN!
#
# Summing Squares using Calculus is a thrill!
#------------------------------------


#SOLUTION:
# Am not sure what I first did the first time I attempted this problem -- I failed!
#
# On next attempt, I thought: If I can find a general formula for the sum of a sequence of squares of natural numbers,
# and then also find the sum of a sequence of natural numbers, then I could find a general formula for the difference of
# these two sums (for some n), and thus would use that formula in a 1-step algorithm to find the solution!
#
# So, as it turns out, the 'moral' of this problem was to learn 'from first principles' how to derive the 2 above formulae,
# and thus find the 3rd one. A task I found very satisfying once I learn't something from the discussions here:
#http://www.trans4mind.com/personal_development/mathematics/series/sumNaturalSquares.htm#squaresByCalculus
#-------------
#
#Basically, the sum of a sequence of natural numbers is given by:
#
# S1 = ∫xdx + ∑1/2 (all from 0 to n) = n(n+1)/2
#
# this derivation is obvious from the geometric interpretation of the sums and use of calculus
#---
#Similar to the above, for the sum of a sequence of squares of natural numbers, we can still exploit this idea and we'd end up with:
#
# S2 = ∫x^2dx + ∑(3k-1)/3 (all from 0 to n)
# where the error sequence evaluates to (n^2/2 + n/6 )
# so that s2 = n^3/3 + n^2/2 + n/6
#
#-----------
#Now, the required formula would be S = S1^2 - S2 = (3n^4 + 2n^3 - 3n^2 - 2n)/12 
#Voila! we have the solution!
#------------

f = lambda n : (3*n**4 + 2*n**3 -3*n**2 - 2*n)/12

print f(10) #the given
print f(100) #the solution...
