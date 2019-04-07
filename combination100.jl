function patterns(pat = "1", i = 1, arr = collect(2:9), ans = [])
    length(arr) < i && return push!(ans, pat)
    foreach(op -> patterns(pat * op * string(arr[i]), i + 1, arr, ans), ("+", "-", ""))
    return ans
end

@time ans = filter(x -> eval(Meta.parse(x)) == 100, patterns())
println(ans)
