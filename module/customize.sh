LOCALE=$(getprop persist.sys.locale)

local_print() {
	if [ $LOCALE = zh-CN ]; then
		ui_print "$1"
	else
		ui_print "$2"
	fi
}

if [ "$(getprop fas-rs-installed)" = "" ]; then
	local_print "请先安装fas-rs再安装此插件" "Please install fas-rs first"
	abort
elif [ "$(getprop ro.soc.model)" != "SM7475" ]; then
    local_print "检测到非目标soc" "Non-Target soc detected"
    abort
fi