API_VERSION = 3

function load_fas(pid, pkg)
    if (pkg == "com.tencent.tmgp.sgame")
    then
        set_policy_freq_offset(0, -300000)
        set_policy_freq_offset(4, -150000)
    elseif (pkg == "com.tencent.tmgp.pubgmhd" or pkg == "com.rekoo.pubgm" or pkg == "com.tencent.ig")
    then
        set_policy_freq_offset(4, -300000)
    elseif (pkg == "com.miHoYo.Yuanshen" or pkg == "com.miHoyo.ys.bilibili")
    then
        set_policy_freq_offset(4, -100000)
    elseif (pkg == "com.miHoYo.Nap" or pkg == "com.miHoYo.Nap.bilibili")
    then
        set_ignore_policy(4, -100000)
    elseif (pkg == "com.miHoYo.hkrpg" or pkg == "com.miHoYo.hkrpg.bilibili")
    then
        set_ignore_policy(4, -100000)
    elseif (pkg == "com.netease.aceracer")
    then
        set_policy_freq_offset(4, -100000)
        set_policy_freq_offset(7, -300000)
    elseif (pkg == "com.tencent.KiHan")
    then
        set_policy_freq_offset(0, -300000)
        set_policy_freq_offset(4, -250000)
    elseif (pkg == "com.tencent.tmgp.cod")
    then
        set_policy_freq_offset(4, -300000)
    elseif (pkg == "com.netease.l22")
    then
        set_policy_freq_offset(4, -350000)
    elseif (pkg == "com.tencent.tmgp.cf")
    then
        set_policy_freq_offset(4, -300000)
    elseif (pkg == "com.netease.dfjs.mi")
    then
        set_policy_freq_offset(0, -200000)
        set_policy_freq_offset(4, -400000)
    end
end

function unload_fas()
    set_ignore_policy(4, false)
    set_policy_freq_offset(4, 0)
end
