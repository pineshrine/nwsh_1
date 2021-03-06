
# what's this?

the network shell arts sandbox.

ネットワークシェル芸の遊び場です。

## what's the shell arts?

the shell arts, as known as シェル芸/shell-gei in Japanese, is unique, practical and pretty much ridiculous one-liner programming style on unix/linux shell. see [wikipedia](https://ja.wikipedia.org/wiki/USP%E5%8F%8B%E3%81%AE%E4%BC%9A#%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8) for your reference, however, information is limited in only Japanese language since above definition was created by Japanese robotics researcher Ryuichi Ueda Ph.D.

シェル芸はユニークで実用的、かつ馬鹿馬鹿しいワンライナースタイルのコマンドのことを言います。詳しくは「シェル芸の定義バージョン1.1」を参照してください。英語では何て言うのか決まっていないみたいなので、ちょこっと上記で説明しました。

## what's the network shell arts?

it is coined term by me, shell arts's practical uses for network operation. unlike usual shell arts method, network shell arts does not care about one-liner style. southbound interface for network equipment by rancid's login script. some people say this is just a paraphrase of old school shell script voodoo technique of telecom/datacom industry. that is for sure, but I like them. so what?

ネットワークシェル芸はmatsuの造語です。シェル芸をネットワーク機器の操作に応用したものですが、通常のシェル芸とは違い、別にワンライナーに拘わりません。ネットワーク機器へのサウスバウンドとしてはRANCIDを使用します。昔ながらの、シェルスクリプトを使った保守が困難なネットワーク機器の操作自動化と何が違うの？と言われたら、それそのものです。アレルギーがある方はご遠慮ください。

## network shell arts references

[Networking technique with shell scripting](https://www.slideshare.net/YusukeTatematsu/networkshellgei)

[shell arts practical use cases 1., for campus AP deployment](https://engineering.kdx.co.jp/entry/2021/04/22/170000#ヒヤっとした話その２無線アクセスポイントを追加したかっただけなのに)

[shell arts practical use cases 2., for HP ProCurve/H3C based Aruba SW](https://engineering.kdx.co.jp/entry/2021/06/17/120000#ネットワークシェル芸再び)

[shell arts practical use cases 3., for campus SW deployment](https://www.janog.gr.jp/meeting/janog48/wp-content/uploads/2021/05/janog48-zero-tatematsu.pdf)


# projects

## 1st step!

[lab1_day1](lab1_day1/)

your 1st network shell arts! try to generate configs and operate multiple node w/ one-line code!

初めてのネットワークシェル芸。Configを自動で生成し、複数台の機器をワンライナーで操作しよう。

## old-school html generator for lldp visualization　for cisco

阿部寛のLLDP。
ネットワーク機器からlldp情報を引っ張ってきて、htmlにします。

## old-school cgi for configure switches for cisco

## multi vendor?


# setup command

```
$ apt-get install fping nmap m4 arp-scan rancid locate snmp snmp-mibs-downloader rsyslog wget curl jq gwak
$ export PATH=$PATH:/usr/lib/rancid/bin
$ cp /usr/share/doc/rancid/examples/cloginrc.sample ~
$ mv ~/cloginrc.sample ~/.cloginrc
$ chmod 600 ~/.cloginrc
$ git config --global user.name ****
$ git config --global user.email *****
$ mkdir ~/public_html
$ chmod o+rx ~/public_html
```