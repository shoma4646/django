# django

# 仮想環境の作成
makefileに定義済み、make startで仮想環境が作成されます。

# 仮想環境のアクティベート
macOS
```
. bin/activate
```
windows
```
.\Scripts\activate
```

# ライブラリのインストール
makefileに定義済み、make installでrequirements.txtに記載されているライブラリをインストールします。

# ライブラリの更新時
makefileに定義済み、make requirementsで現状インストールされているものをrequirements.txtに書き出します。

# APIの作成
makefileに定義済み、make create-apiで作成するAPI名を入力すると、djangoのテンプレートで作成されます。