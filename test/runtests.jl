using Preferences: set_preferences!

set_preferences!("JuliaPackageTemplate", "dispatch_doctor_mode" => "error")

using JuliaPackageTemplate
using TestItems: @testitem
using TestItemRunner: @run_package_tests

@run_package_tests

@testitem "Functions" begin
    @test add(1, 2) == 3
    @test add(1.0, 2.0) == 3.0
    # @test relu(0) == 0.0
end

@testitem "Code quality (Aqua.jl)" begin
    using Aqua
    Aqua.test_all(
        JuliaPackageTemplate; ambiguities = false, deps_compat = (check_extras = false))
end
