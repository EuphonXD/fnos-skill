# FnOS Skill 瀹夎鍜屼娇鐢ㄦ寚鍗?
## 宸插畬鎴?
鉁?**Skill鏂囦欢宸插垱寤?*
- 浣嶇疆锛歚~/.config/opencode/skills/fnos/`
- 鍖呭惈锛歋KILL.md, README.md, INSTALL.md, SUMMARY.md, test.sh, test.ps1

鉁?**GitHub浠撳簱宸插垱寤?*
- 浠撳簱鍦板潃锛歨ttps://github.com/EuphonXD/fnos-skill
- 鎵€鏈夋枃浠跺凡涓婁紶

## 瀹夎鏂规硶

### 鏂规硶1锛氫粠GitHub鍏嬮殕锛堟帹鑽愶級

```bash
# 鍏嬮殕浠撳簱鍒版湰鍦?git clone https://github.com/EuphonXD/fnos-skill.git

# 澶嶅埗skill鍒皁pencode鐩綍
cp -r fnos-skill/* ~/.config/opencode/skills/fnos/
```

### 鏂规硶2锛氭墜鍔ㄤ笅杞?
1. 璁块棶 https://github.com/EuphonXD/fnos-skill
2. 涓嬭浇鎵€鏈夋枃浠?3. 澶嶅埗鍒?`~/.config/opencode/skills/fnos/`

## 浣跨敤鏂规硶

### 1. 鑷姩鍔犺浇
skill浼氬湪鎵ц椋炵墰NAS鐩稿叧鎿嶄綔鏃惰嚜鍔ㄥ姞杞姐€?
### 2. 鎵嬪姩鍔犺浇
鍦╫pencode涓緭鍏ワ細
```
浣跨敤 fnos skill
```

### 3. 娴嬭瘯skill
```bash
# Linux/macOS
bash ~/.config/opencode/skills/fnos/test.sh

# Windows PowerShell
powershell -ExecutionPolicy Bypass -File ~/.config/opencode/skills/fnos/test.ps1
```

## 涓昏鍔熻兘

### 鍙俊鏉ユ簮
1. **椋炵墰寮€鍙戣€呭紑鏀惧钩鍙?*: https://github.com/FNOSP
2. **椋炵墰甯姪涓績**: https://help.fnnas.com/
3. **椋炵墰绀惧尯璁哄潧**: https://club.fnnas.com/

### 甯哥敤鍛戒护

#### 绯荤粺淇℃伅
```bash
cat /etc/fnos-version    # 椋炵墰鐗堟湰
df -h                    # 纾佺洏绌洪棿
free -h                  # 鍐呭瓨浣跨敤
```

#### Docker绠＄悊
```bash
docker ps                # 鍒楀嚭瀹瑰櫒
docker logs <container>  # 鏌ョ湅鏃ュ織
docker exec -it <container> /bin/bash  # 杩涘叆瀹瑰櫒
```

#### 瀛樺偍绠＄悊
```bash
ls -la /vol1/            # 鏌ョ湅涓诲瓨鍌?du -sh /vol*/*           # 妫€鏌ヤ娇鐢ㄩ噺
mount | grep /vol*       # 鏌ョ湅鎸傝浇
```

#### 缃戠粶閰嶇疆
```bash
ip addr show             # 缃戠粶鎺ュ彛
netstat -tuln            # 寮€鏀剧鍙?iptables -L              # 闃茬伀澧欒鍒?```

## 鏂囦欢缁撴瀯

```
fnos-skill/
鈹溾攢鈹€ SKILL.md      # 涓昏skill鏂囦欢 (13.6KB)
鈹溾攢鈹€ README.md     # 浣跨敤璇存槑
鈹溾攢鈹€ INSTALL.md    # 瀹夎璇存槑
鈹溾攢鈹€ SUMMARY.md    # 瀹屾暣鎬荤粨
鈹溾攢鈹€ test.sh       # Linux娴嬭瘯鑴氭湰
鈹溾攢鈹€ test.ps1      # Windows娴嬭瘯鑴氭湰
鈹斺攢鈹€ .gitignore    # Git蹇界暐鏂囦欢
```

## 鏇存柊鍜岀淮鎶?
### 鏇存柊skill
```bash
# 杩涘叆skill鐩綍
cd ~/.config/opencode/skills/fnos/

# 鎷夊彇鏈€鏂版洿鏂?git pull origin main
```

### 鍗歌浇skill
```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 鏁呴殰鎺掗櫎

### 闂1锛歴kill鏈姞杞?- 妫€鏌ユ枃浠惰矾寰勬槸鍚︽纭?- 楠岃瘉SKILL.md鏍煎紡鏄惁姝ｇ‘
- 閲嶅惎opencode

### 闂2锛氬懡浠や笉宸ヤ綔
- 妫€鏌ュ懡浠よ娉?- 楠岃瘉鏉冮檺
- 鏌ョ湅绯荤粺鏃ュ織

### 闂3锛氱綉缁滆繛鎺ラ棶棰?- 妫€鏌ョ綉缁滈厤缃?- 楠岃瘉闃茬伀澧欒鍒?- 娴嬭瘯缃戠粶杩炴帴

## 鑾峰彇甯姪

1. **鏌ョ湅鏂囨。**
   - README.md - 浣跨敤璇存槑
   - INSTALL.md - 瀹夎璇存槑
   - SUMMARY.md - 瀹屾暣鎬荤粨

2. **鎼滅储瀹樻柟鏂囨。**
   - https://help.fnnas.com/?search=鍏抽敭璇?
3. **鏌ラ槄绀惧尯璁哄潧**
   - https://club.fnnas.com/

4. **妫€鏌NOSP GitHub**
   - https://github.com/FNOSP

## 璐＄尞

瑕佹敼杩涙skill锛?1. Fork浠撳簱锛歨ttps://github.com/EuphonXD/fnos-skill
2. 鍒涘缓鍒嗘敮锛歚git checkout -b feature/amazing-feature`
3. 鎻愪氦鏇存敼锛歚git commit -m 'Add amazing feature'`
4. 鎺ㄩ€佸垎鏀細`git push origin feature/amazing-feature`
5. 鍒涘缓Pull Request

## 璁稿彲璇?
MIT License - 鍙嚜鐢变娇鐢ㄥ拰淇敼

## 鑱旂郴鏂瑰紡

- GitHub: https://github.com/EuphonXD
- 浠撳簱: https://github.com/EuphonXD/fnos-skill

---

**鏈€鍚庢洿鏂?*: 2026-07-03