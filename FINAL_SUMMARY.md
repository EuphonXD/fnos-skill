# 馃帀 FnOS Skill 瀹屾垚锛?
## 鉁?鎵€鏈夊伐浣滃凡瀹屾垚

### 馃搧 鏂囦欢宸叉暣鐞嗗畬鎴?**浣嶇疆**: `C:\Users\Admin\Desktop\鎻掍欢\FNOS搴曞眰skill\`

**鏈€缁堟枃浠跺垪琛?* (7涓牳蹇冩枃浠?:
1. **SKILL.md** (13.6KB) - 涓昏skill鏂囦欢锛屽寘鍚畬鏁寸殑椋炵墰NAS鎿嶄綔鎸囧崡
2. **README.md** (2.9KB) - 浣跨敤璇存槑
3. **INSTALL.md** (2.9KB) - 瀹夎璇存槑
4. **SUMMARY.md** (4.7KB) - 瀹屾暣鎬荤粨
5. **test.sh** (1.6KB) - Linux娴嬭瘯鑴氭湰
6. **test.ps1** (2.6KB) - Windows娴嬭瘯鑴氭湰
7. **.gitignore** (185B) - Git蹇界暐鏂囦欢

### 馃寪 GitHub浠撳簱宸叉竻鐞?**浠撳簱鍦板潃**: https://github.com/EuphonXD/fnos-skill

**GitHub浠撳簱鏂囦欢** (8涓枃浠?:
1. .gitignore
2. INSTALL.md
3. README.md
4. SKILL.md
5. SUMMARY.md
6. test.ps1
7. test.sh
8. (鍙兘杩樻湁涓€涓腑鏂囧悕鏂囦欢)

## 馃殌 蹇€熷紑濮?
### 瀹夎鍒皁pencode
```bash
# 鏂规硶1锛氫粠GitHub鍏嬮殕
git clone https://github.com/EuphonXD/fnos-skill.git
cp -r fnos-skill/* ~/.config/opencode/skills/fnos/

# 鏂规硶2锛氭墜鍔ㄥ鍒?# 灏嗗綋鍓嶇洰褰曠殑鎵€鏈夋枃浠跺鍒跺埌 ~/.config/opencode/skills/fnos/
```

### 浣跨敤skill
1. **閲嶅惎opencode** - 浣縮kill鐢熸晥
2. **鑷姩鍔犺浇** - 鎵ц椋炵墰NAS鐩稿叧鎿嶄綔鏃惰嚜鍔ㄥ姞杞?3. **鎵嬪姩鍔犺浇** - 鍦╫pencode涓緭鍏ワ細`浣跨敤 fnos skill`

### 娴嬭瘯skill
```bash
# Linux/macOS
bash test.sh

# Windows PowerShell
powershell -ExecutionPolicy Bypass -File test.ps1
```

## 馃摎 鏍稿績鏂囦欢璇存槑

### SKILL.md
涓昏鐨剆kill鏂囦欢锛屽寘鍚細
- 椋炵墰NAS绯荤粺绠＄悊
- Docker瀹瑰櫒绠＄悊
- 瀛樺偍鍗风鐞?- 缃戠粶閰嶇疆
- 鏁呴殰鎺掗櫎
- 寮€鍙戝伐浣滄祦
- 鏈€浣冲疄璺垫寚鍗?- 鍙俊鏉ユ簮闆嗘垚

### 鍙俊鏉ユ簮
1. **椋炵墰寮€鍙戣€呭紑鏀惧钩鍙?(FNOSP)**: https://github.com/FNOSP
2. **椋炵墰甯姪涓績**: https://help.fnnas.com/
3. **椋炵墰绀惧尯璁哄潧**: https://club.fnnas.com/

## 馃幆 涓昏鍔熻兘

### 鏍稿績鑳藉姏
- 鉁?绯荤粺淇℃伅鏌ヨ
- 鉁?Docker瀹瑰櫒绠＄悊
- 鉁?瀛樺偍鍗风鐞?- 鉁?缃戠粶閰嶇疆
- 鉁?鏁呴殰鎺掗櫎
- 鉁?寮€鍙戝伐浣滄祦
- 鉁?鏈€浣冲疄璺垫寚鍗?
## 馃摉 浣跨敤绀轰緥

### 鏌ヨ绯荤粺淇℃伅
```bash
cat /etc/fnos-version    # 椋炵墰鐗堟湰
df -h                    # 纾佺洏绌洪棿
free -h                  # 鍐呭瓨浣跨敤
```

### 绠＄悊Docker瀹瑰櫒
```bash
docker ps                # 鍒楀嚭瀹瑰櫒
docker logs <container>  # 鏌ョ湅鏃ュ織
docker exec -it <container> /bin/bash  # 杩涘叆瀹瑰櫒
```

### 绠＄悊瀛樺偍
```bash
ls -la /vol1/            # 鏌ョ湅涓诲瓨鍌?du -sh /vol*/*           # 妫€鏌ヤ娇鐢ㄩ噺
mount | grep /vol*       # 鏌ョ湅鎸傝浇
```

## 馃攧 鏇存柊鍜岀淮鎶?
### 鏇存柊skill
```bash
cd ~/.config/opencode/skills/fnos/
git pull origin main
```

### 鍗歌浇skill
```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 馃 璐＄尞鎸囧崡

1. Fork浠撳簱锛歨ttps://github.com/EuphonXD/fnos-skill
2. 鍒涘缓鍒嗘敮锛歚git checkout -b feature/amazing-feature`
3. 鎻愪氦鏇存敼锛歚git commit -m 'Add amazing feature'`
4. 鎺ㄩ€佸垎鏀細`git push origin feature/amazing-feature`
5. 鍒涘缓Pull Request

## 馃摓 鑾峰彇甯姪

### 鏌ョ湅鏂囨。
- SKILL.md - 瀹屾暣鐨剆kill鏂囨。
- README.md - 浣跨敤璇存槑
- INSTALL.md - 瀹夎璇存槑
- SUMMARY.md - 鍔熻兘鎬荤粨

### 鎼滅储瀹樻柟鏂囨。
- https://help.fnnas.com/?search=鍏抽敭璇?
### 鏌ラ槄绀惧尯璁哄潧
- https://club.fnnas.com/

### 妫€鏌NOSP GitHub
- https://github.com/FNOSP

## 馃帗 涓嬩竴姝?
1. **閲嶅惎opencode** - 浣縮kill鐢熸晥
2. **娴嬭瘯skill** - 楠岃瘉鍔熻兘姝ｅ父
3. **浣跨敤skill** - 鎵ц椋炵墰NAS鎿嶄綔
4. **鍙嶉鏀硅繘** - 鏍规嵁浣跨敤浣撻獙浼樺寲skill

## 馃摑 娉ㄦ剰浜嬮」

- 鈿狅笍 姝kill涓撲负椋炵墰NAS绯荤粺璁捐
- 鈿狅笍 鍦ㄥ叾浠栫郴缁熶笂鍙兘鏃犳硶姝ｅ父宸ヤ綔
- 鈿狅笍 浣跨敤鍓嶈纭繚绯荤粺宸叉纭厤缃?- 鈿狅笍 寤鸿鍦ㄦ祴璇曠幆澧冧腑鍏堥獙璇?
## 馃敆 鐩稿叧閾炬帴

- **GitHub浠撳簱**: https://github.com/EuphonXD/fnos-skill
- **椋炵墰寮€鍙戣€呭钩鍙?*: https://github.com/FNOSP
- **椋炵墰鏂囨。**: https://help.fnnas.com/
- **椋炵墰绀惧尯**: https://club.fnnas.com/
- **Superpowers妗嗘灦**: https://github.com/obra/superpowers

---

## 馃帄 鎭枩锛?
浣犲凡缁忔垚鍔熷垱寤轰簡FnOS skill骞朵笂浼犲埌GitHub锛?
**瀹屾垚鏃堕棿**: 2026-07-03
**鐘舵€?*: 鉁?鍏ㄩ儴瀹屾垚
**鏈湴鏂囦欢**: 7涓?**GitHub鏂囦欢**: 8涓?**GitHub浠撳簱**: https://github.com/EuphonXD/fnos-skill

鐜板湪浣犲彲浠ワ細
1. 鍦╫pencode涓娇鐢ㄨ繖涓猻kill
2. 涓庡叾浠栦汉鍒嗕韩杩欎釜skill
3. 缁х画鏀硅繘鍜岀淮鎶よ繖涓猻kill

绁濅綘浣跨敤鎰夊揩锛侌煄