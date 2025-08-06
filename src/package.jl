using PkgTemplates

# Julia Package

tpl = Template(;
    user = "RayleighLord",
    dir = "~/",
    authors = "Javier González Monge",
    julia = v"1.11",
    plugins = [
        Tests(; project = false,
            aqua = true,
            aqua_kwargs = (; ambiguities = false, deps_compat = (check_extras = false)),
            jet = false),
        License(; name = "MIT"),
        GitHubActions(; x86 = true),
        CompatHelper(),
        Codecov(),
        Documenter{GitHubActions}(),
        Formatter(; style = "sciml")
    ]
)
