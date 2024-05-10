using Documenter
using DocumenterVitepress
using MyDocs

# DocMeta.setdocmeta!(MyDocs, :DocTestSetup, :(using MyDocs); recursive=true)

makedocs(;
    modules=[MyDocs],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    repo="https://github.com/YabusameHoulen/MyDocs",
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


deploydocs(;
    repo="github.com/YabusameHoulen/MyDocs.git",
    devbranch = "master",
    push_preview=true,
)
