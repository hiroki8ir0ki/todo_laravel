


はじめに
npm i -g @vue/cli でエラー発生
環境パスを通す

@sohhprog
が2021年02月24日に作成
npmのグローバルインストールをするためにパスを通す方法
Node.js
npm
vue-cli
はじめに
npmのグローバルインストールをするために、パスを通す方法を紹介します。

npm i -g @vue/cli でエラー発生
Vue CLIの環境構築のために

npm i -g @vue/cli

を実行すると下記のエラーが発生しました。

i はインストール、 -g はグローバル、という意味です。
グローバルにインストールされたものは、どのディレクトリでも実行できるようになります。

npm WARN deprecated request@2.88.2: request has been deprecated, see https://github.com/request/request/issues/3142
npm WARN deprecated @hapi/joi@15.1.1: Switch to 'npm install joi'
npm WARN deprecated @hapi/hoek@8.5.1: This version has been deprecated and is no longer supported or maintained
npm WARN deprecated @hapi/topo@3.1.6: This version has been deprecated and is no longer supported or maintained
npm WARN deprecated @hapi/bourne@1.3.2: This version has been deprecated and is no longer supported or maintained
npm WARN deprecated @hapi/address@2.1.4: Moved to 'npm install @sideway/address'
npm WARN deprecated har-validator@5.1.5: this library is no longer supported
npm WARN deprecated resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
npm WARN deprecated urix@0.1.0: Please see https://github.com/lydell/urix#deprecated
npm WARN deprecated chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
npm WARN deprecated fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.
npm WARN checkPermissions Missing write access to /usr/local/lib/node_modules
npm WARN @vue/compiler-sfc@3.0.5 requires a peer of vue@3.0.5 but none is installed. You must install peer dependencies yourself.

npm ERR! code EACCES
npm ERR! syscall access
npm ERR! path /usr/local/lib/node_modules
npm ERR! errno -13
npm ERR! Error: EACCES: permission denied, access '/usr/local/lib/node_modules'
npm ERR!  [Error: EACCES: permission denied, access '/usr/local/lib/node_modules'] {
npm ERR!   errno: -13,
npm ERR!   code: 'EACCES',
npm ERR!   syscall: 'access',
npm ERR!   path: '/usr/local/lib/node_modules'
npm ERR! }
npm ERR!
npm ERR! The operation was rejected by your operating system.
npm ERR! It is likely you do not have the permissions to access this file as the current user
npm ERR!
npm ERR! If you believe this might be a permissions issue, please double-check the
npm ERR! permissions of the file and its containing directories, or try running
npm ERR! the command again as root/Administrator.

npm ERR! A complete log of this run can be found in:
npm ERR!     /Users/soakasaka/.npm/_logs/2021-01-29T13_58_49_964Z-debug.log
環境パスを通す
「環境パスを通す」とは、特定のプログラムをプログラム名だけで実行できるようにすることです。

Npmでグローバルインストールする場合は~/.npm-globalを作成して環境パスを通す必要があります。

下記コマンドをターミナルで実行してください。

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
環境パスを通すために .zshrc を編集します。

Vim .zshrc
PATHなどの環境変数は
bashなら、.bash_profile
zshなら、.zprofile
に書くのが基本です。

下記を .zshrc に追加してください。
その際に [username] をお使いのPCのユーザ名に変更してください。

export PATH=$source ~/.zshrc

PATH:/Users/[username]/.npm-global/bin
