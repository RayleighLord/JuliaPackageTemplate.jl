module JuliaPackageTemplate

using DispatchDoctor: @stable

@stable default_mode="disable" begin # Change to disable in production
    include("funcs.jl")
end

export add, relu

end
