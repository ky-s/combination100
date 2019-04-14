# mapfoldl を使用するパターン
# 2:9 までをイテレートして、各値に "+"付与、"-"付与、そのままの3種類を作成し、全組み合わせを作っていく。
patterns = mapfoldl(i -> ("+", "-", "") .* string(i), (sum, map) -> [s * x for s in sum for x in map], 2:9, init = "1")

@time ans = filter(x -> eval(Meta.parse(x)) == 100, patterns)
println(ans)

