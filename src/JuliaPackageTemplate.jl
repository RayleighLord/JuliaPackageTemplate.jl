module JuliaPackageTemplate

using DispatchDoctor

@stable default_mode="error" begin # Change to disable in production
    add(x, y) = x + y
end

export add

end
