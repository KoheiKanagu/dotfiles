# dotfiles

## manual install

### ssh

```sh
ssh-keygen
cat ~/.ssh/id_rsa.pub
```
https://github.com/settings/ssh/new


### [macOS用パッケージマネージャー — Homebrew](https://brew.sh/index_ja)

HomebrewインストールしたらBrewfileを取ってくる

```sh
brew install rcmdnk/file/brew-file
brew file install
# リポジトリに以下入力
# https://github.com/KoheiKanagu/dotfiles
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
cd ~/Downloads/
curl https://gist.githubusercontent.com/KoheiKanagu/9917fd02e5b33afd9f072afc42a73de1/raw/flutterSertupWithFvm.sh | sh
```

### node

```sh
# Erbium == v12
nvm install --lts=Erbium && nvm alias default node
```

### Python

```sh
ln -s /usr/local/bin/python3 /usr/local/bin/python
```

### [Firebase](https://firebase.google.com/docs/cli?hl=ja#install-cli-mac-linux)

```sh
curl -sL firebase.tools | bash
```

### Git

```sh
git config --global user.name "KoheiKanagu"
git config --global user.email "kanagu@kingu.dev"
```

### [rmate](https://github.com/aurora/rmate#quick-install)

### Android Studio

`Configure → Settings Repocitory` に以下を入力

```
https://github.com/KoheiKanagu/AndroidStudioSettings.git
```

### Finder

隠しファイルを表示は

command + shift + .
