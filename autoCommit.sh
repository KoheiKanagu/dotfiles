while true
do
	git add .
	git commit -m "auto commit"
	git push
	echo "wait 3600sec"
	sleep 3600
done