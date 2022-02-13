# what's this?

the network shell arts sandbox.

ネットワークシェル芸の遊び場です。

## what's the shell arts?

the shell arts, as known as シェル芸/shell-gei in Japanese, is unique, practical and pretty much ridiculous one-liner programming style on unix/linux shell. see [wikipedia](https://ja.wikipedia.org/wiki/USP%E5%8F%8B%E3%81%AE%E4%BC%9A#%E3%82%B7%E3%82%A7%E3%83%AB%E8%8A%B8) for your reference, however, information is limited in only Japanese language since above definition was created by Japanese robotics researcher Ryuichi Ueda Ph.D.

シェル芸はユニークで実用的、かつ馬鹿馬鹿しいワンライナースタイルのコマンドのことを言います。詳しくは「シェル芸の定義バージョン1.1」を参照してください。英語では何て言うのか決まっていないみたいなので、ちょこっと上記で説明しました。

## what's the network shell arts?

it is coined term by me, shell arts's practical uses for network operation. unlike usual shell arts method, network shell arts does not care about one-liner style. southbound interface for network equipment by rancid's login script. some people say this is just a paraphrase of old school shell script voodoo technique of telecom/datacom industry. that is for sure, but I like them. so what?

ネットワークシェル芸はmatsuの造語です。シェル芸をネットワーク機器の操作に応用したものですが、通常のシェル芸とは違い、別にワンライナーに拘わりません。ネットワーク機器へのサウスバウンドとしてはRANCIDを使用します。昔ながらの、シェルスクリプトを使った保守が困難なネットワーク機器の操作自動化と何が違うの？と言われたら、それそのものです。アレルギーがある方はご遠慮ください。

# projects

## 1st step!

初めてのネットワークシェル芸

## multi vendor?

## old-school html generator for lldp visualization

阿部寛のLLDP。
ネットワーク機器からlldp情報を引っ張ってきて、htmlにします。

## old-school cgi for configure switches

# setup command

```
$ apt-get install fping nmap m4 arp-scan rancid locate snmp snmp-mibs-downloader rsyslog wget curl jq
$ export PATH=$PATH:/usr/lib/rancid/bin
$ cp /usr/share/doc/rancid/examples/cloginrc.sample ~
$ mv ~/cloginrc.sample ~/.cloginrc
$ chmod 600 ~/.cloginrc
$ git config --global user.name ****
$ git config --global user.email *****
$ mkdir ~/public_html
$ chmod o+rx ~/public_html
```