# dotfiles


## manual install

### [macOS用パッケージマネージャー — Homebrew](https://brew.sh/index_ja)

### [sorin\-ionescu/prezto: The configuration framework for Zsh](https://github.com/sorin-ionescu/prezto)
```
rm ~/.zshrc
ln -s ~/.config/brewfile/KoheiKanagu_dotfiles/zprezto/runcoms/zshrc ~/.zshrc
```
### [macOS install \- Flutter](https://flutter.dev/docs/get-started/install/macos)
```
git clone https://github.com/flutter/flutter.git /usr/local/Cellar/flutter
/usr/local/Cellar/flutter/bin/flutter channel beta
/usr/local/Cellar/flutter/bin/flutter precache
/usr/local/Cellar/flutter/bin/flutter doctor
```

### node
```
nvm install 8 -lts && nvm install 10 -lts && nvm use 10 && nvm alias default node
```

### Python
```
ln -s /usr/local/bin/python3 /usr/local/bin/python
```

### [Firebase](https://firebase.google.com/docs/cli?hl=ja#install-cli-mac-linux)
```
curl -sL firebase.tools | bash
```

### [fastlane](https://docs.fastlane.tools/#getting-started)
```
sudo gem install fastlane -NV

# firebase plugin
fastlane add_plugin firebase_app_distribution
```

### Google Chrome Extensions

```
chrome://apps/
```

### Git

```
git config --global user.name "KoheiKanagu"
git config --global user.email "k.kanagu@novars.jp"
```
