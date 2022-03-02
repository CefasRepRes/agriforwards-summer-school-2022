summer-school-2022.docx: README.md
	pandoc -o summer-school-2022.docx -f markdown -t docx --number-sections README.md
	cp summer-school-2022.docx summer-school-$(shell date +"%Y%m%d").docx

clean:
	rm *.docx
