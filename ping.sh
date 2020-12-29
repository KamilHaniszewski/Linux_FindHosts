ADDRES=$1
COUNT=$2

res=`ping -c "$COUNT" "$ADDRES" | grep bytes | wc -l`

temp=$[$COUNT+1]

if (($temp == $res));
then
	echo "1"
else
	echo "0"
fi
