MODDIR=${0%/*}
EXTENSIONS=/dev/fas_rs/extensions

until [ -d $EXTENSIONS ]; do
	sleep 1s
done

id=$(awk -F= '/id/ {print $2}' $MODDIR/module.prop)
cp -f $MODDIR/main.lua $EXTENSIONS/${id}.lua
