using Documenter
using DocumenterVitepress
using MyDocs
using LiveServer

DocMeta.setdocmeta!(MyDocs, :DocTestSetup, :(using MyDocs); recursive=true)

makedocs(;
    modules=[MyDocs],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    sitename="MyDocs",
    format=DocumenterVitepress.MarkdownVitepress(;
        repo="https://github.com/YabusameHoulen/MyDocs",
        devurl = "dev",
        deploy_url = "YabusameHoulen.github.io/MyDocs",
    ),
    pages=[
        "Home" => "index.md",
    ],
    warnonly = true,
)
serve(;dir = "build/final_site/")

deploydocs(;
    repo="github.com/YabusameHoulen/MyDocs",
    push_preview=true,
    devbranch="master",
)
