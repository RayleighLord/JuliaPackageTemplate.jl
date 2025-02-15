using JuliaPackageTemplate
using Documenter

DocMeta.setdocmeta!(JuliaPackageTemplate, :DocTestSetup, :(using JuliaPackageTemplate); recursive=true)

makedocs(;
    modules=[JuliaPackageTemplate],
    authors="Javier González Monge",
    sitename="JuliaPackageTemplate.jl",
    format=Documenter.HTML(;
        canonical="https://RayleighLord.github.io/JuliaPackageTemplate.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RayleighLord/JuliaPackageTemplate.jl",
    devbranch="main",
)
