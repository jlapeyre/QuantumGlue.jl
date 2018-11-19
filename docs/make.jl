using Documenter, QuantumGlue

makedocs(;
    modules=[QuantumGlue],
    format=:html,
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/jlapeyre/QuantumGlue.jl/blob/{commit}{path}#L{line}",
    sitename="QuantumGlue.jl",
    authors="John Lapeyre",
    assets=[],
)

deploydocs(;
    repo="github.com/jlapeyre/QuantumGlue.jl",
    target="build",
    julia="1.0",
    deps=nothing,
    make=nothing,
)
