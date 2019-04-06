def patterns(str = "1", i = 0, arr = (2..9).to_a)
  i >= arr.size and return str
  x = arr[i].to_s; i += 1
  ['+', '-', ''].map { |op| patterns("#{str}#{op}#{x}", i, arr) }.flatten
end

ans = patterns.select { |p| eval(p) == 100 }
puts ans
