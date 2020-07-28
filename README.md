# dotfiles


## manual install

### [macOS用パッケージマネージャー — Homebrew](https://brew.sh/index_ja)

### [sorin\-ionescu/prezto: The configuration framework for Zsh](https://github.com/sorin-ionescu/prezto)
```
rm ~/.zshrc
ln -s ~/.config/brewfile/KoheiKanagu_dotfiles/zprezto/runcoms/zshrc ~/.zshrc
```
### [macOS install \- Flutter](https://flutter.dev/docs/get-started/install/macos)
https://gist.github.com/KoheiKanagu/9917fd02e5b33afd9f072afc42a73de1

```bash
curl https://gist.githubusercontent.com/KoheiKanagu/9917fd02e5b33afd9f072afc42a73de1/raw/257cc465e70ebc4d23bdd44720ad888142198dd1/flutterSertupWithFvm.sh | sh
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
git config --global user.email "kanagu@kingu.dev"
```

### [rmate](https://github.com/aurora/rmate#quick-install)
