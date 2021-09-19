echo " "
echo "============================================="
echo "  Nukkit 常用插件安装脚本"
echo "  作者: Jonjs2333"
echo "  环境: Linux"
echo "  版本: v0.2-preview-1"
echo "============================================="
echo "  (1) 安装插件"
echo "  (2) 更新脚本"
echo "  (0) 退出"
echo "  注1: 会直接帮您下载到同目录下的 plugins 文件夹"
echo "  注2: 再次执行脚本? 请执行 sh plugin-install.sh"
echo "============================================="
echo "请在下方输入数字, 然后回车:"
read action
echo " "

if [[ $action == 0 ]]; then
	exit 1
fi

if [[ $action == 2 ]]; then
    echo "正在更新脚本..."
    wget http://api2.jonjs.cn/Minecraft/Nukkit/plugin-install.sh -O plugin-install.sh
    echo "正在更改脚本权限..."
    chmod 777 plugin-install.sh
    echo "更新成功! :D   旧版本脚本即将退出..."
    echo "请执行 sh plugin-install.sh 打开新版本!"
    exit 1
fi

if [[ $action == 1 ]]; then
	echo "开始下载 Nukkit 常用插件..."
	mkdir plugins
	cd plugins/
	
	echo "(1/10) 正在下载 EssentialsNK 插件..."
	wget https://cloudburstmc.org/resources/essentialsnk.15/download -O EssentialsNK.jar
	echo "(2/10) 正在下载 MobPlugin 插件..."
	wget https://cloudburstmc.org/resources/mobplugin.3/download -O MobPlugin.jar
	echo "(3/10) 正在下载 KotlibLib 插件..."
	wget https://cloudburstmc.org/resources/kotlinlib.48/download -O KotlinLib.jar
	echo "(4/10) 正在下载 PlaceholderAPI 插件..."
	wget https://cloudburstmc.org/resources/placeholderapi.104/download -O PlaceholderAPI.jar
	echo "(5/10) 正在下载 Holograms 插件..."
	wget https://cloudburstmc.org/resources/holograms.42/download -O Holograms.jar
	echo "(6/10) 正在下载 LuckPerms 插件..."
	wget https://ci.lucko.me/job/LuckPerms/1363/artifact/nukkit/loader/build/libs/LuckPerms-Nukkit-5.3.64.jar -O LuckPerms-Nukkit-5.3.64.jar
	echo "(7/10) 正在下载 DBLib 插件..."
	wget https://cloudburstmc.org/resources/dblib.12/version/570/download -O DBLib.jar
	echo "(8/10) 正在下载 FastAsyncWorldEdit 插件..."
	wget https://cloudburstmc.org/resources/fastasyncworldedit.30/download -O FastAsyncWorldEdit.jar
	echo "(9/10) 正在下载 AutoLagClear 插件..."
	wget https://cloudburstmc.org/resources/autolagclear.91/download -O AutoLagClear.jar
	echo "(10/10) 正在下载 WorldManager 插件..."
	wget https://cloudburstmc.org/resources/worldmanager-advanced-multiworld-plugin.560/download -O WorldManager.jar
	
	echo "插件已经下载完毕!"
	echo "已经退出脚本!"
	exit 1
fi

exit 1
