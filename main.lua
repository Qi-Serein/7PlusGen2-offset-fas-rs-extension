API_VERSION = 4

function load_fas(pid, pkg)
    if (pkg == "com.tencent.tmgp.sgame")
    then
        set_extra_policy_rel(0, 4, -300000, -100000)
        set_extra_policy_abs(7, 2000000, 2750000)
    elseif (pkg == "com.tencent.tmgp.pubgmhd" or pkg == "com.rekoo.pubgm" or pkg == "com.tencent.ig")
    then
        set_extra_policy_rel(4, 7, -250000, -150000)
    elseif (pkg == "com.miHoYo.Yuanshen" or pkg == "com.miHoyo.ys.bilibili")
    then
        set_extra_policy_rel(0, 4, -150000, 0)
    elseif (pkg == "com.miHoYo.Nap" or pkg == "com.miHoYo.Nap.bilibili")
    then
	    set_ignore_policy(0, true)
        set_extra_policy_abs(4, 2000000, 2350000)
        set_extra_policy_rel(4, 7, -150000, 0)
    elseif (pkg == "com.miHoYo.hkrpg" or pkg == "com.miHoYo.hkrpg.bilibili")
    then
	    set_ignore_policy(0, true)
        set_extra_policy_abs(4, 2000000, 2350000)
        set_extra_policy_rel(4, 7, -150000, 0)
    elseif (pkg == "com.netease.aceracer")
    then
        set_extra_policy_rel(4, 7, -300000, -100000)
    elseif (pkg == "com.tencent.KiHan")
    then
        set_extra_policy_rel(0, 4, -300000, -100000)
    elseif (pkg == "com.tencent.tmgp.cod")
    then
        set_extra_policy_rel(0, 4, -250000, -100000)
    elseif (pkg == "com.netease.l22")
    then
        set_extra_policy_rel(0, 4, -350000, -100000)
    elseif (pkg == "com.tencent.tmgp.cf")
    then
        set_extra_policy_rel(4, 7, -250000, -150000)
    elseif (pkg == "com.netease.dfjs" or pkg == "com.netease.dfjs.mi")
    then
        set_extra_policy_rel(0, 4, -300000,-100000)
    elseif (pkg == "com.tencent.lolm")
    then
        set_extra_policy_rel(0, 4, -300000, -100000)
    elseif (pkg == "com.kurogame.mingchao")
    then
        set_extra_policy_rel(0, 4, -300000, -100000)
        set_extra_policy_abs(7, 2300000, 2800000)
    elseif (pkg == "com.tencent.mf.uam")
    then
        set_extra_policy_rel(4, 7, -300000, -150000)
    elseif (pkg == "com.tencent.tmgp.dfm")
    then
        set_extra_policy_rel(4, 7, -300000, -150000)    
    end
end

function unload_fas()
    set_ignore_policy(0, false)
    set_ignore_policy(4, false)
    set_ignore_policy(7, false)
    remove_extra_policy(0)
    remove_extra_policy(4)
    remove_extra_policy(7)
end