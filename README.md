# alpine 3.18.4 にて samba4.19.2パッケージをビルドしたもの

## build手順

インターネット通信が可能な環境で以下を実行ください。

```bash
docker-compose up -d
docker-compose exec alpine-build sh
su - build
abuild-keygen -a -i
cd /aports/main/tlb
abuild -r
cd /aports/main/tevent
abuild -r
cd /aports/main/talloc
abuild -r
cd ~/packages/main/x86_64/
sudo apk add *.apk
cd /aports/main/samba
build -r
```

## 当モジュールの開発の流れ(おぼえがき)

```bash
git clone https://git.alpinelinux.org/aports
docker-compose up -d
docker-compose exec alpine-build sh
cd /aports/main/samba
APKBUILD の修正
pkgver=4.19.2
```