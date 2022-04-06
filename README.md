# cloneAll
This powershell command let you clone a user's all public repositories on github in one command.
Command is defined on powershell module file (.psm1)

コマンド一つでそのユーザーのgithub上のレポジトリをすべてクローンするコマンドを作りました。
コマンドはpowershellモデュールファイル(.psm1)上に定義されています。


## Set up to use the command
Put 'cloneAll' directory under 'C:\Windows\System32\WindowsPowerShell\v1.0\Modules' directory. Make sure you have appropriate powershell execution policy. Here is an example.

'C:\Windows\System32\WindowsPowerShell\v1.0\Modules'下に'cloneAll'ディレクトリを置いてください。適当なpowershell実行ポリシーであることを確認してください。

eg) remoteSigned
`Set-ExecutionPolicy remoteSigned`   (run as admin is required)

you may need to unblock program.

プログラムの実行を許可しなければいけないかもしれません。

eg)
`Unblock-File cloneAll.psm1`

restart powershell (close and open new terminal emulator)

powershellを再起動してください。 (ターミナルエミュレータを閉じて新しく開く）

ALL SET :)
## Usage
`Clone-All -u <UserName>' or shortly, 'clall <UserName>`

Just use like when you clone a repository.

To illustrate, you can clone all my public repositories by following command

普段クローンするときのように使ってください。

例えば、以下のコマンドで私のすべての公開レポジトリをクローン出来ます。

**`Clone-All PienTian`**


* This program only works against public repository on github.com. you can't use this to other git service or private repos. 

* このコマンドはgithub上の公開レポジトリにのみ使えます。ほかのサービスや非公開レポジトリには使えません。
