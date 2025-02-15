using JuliaPackageTemplate
using TestItems: @testitem
using TestItemRunner: @run_package_tests

@run_package_tests

@testitem "Functions" begin
    @test add(1, 2) == 3
end

@testitem "Code quality (Aqua.jl)" begin
    using Aqua
    Aqua.test_all(JuliaPackageTemplate; ambiguities = false)
end
