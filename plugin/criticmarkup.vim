augroup criticmarkup
	au!
	au Filetype pandoc,markdown,mkd,txt call criticmarkup#Init()
	"au! BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn call criticmarkup#InjectHighlighting()
augroup END
