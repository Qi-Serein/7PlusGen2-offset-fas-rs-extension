# Copyright 2023 shadow3aaa@gitbub.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
LOCALE=$(getprop persist.sys.locale)

local_print() {
	if [ $LOCALE = zh-CN ]; then
		ui_print "$1"
	else
		ui_print "$2"
	fi
}

if [ "$(getprop fas-rs-installed)" = "" ] && [ ! -f "/data/adb/fas-rs/fas-rs-mod-installed" ]; then
    local_print "- 请先安装fas-rs或fas-rs-mod再安装此插件" "- Please install fas-rs or fas-rs-mod first"
    abort
fi
if [ "$(getprop ro.soc.model)" != "SM7475" ]; then
    local_print "- 检测到非目标soc" "- Non-Target soc detected"
    abort
fi