user = User.find_or_create_by(
  nickname:'ひがっち',
  profile:'沖縄で一番人口の多い比嘉の一人です。那覇市民。毎年那覇マラソン＋県外のマラソン大会に出没しています。3人娘のパパ。',
  appearance:'20回以上',
  highest_record:'4:42:55',
  email:'higapapa@com',
  encrypted_password:'higapapa55'
  # password_confirmation:'higapapa55'
)
user.image.attach(io: File.open('db/images/01.jpg'), filename: '01.jpg')
user.save

user = User.find_or_create_by(
  nickname:'マネージョー',
  profile:'マネージョー（金城）です。20歳。ハタチから何かひとつ続けてみようと思って、毎年マラソンに出ることにしました。70歳まで続けたいので応援してください（笑）',
  appearance:'1回',
  highest_record:'2:55:39',
  email:'kinjo20@com',
  encrypted_password:'kinjo55'
  # password_confirmation:'kinjo55'
)
user.image.attach(io: File.open('db/images/02.jpg'), filename: '02.jpg')
user.save

user = User.find_or_create_by(
  nickname:'オシロ！',
  profile:'豊見城市在住、30代ワーママランナーです！昨年出場した那覇マラソンで女性の部50位内を達成しました！Facebookでは普段の練習の様子も挙げています☆',
  appearance:'33回',
  highest_record:'3:10:49',
  email:'gaga@com',
  encrypted_password:'gaga55'
  # password_confirmation:'gaga55'
)
user.image.attach(io: File.open('db/images/03.jpg'), filename: '03.jpg')
user.save

post = Post.create(
  event_date:'2019-11-03',
  event_name:'エコアイランド宮古島マラソン',
  prefecture_id:'47',
  user_id:'1',
  tournament_record:'4:42:55',
  title:'おじさんオーシャンビューで大はしゃぎ',
  text:'11月とはいえ真夏の暑さで過酷なレースでしたね。。
  雨・スコール・曇り。常夏･･･目まぐるしいお天気でした！
  来年からコースから橋がなくなるということで、出られてよかった。
  宮古島の広さ・海の綺麗さは超満喫できました！！
  おじさん心の中でスキップしたよ♪
  給水も学生さんをはじめ地元の方々が応援・盛り上げてくださり
  最後までがんばれましたよ〜宮古島のみなさんありがとう〜。'
)
post.image.attach(io: File.open('db/fixtures/01.jpg'), filename: '01.jpg')
post.save

post = Post.create(
  event_date:'2018-02-18',
  event_name:'沖縄マラソン',
  prefecture_id:'47',
  user_id:'1',
  tournament_record:'5:03:29',
  title:'米軍基地の中に入れるマラソンに出てきたよ！',
  text:'沖縄のみなさんはご存知かと思いますが、
  沖縄マラソンってコースの途中に米軍基地コースがあるんですよね〜。
  基地の道路ってめちゃくちゃ広くて、開放感がありますね！
  しかも沿道に基地の方が旗を持ってエール送ってくれるんですよ。。
  こういう交流が日常的に増えれば、
  国同士、人間同士、もっと理解しあえるよなぁと思いました。'
)
post.image.attach(io: File.open('db/fixtures/03.png'), filename: '03.png')
post.save

post = Post.create(
  event_date:'2014-11-02',
  event_name:'尚巴志ハーフマラソン',
  prefecture_id:'47',
  user_id:'2',
  tournament_record:'2:55:39',
  title:'"手始めの尚巴志"は手厳しかった・・・（笑）',
  text:'新里坂（シンザトビラ）っていうこの大会の目玉ポイントで
  かなり体力を消耗してしまって、最後5kmがめちゃくちゃキツかった。
  この新里坂を乗り越えるとニライカナイ橋から真っ青な海が
  見られたけど、正直それどころじゃなかったな。
  手始めに地元のハーフを選んだけど、洗礼を浴びた気持ち（笑）
  来年のフルマラソンに向けてまたトレーニング頑張ります。'
)
post.image.attach(io: File.open('db/fixtures/02.png'), filename: '02.png')
post.save

post = Post.create(
  event_date:'2017-12-10',
  event_name:'コナマラソン',
  prefecture_id:'13',
  user_id:'3',
  tournament_record:'3:57:20',
  title:'久々の海外マラソン！最高すぎた！',
  text:'ハワイが大好きで、マラソンを始めてから、ハワイ諸島に
  6つのマラソンレースがあることを知り、
  今回は誕生日記念にコナマラソンを選びました。
  ワイコロア地区はとても小さなリゾートで、事前に下見してあったので
  START/GOALに近いマリオットに泊まりました。
  フルは5:30スタートで、薄暗い程度、トイレも簡易照明があって
  真っ暗ということはなく、不安はありません。
  ハイウェイはかなりむき出しの車のそば（ガードレールなし）
  を走るので、トラックが走ると帽子が飛ばされたりしましたけど、
  応援もしてくれて、思いのほか溶岩の荒野を渡ってくる風は涼しかったです。
  とにかくハワイだもの、楽しんだもの勝ち！'
)
post.image.attach(io: File.open('db/fixtures/06.png'), filename: '06.png')
post.save

post = Post.create(
  event_date:'2017-11-05',
  event_name:'尚巴志ハーフマラソン',
  prefecture_id:'47',
  user_id:'3',
  tournament_record:'1:34:20',
  title:'ある意味トップオブトップ',
  text:'東京から初めて参加しました。都心部の大会とは違い
  アップダウンが多く特に新里坂はだらだらときついですね。
  やっと登り切ったと思ったら小刻みにアップダウンが続き足にくる大会だと思います。
  スタートから数キロはランナーの渋滞が続きペースが落ち着かずタイム狙いはできないと思います。
  びっくりしたのはニライカナイ橋からの景色と途切れることのない沿道の応援です！！！
  景色のご褒美と地元の人の素朴な応援を楽しみに走ることができました！
  ありがとうございました♪'
)
post.image.attach(io: File.open('db/fixtures/05.png'), filename: '05.png')
post.save