def timeConversion(s)
  if s.end_with?("PM")
    s.delete("PM")
    time = s.split(":")
    i = 0
    while i < time.length
      time[i] = time[i].to_i
      if time[i] < 10
        time[i] = "0" + time[i].to_s
      end
      i += 1
    end
    if time[0].to_i < 12
      time[0] = time[0].to_i + 12
    end
    p "#{time[0]}:#{time[1]}:#{time[2]}"
  elsif s.end_with?("AM")
    s.delete("AM")
    time = s.split(":")
    i = 0
    while i < time.length
      time[i] = time[i].to_i
      if time[i] < 10
        time[i] = "0" + time[i].to_s
      end
      i += 1
    end
    if time[0].to_i == 12
      time[0] = "00"
    end
    p "#{time[0]}:#{time[1]}:#{time[2]}"
  end
end

s = "07:05:45PM"
timeConversion(s)

# ====================
# 12時間(AM/PM)表示から24時間表示にコンバートする問題。

# まずAMで終わるのかPMで終わるのかで処理を分ける。
# PMの場合
#   PMを文字列から削除
#   文字列を:で切り分けてできた配列をtimeに代入することで、time配列には[時, 分, 秒]が格納される。
#   10以下の場合は09, 08などで出力したいので、
#   ループ内で配列の値は文字列なので、それぞれを数値に変換してから比較する。
#   でーたの整形ができたら出力する

# AMの場合
#   PMの処理に加えて、12時だった場合は00に変換。

# ====================