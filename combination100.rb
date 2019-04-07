def patterns(str = "1", i = 0, arr = (2..9).to_a)
  i >= arr.size and return str
  ['+', '-', ''].map { |op| patterns("#{str}#{op}#{arr[i]}", i + 1, arr) }.flatten
end

ans = patterns.select { |p| eval(p) == 100 }
puts ans
