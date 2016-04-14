clear
echo -e '========================================================='
echo '  deploying to aws s3'
echo '========================================================='

aws s3 sync . s3://vogelcountdown.com --profile personal \
	--exclude "node_modules/*" \
	--exclude "commit_images/*" \
	--exclude "stylesheets/*" \
	--exclude ".git/*" \
    --exclude "*.md" \
    --exclude "*.sh" \
    --exclude ".*" \
    --exclude "CNAME" \

echo -e '\n========================================================='
echo '  done deploying '
echo -e '========================================================='
exit 0
