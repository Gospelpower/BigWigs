local L = LibStub("AceLocale-3.0"):NewLocale("BigWigs", "zhCN")
if not L then return end

L.getNewRelease = "你的 BigWigs 已过期（/bwv）但是可以使用 Curse 客户端简单升级。另外，也可以从 curse.com 或 wowinterface.com 手动升级。"
L.warnTwoReleases = "你的 BigWigs 已过期2个发行版！你的版本可能有错误，功能缺失或不正确的计时器。所以强烈建议你升级。"
L.warnSeveralReleases = "|cffff0000你的 BigWigs 已过期多个发行版！！我们*强烈*建议你更新，以防止把问题同步给其他玩家！|r"

L.gitHubTitle = "BigWigs 位于 GitHub"
L.gitHubDesc = "BigWigs 是一个在 GitHub 上的开源软件。我们一直在寻找新的朋友帮助我们和欢迎任何人检测我们的代码，做出贡献和提交错误报告。BigWigs 今天的伟大很大程度上一部分因为伟大的魔兽世界社区帮助我们。\n\n|cFF33FF99我们的 API 现在已在 GitHub 维基记录并且可以自由读取。|r"

L.activeBossModules = "激活首领模块："
L.advanced = "高级选项"
L.alphaRelease = "你所使用的 BigWigs %s 为“α测试版”（%s）"
L.already_registered = "|cffff0000警告：|r |cff00ff00%s|r（|cffffff00%s|r）在 BigWigs 中已经存在模块，但存在模块仍试图重新注册。可能由于更新失败的原因，通常表示您有两份模块拷贝在您插件的文件夹中。建议删除所有 BigWigs 文件夹并重新安装。"
L.altpower = "交替能量显示"
L.ALTPOWER = "交替能量显示"
L.altpower_desc = "显示交替能量窗口，可以显示团队成员交替能量计数。"
L.ALTPOWER_desc = "一些首领战斗团队中的玩家将用到交替能量方式。交替能量显示提供了玩家最少/最多交替能量的快速预览，可以帮助特定的战术或分配。"
L.back = "<< 返回"
L.BAR = "计时条"
L.BAR_desc = "当遇到某些技能时计时条将会适当显示。如果这个功能伴随着你想要隐藏的计时条，禁用此选项。"
L.berserk = "狂暴"
L.berserk_desc = "当首领进入狂暴状态时发出警报。"
L.best = "最快："
L.blizzRestrictionsConfig = "由于暴雪的限制必须脱离战斗后才可进行配置，然后才可以在战斗中使用。"
L.blizzRestrictionsZone = "因为暴雪的战斗限制将在等待战斗结束后加载。"
--L.bosses = "Bosses"
L.chatMessages = "聊天框体信息"
L.chatMessagesDesc = "除了显示设置，输出所有 BigWigs 信息到默认聊天框体。"
L.colors = "颜色"
L.configure = "配置"
L.coreAddonDisabled = "当%s被禁用时，BigWigs 将无法正常工作。你可以在角色选择屏幕的插件控制面板开启它们。"
L.COUNTDOWN = "倒数"
L.COUNTDOWN_desc = "如启用，将增加最少5秒的语音和可见倒数。想像一下某人倒数“5…4…3…2…1…”时在屏幕中间显示大数字。"
L.dbmFaker = "伪装成 DBM 用户"
L.dbmFakerDesc = "如果 DBM 用户进行版本检查，看看谁在使用 DBM，他们会看到你的列表上。当公会强制使用 DBM 时非常有用。"
L.dbmUsers = "DBM 用户："
L.DISPEL = "只对驱散和打断"
L.DISPEL_desc = "如果希望看到你不能打断和驱散的技能警报，禁用此选项。"
L.dispeller = "|cFFFF0000只警报驱散和打断。|r"
L.EMPHASIZE = "醒目"
L.EMPHASIZE_desc = "启用这些将醒目具有这种能力相关的任何信息。使它们更大和更可见。可以在主选项的“信息”设置醒目信息的大小和的字体。"
L.finishedLoading = "战斗已结束，BigWigs 已完成加载。"
L.FLASH = "闪烁"
L.FLASH_desc = "有些技能可能比其他的更重要。如果想这些重要技能施放时屏幕进行闪烁，选中此选项。"
L.flashScreen = "闪屏"
L.flashScreenDesc = "某些技能极其重要到需要充分被重视。当这些能力对你造成影响时 BigWigs 可以使屏幕闪烁。"
L.flex = "弹性"
L.healer = "|cFFFF0000只警报治疗。|r"
L.HEALER = "只对治疗"
L.HEALER_desc = "有些技能只对治疗重要。如想看到这些技能警报而无视你的职业，禁用此选项。"
L.heroic = "英雄"
L.heroic10 = "10人英雄"
L.heroic25 = "25人英雄"
L.ICON = "标记"
L.ICON_desc = "BigWigs 可以根据技能用图标标记人物。这将使他们更容易被辨认。"
L.introduction = "欢迎使用 BigWigs 戏弄各个首领。请系好安全带，吃吃花生并享受这次旅行。它不会吃了你的孩子，但会协助你的团队与新的首领进行战斗就如同享受饕餮大餐一样。"
L.kills = "击杀："
L.lfr = "随机团队"
L.listAbilities = "列出技能到团队聊天"
L.ME_ONLY = "只对自身"
L.ME_ONLY_desc = "当启用此选项时只有对你有影响的技能信息才会被显示。比如，“炸弹：玩家”将只会在你是炸弹时显示。"
L.MESSAGE = "信息"
L.MESSAGE_desc = "大多数遇到技能出现一个或多个信息时 BigWigs 将在屏幕上显示。如果禁用此选项，没有信息附加选项，如果有，将会被显示。"
L.minimapIcon = "小地图图标"
L.minimapToggle = "打开或关闭小地图图标。"
L.missingAddOn = "请注意，这个区域需要 |cFF436EEE%s|r 插件计时器才可被显示。"
L.modulesDisabled = "所有运行中的模块都已禁用。"
L.modulesReset = "所有运行中的模块都已重置。"
L.mythic = "史诗"
L.noBossMod = "没有首领模块："
L.norm10 = "10人"
L.norm25 = "25人"
L.normal = "普通"
L.officialRelease = "你所使用的 BigWigs %s 为官方正式版（%s）"
L.offline = "离线"
L.oldVersionsInGroup = "在你队伍里使用旧版本或没有使用 BigWigs。你可以用 /bwv 获得详细内容。"
L.outOfDate = "过期："
L.PROXIMITY = "近距离显示"
L.PROXIMITY_desc = "有些技能有时会要求团队散开。近距离显示为这些技能独立的设置一个窗口告诉你谁离你过近是并且是不安全的。"
L.PULSE = "脉冲"
L.PULSE_desc = "除了闪屏之外，也可以使特定技能的图标随之显示在你的屏幕上，以提高注意力。"
L.raidIcons = "团队标记"
L.raidIconsDesc = [=[团队中有些首领模块使用团队标记来为某些中了特定技能的队员打上标记。例如类似“炸弹”类或心灵控制的技能。如果你关闭此功能，你将不会给队员打标记。

|cffff4411只有团队领袖或被提升为助理时才可以这么做！|r]=]
L.removeAddon = "请移除“|cFF436EEE%s|r”，其已被“|cFF436EEE%s|r”所替代。"
L.resetPositions = "重置位置"
L.SAY = "说"
L.SAY_desc = "聊天泡泡容易辨认。BigWigs 将使用说的信息方式通知给附近的人告诉他们你中了什么技能。"
L.selectEncounter = "选择战斗"
L.slashDescBreak = "|cFFFED000/break:|r 发送休息时间到团队。"
L.slashDescConfig = "|cFFFED000/bw:|r 开启 BigWigs 配置。"
L.slashDescLocalBar = "|cFFFED000/localbar:|r 创建一个只有自身可见的自定义计时条。"
L.slashDescPull = "|cFFFED000/pull:|r 发送拉怪倒数提示到团队。"
L.slashDescRaidBar = "|cFFFED000/raidbar:|r 发送自定义计时条到团队。"
L.slashDescRange = "|cFFFED000/range:|r 开启范围侦测。"
L.slashDescTitle = "|cFFFED000命令行：|r"
L.slashDescVersion = "|cFFFED000/bwv:|r 进行 BigWigs 版本检测。"
L.sound = "音效"
L.sourceCheckout = "你所使用的 BigWigs %s 为从源直接检出的。"
L.stages = "阶段"
L.stages_desc = "启用首领不同阶段的相关功能，如近距离显示、计时条等。"
L.statistics = "统计"
L.tank = "|cFFFF0000只警报坦克。|r"
L.TANK = "只对坦克"
L.TANK_desc = "有些技能只对坦克重要。如想看到这些技能警报而无视你的职业，禁用此选项。"
L.tankhealer = "|cFFFF0000只警报坦克和治疗。|r"
L.TANK_HEALER = "只对坦克和治疗"
L.TANK_HEALER_desc = "有些技能只对坦克和治疗重要。如想看到这些技能警报而无视你的职业，禁用此选项。"
L.test = "测试"
L.testBarsBtn = "创建测试计时条"
L.testBarsBtn_desc = "创建一个测试计时条以便于测试当前显示设置。"
L.toggleAnchorsBtn = "切换锚点"
L.toggleAnchorsBtn_desc = "切换显示或隐藏全部锚点。"
L.tooltipHint = [=[|cffeda55f点击|r图标重置所有运行中的模块。
|cffeda55fAlt-点击|r可以禁用所有首领模块。
|cffeda55f右击|r打开选项。]=]
L.upToDate = "已更新："
L.VOICE = "语音"
L.VOICE_desc = "如果安装了语音插件，此选项可以开启并播放警报音效文件。"
L.warmup = "预备"
L.warmup_desc = "首领战斗开始前预备时间。"
L.wipes = "团灭："
L.zoneMessages = "显示区域信息"
L.zoneMessagesDesc = "禁用此项 BigWigs 在进入新区域时将停止显示已有计时器。建议不要关闭此选项，因为可能在进入新的区域时需要创建新的计时器，这是非常有帮助的。"

