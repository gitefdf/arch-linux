
bar="▁▂▃▄▅▆▇█"         # 定义条形图字符，从低到高
dict="s/;//g;"           # 初始替换命令（去除分号）

i=0
while [ $i -lt ${#bar} ]  # 遍历字符长度（8个）
do
    dict="${dict}s/$i/${bar:$i:1}/g;"  # 拼接sed替换命令，把数字替换为对应条形字符
    i=$((i=i+1))
done

config_file="/tmp/polybar_cava_config"  # 临时配置文件路径
echo "
[general]
bars = 10

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
" > $config_file                            # 写入配置文件

# 运行 cava，读取输出，替换数字为字符，打印
cava -p $config_file | while read -r line; do
    echo $line | sed $dict
done

