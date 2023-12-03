# alpine 3.18.4 にて samba4.19.2パッケージをビルド可能にする改修

## build手順

```bash
docker-compose up -d
docker-compose exec alpine-build sh
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