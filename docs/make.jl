using Documenter
using DocumenterVitepress

# DocMeta.setdocmeta!(MyDocs, :DocTestSetup, :(using MyDocs); recursive=true)

makedocs(;
    # modules=[MyDocs],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    repo="https://github.com/YabusameHoulen/MTDocs.jl",
    sitename="MyDocs",
    format=DocumenterVitepress.MarkdownVitepress(;
        repo="https://github.com/YabusameHoulen/MTDocs.jl",
        devurl="dev",
        devbranch="master",
        ### temporal adjustment to preview Documententation development instantly
        # md_output_path = "test",
        # build_vitepress = false,
    ),
    pages=[
        "Home" => "index.md",
    ],
    warnonly=true,
    ### temporal adjustment to preview Documententation development instantly
    # clean = false,
)

deploydocs(;
    repo="github.com/YabusameHoulen/MTDocs.jl.git",
    devbranch="master",
    branch = "gh-pages",
    push_preview=true,
)
