# alpine 3.18.4 にて samba4.19.2パッケージをビルド可能にする改修

## build手順

インターネット通信が可能な環境で以下を実行ください。

```bash
docker-compose up -d
docker-compose exec alpine-build sh
su - build
abuild-keygen -a -i
cd /aports/main/samba
build -r
```

## 当モジュールの開発手順

```bash
git clone https://git.alpinelinux.org/aports
docker-compose up -d
docker-compose exec alpine-build sh
cd /aports/main/samba
APKBUILD の修正
pkgver=4.19.2
```