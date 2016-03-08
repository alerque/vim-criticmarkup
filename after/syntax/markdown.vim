syn region criticAddition matchgroup=criticAdd start=/{++/ end=/++}/ containedin=pandocDefinitionBlock,pandocYAMLHeader,yamlBlock,yamlHeader,yamlPlainScalar,yamlFlowString concealends
syn region criticDeletion matchgroup=criticDel start=/{--/ end=/--}/ containedin=pandocDefinitionBlock,pandocYAMLHeader,yamlBlock,yamlHeader,yamlPlainScalar,yamlFlowString concealends
syn region criticSubstitutionDeletion start=/{\~\~/ end=/.\(\~>\)\@=/ containedin=pandocDefinitionBlock,pandocYAMLHeader,yamlBlock,yamlHeader,yamlPlainScalar,yamlFlowString keepend
syn region criticSubstitutionAddition start=/\~>/ end=/\~\~}/ containedin=pandocDefinitionBlock,pandocYAMLHeader,yamlBlock,yamlHeader,yamlPlainScalar,yamlFlowString keepend
syn match criticSubstitutionDeletionMark /{\~\~/ contained containedin=criticSubstitutionDeletion conceal
syn match criticSubstitutionAdditionMark /\~\~}/ contained containedin=criticSubstitutionAddition conceal
syn region criticComment matchgroup=criticMeta start=/{>>/ end=/<<}/ containedin=pandocDefinitionBlock,pandocYAMLHeader,yamlBlock,yamlHeader,yamlPlainScalar,yamlFlowString concealends
syn region criticHighlight matchgroup=criticHighlighter start=/{==/ end=/==}/ containedin=pandocDefinitionBlock,pandocYAMLHeader,yamlBlock,yamlHeader,yamlPlainScalar,yamlFlowString concealends

hi criticAdd guibg=#00ff00 guifg=#101010 ctermbg=46 ctermfg=16
hi criticDel guibg=#ff0000 guifg=#ffffff ctermbg=196 ctermfg=231
hi link criticAddition criticAdd
hi link criticDeletion criticDel
hi link criticSubstitutionAddition criticAddition
hi link criticSubstitutionDeletion criticDeletion
hi link criticSubstitutionAdditionMark criticAddition
hi link criticSubstitutionDeletionMark criticDeletion
hi criticMeta guibg=#0099FF guifg=#101010 ctermbg=33 ctermfg=16
hi criticHighlighter guibg=#ffff00 guifg=#101010 ctermbg=11 ctermfg=16
hi link criticComment criticMeta
hi link criticHighlight criticHighlighter
