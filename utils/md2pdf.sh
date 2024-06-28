
#!/bin/bash

if [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "md2pdf.sh markdown_dir [OPTIONS]"
    echo ""
    echo "Generate PDF files from MD files"
    echo ""
    echo "PDF will only be created if non-existent or older than"
    echo "the corresponding markdown file."
    echo ""
    echo "Requires:"
    echo "  1) pandoc"
    echo "  2) latex"
    echo ""
    echo "Options:"
    echo "  -h or --help for help"
    echo "  -f or --force to create all PDFs"
    exit 0
fi

if ! command -v "pandoc" &> /dev/null; then
    echo "Pandoc executable not found, exiting!"
    exit 1
fi

if ! command -v "latex" &> /dev/null; then
    echo "LaTex executable not found, exiting!"
    exit 1
fi

for mdfile in $(ls $1/*.md); do
    if [ -f "$mdfile" ]; then  # Ensure it's a regular file
        echo "Found" $mdfile
        pdffile=$(basename "$mdfile" "md")pdf
        if [[ $2 == "-f" || $2 == "--force" ]]; then
            echo "Processing to" $pdffile
            pandoc $mdfile -o $pdffile -V geometry:"margin=1in" -V fontsize="12pt" -V colorlinks
        else
            if [ ! -f $pdffile ]; then
                echo "Processing to" $pdffile
                pandoc $mdfile -o $pdffile -V geometry:"margin=1in" -V fontsize="12pt" -V colorlinks
            fi            
            if [ $mdfile -nt $pdffile ]; then
                echo "Processing to" $pdffile
                pandoc $mdfile -o $pdffile -V geometry:"margin=1in" -V fontsize="12pt" -V colorlinks
            fi
        fi
    fi
done
