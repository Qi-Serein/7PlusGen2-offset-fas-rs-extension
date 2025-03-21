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
MODDIR=${0%/*}
EXTENSIONS=/dev/fas_rs/extensions
MOD_EXTENSIONS=/data/adb/fas-rs/extensions
id=$(awk -F= '/id/ {print $2}' $MODDIR/module.prop)

if [ -f "/data/adb/fas-rs/fas-rs-mod-installed" ]; then
    until [ -d $MOD_EXTENSIONS ]; do
    	sleep 1
    done
else
    until [ -d $EXTENSIONS ]; do
    	sleep 1
    done
fi

if [ -f "/data/adb/fas-rs/fas-rs-mod-installed" ]; then
    cp -f $MODDIR/main.lua $MOD_EXTENSIONS/${id}.lua
else
    cp -f $MODDIR/main.lua $EXTENSIONS/${id}.lua
fi