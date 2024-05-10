using MyDocs
using Documenter

DocMeta.setdocmeta!(MyDocs, :DocTestSetup, :(using MyDocs); recursive=true)

makedocs(;
    modules=[MyDocs],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    sitename="MyDocs.jl",
    format=Documenter.HTML(;
        canonical="https://YabusameHoulen.github.io/MyDocs.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/YabusameHoulen/MyDocs.jl",
    devbranch="master",
)
