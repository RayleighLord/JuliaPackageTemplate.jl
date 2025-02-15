using JuliaPackageTemplate
using Test
using Aqua
using JET

@testset "JuliaPackageTemplate.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(JuliaPackageTemplate; ambiguities = false,)
    end
    @testset "Code linting (JET.jl)" begin
        JET.test_package(JuliaPackageTemplate; target_defined_modules = true)
    end
    # Write your tests here.
end
