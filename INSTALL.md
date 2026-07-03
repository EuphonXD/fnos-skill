# FnOS Skill 瀹夎璇存槑

## 宸插畬鎴愮殑瀹夎

skill 宸叉垚鍔熷畨瑁呭埌浠ヤ笅浣嶇疆锛?```
~/.config/opencode/skills/fnos/SKILL.md
```

## 楠岃瘉瀹夎

### 1. 妫€鏌kill鏂囦欢
```bash
# 鏌ョ湅skill鏂囦欢
cat ~/.config/opencode/skills/fnos/SKILL.md

# 鏌ョ湅README
cat ~/.config/opencode/skills/fnos/README.md
```

### 2. 娴嬭瘯skill鍔犺浇
鍦╫pencode涓紝鎵ц浠ヤ笅鍛戒护娴嬭瘯skill鏄惁姝ｇ‘鍔犺浇锛?```
浣跨敤 fnos skill
```

鎴栬€呭皾璇曟墽琛屼竴浜涢鐗涚浉鍏虫搷浣滐紝skill搴旇浼氳嚜鍔ㄥ姞杞姐€?
## 浣跨敤鏂规硶

### 鑷姩瑙﹀彂
skill浼氬湪浠ヤ笅鎯呭喌鑷姩鍔犺浇锛?- 鎵ц椋炵墰NAS绯荤粺绠＄悊鍛戒护鏃?- 绠＄悊Docker瀹瑰櫒鏃?- 鎿嶄綔瀛樺偍鍗锋椂
- 閰嶇疆缃戠粶鏃?- 鎺掓煡绯荤粺闂鏃?
### 鎵嬪姩鍔犺浇
濡傛灉闇€瑕佹墜鍔ㄥ姞杞絪kill锛?```
鍔犺浇 fnos skill
```

## 涓昏鍔熻兘

### 1. 绯荤粺淇℃伅鏌ヨ
```bash
# 椋炵墰鐗堟湰淇℃伅
cat /etc/fnos-version

# 绯荤粺璧勬簮妫€鏌?df -h
free -h
```

### 2. Docker绠＄悊
```bash
# 瀹瑰櫒绠＄悊
docker ps
docker start/stop/restart <container>

# 闀滃儚绠＄悊
docker images
docker pull <image>
```

### 3. 瀛樺偍绠＄悊
```bash
# 瀛樺偍绌洪棿妫€鏌?df -h
du -sh /vol*/*

# 鍗风鐞?ls -la /vol1/
```

### 4. 缃戠粶閰嶇疆
```bash
# 缃戠粶妫€鏌?ip addr show
netstat -tuln
```

## 鍙俊鏉ユ簮

鎵ц椋炵墰鎿嶄綔鏃讹紝璇蜂紭鍏堝弬鑰冿細

1. **椋炵墰寮€鍙戣€呭紑鏀惧钩鍙?(FNOSP)**
   - https://github.com/FNOSP
   - 鐢ㄩ€旓細API鏂囨。銆佸紑鍙戣€呮寚鍗?
2. **椋炵墰甯姪涓績**
   - https://help.fnnas.com/
   - 鐢ㄩ€旓細瀹樻柟鏂囨。銆佸姛鑳芥寚鍗?
3. **椋炵墰绀惧尯璁哄潧**
   - https://club.fnnas.com/
   - 鐢ㄩ€旓細鏁呴殰鎺掗櫎銆佺ぞ鍖鸿В鍐虫柟妗?
### 鎼滅储鏂囨。
```bash
# 瀹樻柟鏂囨。鎼滅储
https://help.fnnas.com/?search=鍏抽敭璇?
# 绀惧尯鎼滅储
https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=鍏抽敭璇?```

## 鏇存柊skill

瑕佹洿鏂皊kill锛岀紪杈戜互涓嬫枃浠讹細
```
~/.config/opencode/skills/fnos/SKILL.md
```

鏇存柊鍚庨渶瑕侀噸鍚痮pencode浣挎洿鏀圭敓鏁堛€?
## 鍗歌浇skill

瑕佸嵏杞絪kill锛屽垹闄や互涓嬬洰褰曪細
```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 鏁呴殰鎺掗櫎

### skill鏈姞杞?1. 妫€鏌ユ枃浠惰矾寰勬槸鍚︽纭?2. 楠岃瘉鏂囦欢鏍煎紡鏄惁姝ｇ‘
3. 閲嶅惎opencode

### 鍛戒护涓嶅伐浣?1. 妫€鏌ュ懡浠よ娉?2. 楠岃瘉鏉冮檺
3. 鏌ョ湅绯荤粺鏃ュ織

### 鑾峰彇甯姪
1. 鏌ョ湅skill鏂囨。
2. 鎼滅储椋炵墰瀹樻柟鏂囨。
3. 鏌ラ槄绀惧尯璁哄潧

## 閰嶇疆

### 鑷畾涔塻kill璺緞
濡傛灉闇€瑕佸皢skill鏀惧湪鍏朵粬浣嶇疆锛屽彲浠ュ湪 opencode.json 涓厤缃細
```json
{
  "skills": {
    "paths": ["~/.config/opencode/skills"]
  }
}
```

### 绂佺敤skill
濡傛灉闇€瑕佺鐢ㄦskill锛屽彲浠ラ噸鍛藉悕鎴栧垹闄わ細
```
~/.config/opencode/skills/fnos/SKILL.md
```

## 璐＄尞

瑕佹敼杩涙skill锛?1. 鍙傝€冨畼鏂规枃妗ｉ獙璇佷俊鎭?2. 鍦ㄥ畨鍏ㄧ幆澧冧腑娴嬭瘯鍛戒护
3. 鏂囨。鍖栭鐗涚壒瀹氳€冭檻
4. 鍖呭惈鏁呴殰鎺掗櫎鎻愮ず