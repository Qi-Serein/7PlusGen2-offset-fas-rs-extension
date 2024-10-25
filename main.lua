API_VERSION = 3

set_ignore_policy(0, true)

function load_fas(pid, pkg)
    if (pkg == "com.tencent.tmgp.sgame")
    then
        set_policy_freq_offset(4, -100000)
        set_policy_freq_offset(7, -400000)
    elseif (pkg == "com.miHoYo.Yuanshen" or pkg == "com.miHoyo.ys.bilibili")
    then
        set_policy_freq_offset(4, 100000)
    elseif (pkg == "com.miHoYo.Nap" or pkg == "com.miHoYo.Nap.bilibili")
    then
        set_ignore_policy(4, true)
    elseif (pkg == "com.tencent.tmgp.pubgmhd")
    then
        set_policy_freq_offset(4, -300000)
    elseif (pkg == "com.miHoYo.hkrpg" or pkg == "com.miHoYo.hkrpg.bilibili")
    then
        set_ignore_policy(4, true)
    elseif (pkg == "com.netease.aceracer")
    then
        set_policy_freq_offset(4, -100000)
        set_policy_freq_offset(7, -300000)
    elseif (pkg == "com.tencent.KiHan")
    then
        set_policy_freq_offset(4, -500000)
        elseif (pkg == "com.tencent.tmgp.cod")
    then
        set_policy_freq_offset(4, -400000)
    end
end

function unload_fas()
    set_ignore_policy(4, false)
    set_policy_freq_offset(4, 0)
end