figlet paser-link
echo "by vøidh7"
echo

read -p "digite a url:" link

wget "$link"

echo "extraindo os links"
grep -o 'https\?://[^"]*' index.html | grep -v " " | sort -u > output.txt
echo "salvo em output.txt"

rm index.htmll
