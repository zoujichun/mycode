# Conky settings #
background no
update_interval 1
cpu_avg_samples 10
net_avg_samples 8
override_utf8_locale yes
double_buffer yes
#no_buffers yes
text_buffer_size 4096
#imlib_cache_size 0
#temperature_unit fahrenheit
# Window specifications #
own_window yes
own_window_type desktop
own_window_transparent yes
own_window_hints undecorate,sticky,skip_taskbar,skip_pager,below
border_inner_margin 0
border_outer_margin 0
#minimum_size 150 300
maximum_width 200
alignment tr
gap_x 15
gap_y 55
# Graphics settings #
draw_shades no
draw_outline no
draw_borders no
draw_graph_borders no
# Text settings #
use_xft yes
#xftfont DejaVuSansMono:size=8
xftfont WenQuanYi Micro Hei Mono:size=8
xftalpha 0.5
uppercase no
temperature_unit celsius
default_color FFFFFF
# Lua Load  #
lua_load ~/.conky/lua/scripts/clock_rings.lua
lua_draw_hook_pre clock_rings

TEXT
${color b2c7c8}${font DejaVu Sans Mono:size=15}${time %H:%M}${alignr}${font}${color b2c7c8}${time %F}
#${color 797979}${stippled_hr 15}${color}
${voffset 5}${color 7c9db0}${font DejaVu Sans Mono:size=10}${execpi 300 DJS=`date +%_d`; cal | sed '1d' | sed '/./!d' | sed 's/$/                     /' | fold -w 21 | sed -n '/^.\{21\}/p' | sed 's/^/${alignc} /' | sed /" $DJS "/s/" $DJS "/" "'${color ff8d00}'"$DJS"'${color 8F8F8F}'" "/}${font}
${color 797979}$stippled_hr${color}${font}
${alignc}${color 7e7e7e}Hour


${offset 5}${voffset 10}Month

${voffset 3}${offset 16}Date




${voffset 2}${offset 130}Week
${color}${cpu cpu0}%
${color}${cpu cpu1}%
${acpitemp}°C${color 2a8300}${offset -3}${voffset -38}${font IllustrateIT:size=18}q${font}


${color}${goto 45}${memperc}%
${color 3399FF}${goto 45}${font :style=Bold:pixelsize=10}RAM${font}
${goto 66}${voffset 18}${color 3399FF}${font :style=Bold:pixelsize=12}/  ${font}${color}${fs_used_perc /}%  ${voffset -20}${color 3399FF}${font Computers:size=24}>
${voffset -17}${goto 48}${color 3399FF}${font :style=Bold:pixelsize=10}/home  ${font}${color}${fs_used_perc /home}%


${color 3399FF}${goto 95}${font :style=Bold:size=10}Network${font}${color}
${goto 85}${color 98AE68}${font PizzaDude Bullets:size=10}O${font}${color}${upspeed eth0}
${goto 110}${color 98AE68}${font PizzaDude Bullets:size=10}U${font}${color}${downspeed eth0}
${voffset -32}${color 577080}${font Webdings:size=36}U${voffset 10}${color ff8d00}${font :style=Bold:size=12}RSS  ${color 797979}$stippled_hr${color}
${font WenQuanYi Micro Hei:size=8}
#${rss http://rss.sina.com.cn/news/marquee/ddt.xml 1 item_titles 8}
#{rss http://rss.news.sohu.com/rss/focus.xml}
#${rss http://news.baidu.com/n?cmd=1&class=civilnews&tn=rss 5 item_titles 10}
#${rss http://news.163.com/special/00011K6L/rss_newstop.xml 1 item_titles 6}

#${rss http://news.google.com.hk/news?cf=all&ned=cn&hl=zh-CN&output=rss 1 item_titles 5}
#${rss http://news.163.com/special/00011K6L/rss_gn.xml 1 item_titles 3}
#${rss http://news.163.com/special/00011K6L/rss_gj.xml 1 item_titles 6}

#${rss http://www.cnbeta.com/backend.php 1 item_titles 6}
#${rss http://rss.zol.com.cn/labs.xml 1 item_titles 3}
#${rss http://rss.zol.com.cn/market.xml 1 item_titles 3}
#${rss http://rss.zol.com.cn/zdc.xml 1 item_titles 3}
#
#${color 3399FF}KUNMING Weather  ${color 797979}$stippled_hr${color}
#${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=CN}
#${font Weather:size=24}${color 99EEFF}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=WF}${font}${color}${voffset -20}${offs#et 10}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=CC}${offset 10}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=HT}${offset 10}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=WS} ${font Arrows:size=10}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=BF}${font}
#${offset 60}Sol: ${color}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=SR}-${execi 3600 python conkyForecast.py --location#=CHXX0076 --datatype=SS}
#${color 3399FF}${font Weather:size=16}${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=WF --startday=1 --endday=4 --spaces=3}#${font}${color}
#${execi 3600 python conkyForecast.py --location=CHXX0076 --datatype=HT --startday=1 --endday=4 --spaces=5}
