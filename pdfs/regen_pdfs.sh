# regenerate pdfs from markdown in repo
# requires Node.js package: markdown-pdf
# https://www.npmjs.com/package/markdown-pdf

for fname in ../*.md
do
  markdown-pdf $fname
done

for fname in ../*.pdf
do
  mv $fname .
done

echo "pdf files successfully regenerated"