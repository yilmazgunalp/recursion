def merge_sort arr 
  if arr.length > 1
  sub1 = arr.slice(0,arr.length/2)
  sub2 = arr.slice(arr.length/2, arr.length)
  merge_sort sub1
  merge_sort sub2
      x = 0
      while sub1.length >= 1 && sub2.length >=  1 
        if sub1[0] < sub2[0]
        arr[x] = sub1[0]
         x += 1
        sub1.shift
        else 
        arr[x] = sub2[0]
        x += 1
        sub2.shift
        end
      end
  sub1.length > 0 ? sub1.each {|e| arr[x] = e; x +=1} : sub2.each {|e| arr[x] = e; x +=1} 
  end
arr
end

sample = [1,5,3,9,415,15,-982,25,6,4,-9,2,8,7,-656565] 
merge_sort sample