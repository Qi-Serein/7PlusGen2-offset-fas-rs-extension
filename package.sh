SHDIR="$(dirname $(readlink -f "$0"))"

cd $SHDIR
rm -rf output
mkdir -p output
cp -r module/* output
