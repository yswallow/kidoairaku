## 輝度哀楽

![輝度哀楽が明るく光っている画像](https://pbs.twimg.com/media/FJydEUuaMAcS3tG?format=jpg&name=small)

### 最低限の説明

* Pi PicoもしくはISP1807ピッチ変換基板で動きます
* Pi PicoのGP10/ISP1807のP0.14をHIGHに するとNeoPixelに電源を供給します
* コンスルーは左側に12ピンを、右側に13ピンを、シルクを白く塗っている位置に合わせて使用してください。Pi Picoを使う場合は20ピンも使用可能です。

#### スイッチや1N4148Wダイオードを除いた部品のBOM

| Index | 部品名 | 販売URL |
|----|----|----|
| U1 | Raspberry Pi Pico | https://ssci.to/6900 |
| U1 | ISP1807ピッチ変換基板 | https://ssci.to/6100 |
| U1 | ISP1807ピッチ変換基板(Type-C) | https://ssci.to/6454 |
| F1 | ポリヒューズ 2012 | https://akizukidenshi.com/catalog/g/gP-13955/ |
| Q1 | Pch パワーMOSFET IRLML6402 | https://akizukidenshi.com/catalog/g/gI-02553/ |
| Q51 | Nch MOSFET 2N7002 | https://akizukidenshi.com/catalog/g/gI-04256/ |
| R1,R51 | 10kΩ抵抗3216 | https://akizukidenshi.com/catalog/g/gR-11802/ |

##### 未実装

J1, D51 "Schot", C51, R52 "400k", R53 "100k"

