#!/usr/bin/env ruby
<<DOC
an interesting property of even fibs:
1,1,2,3,5,8,13,21,34,55,89,144,...
2,8,34,144
e(n) = 3*e(n-3) + e(n-6)
which can be proved true for f(n) = f(n-1)+f(n-2):
f(n-1) + f(n-2) 
<=> f(n-2) - f(n-3) + f(n-3) + f(n-4)
<=> f(n-3) + f(n-4) + 2f(n-3) + f(n-5) + f(n-6)
<=> 3f(n-3) + [f(n-4) + f(n-5)] + f(n-6)
<=> 3f(n-3) + f(n-3) + f(n-6)
q.e.d
DOC

#fib using the Golden Ratios : http://en.wikipedia.org/wiki/Golden_ratio#Relationship_to_Fibonacci_sequence
def fib(n)
    ((1/5**0.5) * ( ((1+5**0.5)/2)**n - ((1-5**0.5)/2)**n )).round
end

#the even fib : http://www.maths.surrey.ac.uk/hosted-sites/R.Knott/Fibonacci/fibmaths.html#digitsums
def efib(n)
    4*fib(n-3) + fib(n-6)
end

$i,$limit,$sum=1,4e6,0
#this avoid evaluating each fib along the way, and also testing the fib for being a factor of 2
loop { $i+= 1;next if not ($i%3==0); f=efib($i); break if f > $limit;p f; $sum += f }
p $sum
