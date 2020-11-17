# dotfiles

## manual install

### [macOS用パッケージマネージャー — Homebrew](https://brew.sh/index_ja)

HomebrewインストールしたらBrewfileを取ってくる

```sh
brew install rcmdnk/file/brew-file
brew file init
# リポジトリに以下入力
# https://github.com/KoheiKanagu/dotfiles

brew file install
```

### iTerm2

`Preferences → General → Preferences` に以下のパスを指定

```
/Users/kingu/.config/brewfile/KoheiKanagu_dotfiles
```

### [sorin\-ionescu/prezto: The configuration framework for Zsh](https://github.com/sorin-ionescu/prezto)

```sh
rm ~/.zshrc
ln -s ~/.config/brewfile/KoheiKanagu_dotfiles/zprezto/runcoms/zshrc ~/.zshrc
```

### [macOS install \- Flutter](https://flutter.dev/docs/get-started/install/macos)
https://gist.github.com/KoheiKanagu/9917fd02e5b33afd9f072afc42a73de1

```sh
curl https://gist.githubusercontent.com/KoheiKanagu/9917fd02e5b33afd9f072afc42a73de1/raw/flutterSertupWithFvm.sh | sh
```

### node

```sh
nvm install 8 -lts && nvm install 10 -lts && nvm use 10 && nvm alias default node
```

### Python

```sh
ln -s /usr/local/bin/python3 /usr/local/bin/python
```

### [Firebase](https://firebase.google.com/docs/cli?hl=ja#install-cli-mac-linux)

```sh
curl -sL firebase.tools | bash
```

### Google Chrome Extensions

```sh
chrome://apps/
```

### Git

```sh
git config --global user.name "KoheiKanagu"
git config --global user.email "kanagu@kingu.dev"
```

### [rmate](https://github.com/aurora/rmate#quick-install)
