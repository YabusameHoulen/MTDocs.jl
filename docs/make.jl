using Documenter
using DocumenterVitepress
using MyDocs

DocMeta.setdocmeta!(MyDocs, :DocTestSetup, :(using MyDocs); recursive=true)

makedocs(;
    modules=[MyDocs],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    repo="https://github.com/YabusameHoulen/MyDocs",
    sitename="MyDocs",
    format=DocumenterVitepress.MarkdownVitepress(;
        canonical="https://YabusameHoulen.github.io/MyDocs",
        edit_link="master",
        devurl = "dev",
        deploy_url = "YabusameHoulen.github.io/MyDocs",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
    warnonly = true,
)

deploydocs(;
    repo="github.com/YabusameHoulen/MyDocs",
    push_preview=true,
    devbranch="master",
)
