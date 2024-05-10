using Documenter
using DocumenterVitepress
using MyDocs
using LiveServer

# DocMeta.setdocmeta!(MyDocs, :DocTestSetup, :(using MyDocs); recursive=true)

makedocs(;
    modules=[MyDocs],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    repo="https://github.com/YabusameHoulen/MTDocs.jl",
    sitename="MyDocs",
    format=DocumenterVitepress.MarkdownVitepress(;
        repo="https://github.com/YabusameHoulen/MTDocs.jl",
        devurl="dev",
        deploy_url="YabusameHoulen.github.io/MTDocs.jl",
    ),
    pages=[
        "Home" => "index.md",
    ],
    warnonly=true,
)

deploydocs(;
    repo="github.com/YabusameHoulen/MTDocs.jl.git",
    devbranch="master",
    push_preview=true,
)