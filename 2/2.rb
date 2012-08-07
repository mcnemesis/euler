#!/usr/bin/env ruby
$f1,$f2,$limit,$sum=1,1,4e6,0
loop { f=$f1+$f2; break if f > $limit; $f1,$f2=$f2,f; $sum += f%2==0 ?f:0}
p $sum
