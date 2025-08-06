"""
    add(x, y)

Add two numbers together.

# Example of usage

```julia
julia> add(2, 3)
5
```
"""
add(x, y) = x + y

function relu(x)
    if x > 0
        return x
    else
        return 0.0
    end
end
