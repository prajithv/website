find content -print | grep .md | while IFS= read -r p; do
    pandoc --template=html.template -p $p > $(echo $p | sed 's/content/build/' | sed 's/.md/.html/')
done