summer-school-2022.docx: README.md
	pandoc -o summer-school-2022.docx -f markdown -t docx --number-sections README.md

clean:
	rm *.docx
