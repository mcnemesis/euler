#!/usr/bin/env ruby
def fib(n)
    ((1/(5**0.5))*(((1+(5**0.5))*0.5)**n - ((1-(5**0.5))*0.5)**n)).round
end
$f1,$f2,$limit,$sum,$i=1,1,4e6,0,1
loop { f=fib($i); break if f > $limit; $f1,$f2=$f2,f; $i += 1; $sum += f%2==0 ?f:0}
p $sum
