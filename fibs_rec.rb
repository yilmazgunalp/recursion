def fib_return n
     def fib_rec f 
          f <= 1 ?  f : fib_rec(f-1) + fib_rec(f-2)
     end  
    (0..n).inject([]) {|a,e| a << fib_rec(e) }
  end    