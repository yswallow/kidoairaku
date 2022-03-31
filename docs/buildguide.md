## 輝度哀楽ビルドガイド

### 注意事項

* 2N7002KとIRLML6402を同時に袋から出さないでください。混ぜてしまった場合は気合で判別してください。

### キット内容物(片手分) 

予備が入っている場合もあります

| 名称 | 個数 |
|----|----|
| 実装用基板(青地に黄色シルク) | 1 |
| ボトムプレート用基板(白色) | 1 |
| スライドスイッチ | 1 |
| 10kΩ抵抗 | 2 |
| IRLML6402 | 1 |
| 2N7002K | 1 |
| ポリスイッチ | 1 |

不足がある場合は連絡ください。

### 組み立て手順

#### NeoPixel制御回路の取り付け

![](https://s3.ap-northeast-1.amazonaws.com/keyboardon-assets/media_attachments/files/108/050/517/298/656/823/original/2d3a01377330ef11.jpeg)

基板シルクに沿ってD55,R51,Q51,Q1,R1,F1をはんだづけします。

#### NeoPixelの取り付け

基板裏面からNeoPixelを取り付けます。

1つの接点に仮はんだし, SK6812MINI-Eの切り欠きをマークに合わせて1つの接点のみはんだづけします。

![](https://s3.ap-northeast-1.amazonaws.com/keyboardon-assets/media_attachments/files/108/050/553/979/850/692/original/d85634aa761d99d8.jpeg)

いくつか仮付けしたら裏返して, NeoPixelの向きが揃っていることを確認してからすべての端子をはんだづけします。

基板中央の5個は他と向きが上下逆になっているので注意してください。
    
![](https://s3.ap-northeast-1.amazonaws.com/keyboardon-assets/media_attachments/files/108/050/685/371/617/234/original/1bc2844751e59812.jpg)

![](https://s3.ap-northeast-1.amazonaws.com/keyboardon-assets/media_attachments/files/108/050/685/412/788/483/original/08d7e1335379c45f.jpg)

裏面のはんだづけが終わったら表面にもNeoPixelを取り付けます。

シルクが重なって方向がわかりづらいものもありますが, 他と同じ向きです。

![](https://s3.ap-northeast-1.amazonaws.com/keyboardon-assets/media_attachments/files/108/050/554/001/544/963/original/cdae55209e5fb66f.jpeg)

#### 1N4148Wの取り付け

1N4148Wをはんだづけします。点やら太線やらが描かれているほうにダイオードの線のあるほうを合わせます。

#### スライドスイッチの取り付け

スライドスイッチをSW51に取り付けます。"LED ON"のほうにスライドするとNeoPixelが光ります。

#### マイコンの取り付け

左側は12ピン,右側は13ピンのコンスルーをシルクを黄色く塗ってある位置に合わせて取り付けます。ISP1807ピッチ変換基板を使う場合,  Raspberry Pi Pico を使う場合どちらも右側の一番上(USB端子)側の端子が合うように取り付けます。

#### 動作確認

くれぐれもPCに直結しないようにしてください。セルフパワーUSBハブをご利用ください。

* キースイッチ端子を短絡して, すべてのキーが反応するか?
* 表面から取り付けた右上のNeoPixelまで全てのNeoPixelが光っているか?

##### NeoPixelの動作について

GP10/P0.14をHIGHにするとNeoPixelに給電されます。NeoPixelに給電しないとNeoPixelは光りません。 [PRK Firmware用keymap.rbをご覧ください](./keymap.rb) (キー配列を書いていないので文字は入力されません)

#### スペーサーの取り付け

表面からM2ネジでスペーサーを取り付けます。

#### キースイッチの取り付け

基板がキースイッチを支える役割を十分に果たしていないので, キースイッチが斜めにならないよう気をつけたほうがいいと思います。

#### ボトムプレートの取り付け

ボトムプレートを取り付けます。

#### 動いたかな

動いたかな


