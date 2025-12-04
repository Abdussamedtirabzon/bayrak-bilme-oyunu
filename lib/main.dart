import 'package:flutter/material.dart';

void main() => runApp(BayrakBilmeceApp());

class BayrakBilmeceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bayrak Bilmece',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Color.fromARGB(255, 92, 218, 211),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 21, 255, 0),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: BayrakEkrani(),
    );
  }
}

class BayrakEkrani extends StatefulWidget {
  const BayrakEkrani({Key? key}) : super(key: key);

  @override
  _BayrakEkraniState createState() => _BayrakEkraniState();
}

class _BayrakEkraniState extends State<BayrakEkrani> {
  List<Map<String, String>> bayraklar = [
    {"ulke": "Amerika Birleşik Devletleri", "resim": "assets/flags/abd.png"},
    {"ulke": "Abhazya", "resim": "assets/flags/abhazya.png"},
    {"ulke": "Afganistan", "resim": "assets/flags/afganistan.png"},
    {"ulke": "Almanya", "resim": "assets/flags/almanya.png"},
    {"ulke": "Arjantin", "resim": "assets/flags/arjantin.png"},
    {"ulke": "Azerbeycan", "resim": "assets/flags/azerbaycan.png"},
    {"ulke": "Birleşik Krallık", "resim": "assets/flags/birleşik krallık.png"},
    {"ulke": "Brezilya", "resim": "assets/flags/brezilya.png"},
    {"ulke": "Bulgaristan", "resim": "assets/flags/bulgaristan.png"},
    {"ulke": "Canada", "resim": "assets/flags/Canada.png"},
    {"ulke": "ÇİN", "resim": "assets/flags/cin.png"},
    {"ulke": "Danimarka", "resim": "assets/flags/danimarka.png"},
    {"ulke": "Endonezya", "resim": "assets/flags/endonezya.png"},
    {"ulke": "Eritre", "resim": "assets/flags/Eritre.png"},
    {"ulke": "Eswatini", "resim": "assets/flags/Eswatini.png"},
    {"ulke": "Fildişi Sahili", "resim": "assets/flags/fildişi sahili.png"},
    {"ulke": "Filipinler", "resim": "assets/flags/filipinler.png"},
    {"ulke": "Filistin", "resim": "assets/flags/filistin.png"},
    {"ulke": "Fransa", "resim": "assets/flags/fransa.png"},
    {"ulke": "Gine", "resim": "assets/flags/gine.png"},
    {"ulke": "Güney Kore", "resim": "assets/flags/güney kore.png"},
    {"ulke": "Haiti", "resim": "assets/flags/haiti.png"},
    {"ulke": "Hindistan", "resim": "assets/flags/hindistan.png"},
    {"ulke": "Hollanda", "resim": "assets/flags/hollanda.png"},
    {"ulke": "Irak", "resim": "assets/flags/ırak.png"},
    {"ulke": "İran", "resim": "assets/flags/Iran.png"},
    {"ulke": "İrlanda", "resim": "assets/flags/irlanda.png"},
    {"ulke": "İspanya", "resim": "assets/flags/ispanya.png"},
    {"ulke": "İsveç", "resim": "assets/flags/isveç.png"},
    {"ulke": "İtalya", "resim": "assets/flags/italya.png"},
    {"ulke": "Bebek Katili", "resim": "assets/flags/itrail.png"},
    {"ulke": "Jameika", "resim": "assets/flags/Jamaika.png"},
    {"ulke": "Japonya", "resim": "assets/flags/japonya.png"},
    {"ulke": "Katar", "resim": "assets/flags/katar.png"},
    {"ulke": "Kenya", "resim": "assets/flags/Kenya.png"},
    {"ulke": "Kırgızistan", "resim": "assets/flags/kırgızistan.png"},
    {
      "ulke": "Kongo Cumhuriyeti",
      "resim": "assets/flags/kongo cumhuriyeti.png",
    },
    {"ulke": "Kongo DC", "resim": "assets/flags/kongo dc.png"},
    {"ulke": "Kosova", "resim": "assets/flags/Kosovo.png"},
    {
      "ulke": "Kuzey Kıbrıs Türk Cum.",
      "resim": "assets/flags/kuzey kıbrıs türk cumhuriyeti.png",
    },
    {"ulke": "Libya", "resim": "assets/flags/libya.png"},
    {"ulke": "Mali", "resim": "assets/flags/Mali.png"},
    {"ulke": "Marşel Adaları", "resim": "assets/flags/marşel adaları.png"},
    {"ulke": "Mısır", "resim": "assets/flags/mısır.png"},
    {
      "ulke": "Mikronezya Federal Dev.",
      "resim": "assets/flags/mikronezya federal devletleri.png",
    },
    {"ulke": "Nepal", "resim": "assets/flags/Nepal.png"},
    {"ulke": "Nijer", "resim": "assets/flags/Nijer.png"},
    {"ulke": "Nijerya", "resim": "assets/flags/Nijerya.png"},
    {"ulke": "Özbekistan", "resim": "assets/flags/özbekistan.png"},
    {"ulke": "Pakistan", "resim": "assets/flags/Pakistan.png"},
    {"ulke": "Panama", "resim": "assets/flags/Panama.png"},
    {"ulke": "Paraguay", "resim": "assets/flags/Paraguay.png"},
    {"ulke": "Peru", "resim": "assets/flags/Peru.png"},
    {"ulke": "Romanya", "resim": "assets/flags/Romania.png"},
    {"ulke": "Rusya", "resim": "assets/flags/Rusya.png"},
    {
      "ulke": "Sahra Demokratik Arap Cum.",
      "resim": "assets/flags/sahra demokratik arap cumhuriyeti.png",
    },
    {"ulke": "Samoa", "resim": "assets/flags/Samoa.png"},
    {"ulke": "Sierra Leone", "resim": "assets/flags/sierra_Leone.png"},
    {"ulke": "Singapur", "resim": "assets/flags/Singapore.png"},
    {"ulke": "Solomon Adaları", "resim": "assets/flags/Solomon adaları.png"},
    {"ulke": "Sudan", "resim": "assets/flags/Sudan.png"},
    {"ulke": "Suriye", "resim": "assets/flags/suriye.png"},
    {"ulke": "Tacikistan", "resim": "assets/flags/tacikistan.png"},
    {"ulke": "Togo", "resim": "assets/flags/togo.png"},
    {"ulke": "Türkmenistan", "resim": "assets/flags/Turkmenistan.png"},
    {"ulke": "Türkiye", "resim": "assets/flags/türkiye.png"},
    {"ulke": "Uruguay", "resim": "assets/flags/Uruguay.png"},
    {"ulke": "Vatikan", "resim": "assets/flags/Vatican.png"},
    {"ulke": "Venezuella", "resim": "assets/flags/Venezuela.png"},
    {"ulke": "Vietnam", "resim": "assets/flags/Vietnam.png"},
    {"ulke": "Yeni Zelenda", "resim": "assets/flags/yeni zelanda.png"},

    //burdan aşşağısı yeni bayraklar
    {"ulke": "Arnavutluk", "resim": "assets/flags/Flag_of_Albania.png"},
    {"ulke": "Cezayir", "resim": "assets/flags/Flag_of_Algeria.png"},
    {"ulke": "Andorra", "resim": "assets/flags/Flag_of_Andorra.png"},
    {
      "ulke": "Antigua ve Barbuda",
      "resim": "assets/flags/Flag_of_Antigua_and_Barbuda.png",
    },
    {"ulke": "Ermenistan", "resim": "assets/flags/Flag_of_Armenia.png"},
    {"ulke": "Avustralya", "resim": "assets/flags/Flag_of_Australia.png"},
    {"ulke": "Avusturya", "resim": "assets/flags/Flag_of_Austria.png"},
    {"ulke": "Bahreyn", "resim": "assets/flags/Flag_of_Bahrain.png"},
    {"ulke": "Butan", "resim": "assets/flags/Flag_of_Bhutan.png"},
    {"ulke": "Bolivya", "resim": "assets/flags/Flag_of_Bolivia.png"},
    {"ulke": "Bosna-Hersek", "resim": "assets/flags/bosna hersek.png"},
    {"ulke": "Botsvana", "resim": "assets/flags/botsvana.png"},
    {"ulke": "Brunei", "resim": "assets/flags/Flag_of_Brunei.png"},
    {"ulke": "Burkina Faso", "resim": "assets/flags/Flag_of_Burkina_Faso.png"},
    {"ulke": "Burundi", "resim": "assets/flags/Flag_of_Burundi.png"},
    {"ulke": "Kamerun", "resim": "assets/flags/Flag_of_Cameroon.png"},
    {
      "ulke": "Yeşil Burun Adaları",
      "resim": "assets/flags/Flag_of_Cape_Verde.png",
    },
    {"ulke": "Şili", "resim": "assets/flags/Flag_of_Chile.png"},
    {"ulke": "Kosta Rika", "resim": "assets/flags/Flag_of_Costa_Rica.png"},
    {"ulke": "Hırvatistan", "resim": "assets/flags/Flag_of_Croatia.png"},

    {"ulke": "Küba", "resim": "assets/flags/Flag_of_Cuba.png"},
    {"ulke": "Cibuti", "resim": "assets/flags/Flag_of_Djibouti.png"},
    {"ulke": "El Salvador", "resim": "assets/flags/Flag_of_El_Salvador.png"},
    {
      "ulke": "Ekvator Ginesi",
      "resim": "assets/flags/Flag_of_Equatorial_Guinea.png",
    },
    {"ulke": "Etiyopya", "resim": "assets/flags/Flag_of_Ethiopia.png"},
    {"ulke": "Fiji", "resim": "assets/flags/Flag_of_Fiji.png"},
    {"ulke": "Gabon", "resim": "assets/flags/Flag_of_Gabon.png"},
    {"ulke": "Gürcistan", "resim": "assets/flags/Flag_of_Georgia.png"},
    {"ulke": "Gana", "resim": "assets/flags/Flag_of_Ghana.png"},
    {"ulke": "Guatemala", "resim": "assets/flags/Flag_of_Guatemala.png"},
    {"ulke": "Gine-Bissau", "resim": "assets/flags/Flag_of_Guinea-Bissau.png"},
    {"ulke": "Guyana", "resim": "assets/flags/Flag_of_Guyana.png"},
    {"ulke": "Honduras", "resim": "assets/flags/Flag_of_Honduras_(2022-).png"},
    {"ulke": "Macaristan", "resim": "assets/flags/Flag_of_Hungary.png"},
    {"ulke": "Kuveyt", "resim": "assets/flags/Flag_of_Kuwait.png"},
    {"ulke": "Laos", "resim": "assets/flags/Flag_of_Laos.png"},
    {"ulke": "Letonya", "resim": "assets/flags/Flag_of_Latvia.png"},
    {"ulke": "Lübnan", "resim": "assets/flags/Flag_of_Lebanon.png"},
    {"ulke": "Lesotho", "resim": "assets/flags/Flag_of_Lesotho.png"},
    {"ulke": "Liberya", "resim": "assets/flags/Flag_of_Liberia.png"},
    {"ulke": "Lihtenştayn", "resim": "assets/flags/Flag_of_Liechtenstein.png"},
    {"ulke": "Litvanya", "resim": "assets/flags/Flag_of_Lithuania.png"},
    {"ulke": "Lüksemburg", "resim": "assets/flags/Flag_of_Luxembourg.png"},
    {"ulke": "Madagaskar", "resim": "assets/flags/Flag_of_Madagascar.png"},
    {"ulke": "Malavi", "resim": "assets/flags/Flag_of_Malawi.png"},
    {"ulke": "Maldivler", "resim": "assets/flags/Flag_of_Maldives.png"},
    {"ulke": "Moritanya", "resim": "assets/flags/Flag_of_Mauritania.png"},
    {"ulke": "Mauritius", "resim": "assets/flags/Flag_of_Mauritius.png"},
    {"ulke": "Meksika", "resim": "assets/flags/Flag_of_Mexico.png"},
    {"ulke": "Moldova", "resim": "assets/flags/Flag_of_Moldova.png"},
    {"ulke": "Monako", "resim": "assets/flags/Flag_of_Monaco.png"},
    {"ulke": "Moğolistan", "resim": "assets/flags/Flag_of_Mongolia.png"},
    {"ulke": "Karadağ", "resim": "assets/flags/Flag_of_Montenegro.png"},
    {"ulke": "Mozambik", "resim": "assets/flags/Flag_of_Mozambique.png"},
    {"ulke": "Myanmar", "resim": "assets/flags/Flag_of_Myanmar.png"},
    {"ulke": "Namibya", "resim": "assets/flags/Flag_of_Namibia.png"},
    {"ulke": "Nauru", "resim": "assets/flags/Flag_of_Nauru.png"},
    {"ulke": "Nikaragua", "resim": "assets/flags/Flag_of_Nicaragua.png"},
    {"ulke": "Niue", "resim": "assets/flags/Flag_of_Niue.png"},
    {"ulke": "Umman", "resim": "assets/flags/Flag_of_Oman.png"},
    {
      "ulke": "Papua Yeni Gine",
      "resim": "assets/flags/Flag_of_Papua_New_Guinea.png",
    },
    {"ulke": "Polonya", "resim": "assets/flags/Flag_of_Poland.png"},
    {"ulke": "Portekiz", "resim": "assets/flags/Flag_of_Portugal.png"},
    {"ulke": "Ruanda", "resim": "assets/flags/Flag_of_Rwanda.png"},
    {
      "ulke": "Saint Kitts ve Nevis",
      "resim": "assets/flags/Flag_of_Saint_Kitts_and_Nevis.png",
    },
    {"ulke": "Saint Lucia", "resim": "assets/flags/Flag_of_Saint_Lucia.png"},
    {
      "ulke": "Saint Vincent ve Grenadinler",
      "resim": "assets/flags/Flag_of_Saint_Vincent_and_the_Grenadines.png",
    },
    {
      "ulke": "São Tomé ve Príncipe",
      "resim": "assets/flags/Flag_of_São_Tomé_and_Príncipe.png",
    },
    {"ulke": "Senegal", "resim": "assets/flags/Flag_of_Senegal.png"},
    {"ulke": "Sırbistan", "resim": "assets/flags/Flag_of_Serbia.png"},
    {"ulke": "Seyşeller", "resim": "assets/flags/Flag_of_Seychelles.png"},
    {"ulke": "Slovakya", "resim": "assets/flags/Flag_of_Slovakia.png"},
    {"ulke": "Slovenya", "resim": "assets/flags/Flag_of_Slovenia.png"},
    {"ulke": "Güney Afrika", "resim": "assets/flags/Flag_of_South_Africa.png"},
    {"ulke": "Güney Osetya", "resim": "assets/flags/Flag_of_South_Ossetia.png"},
    {"ulke": "Güney Sudan", "resim": "assets/flags/Flag_of_South_Sudan.png"},
    {"ulke": "Sri Lanka", "resim": "assets/flags/Flag_of_Sri_Lanka.png"},
    {"ulke": "Surinam", "resim": "assets/flags/Flag_of_Suriname.png"},
    {"ulke": "İsviçre", "resim": "assets/flags/Flag_of_Switzerland.png"},
    {"ulke": "Tayland", "resim": "assets/flags/Flag_of_Thailand.png"},
    {"ulke": "Bahamalar", "resim": "assets/flags/Flag_of_the_Bahamas.png"},
    {
      "ulke": "Orta Afrika Cumhuriyeti",
      "resim": "assets/flags/Flag_of_the_Central_African_Republic.png",
    },
    {"ulke": "Komorlar", "resim": "assets/flags/Flag_of_the_Comoros.png"},
    {
      "ulke": "Cook Adaları",
      "resim": "assets/flags/Flag_of_the_Cook_Islands.png",
    },
    {
      "ulke": "Çek Cumhuriyeti",
      "resim": "assets/flags/Flag_of_the_Czech_Republic.png",
    },
    {"ulke": "Gambiya", "resim": "assets/flags/Flag_of_The_Gambia.png"},
    {
      "ulke": "Birleşik Arap Emirlikleri",
      "resim": "assets/flags/Flag_of_the_United_Arab_Emirates.png",
    },
    {
      "ulke": "Trinidad ve Tobago",
      "resim": "assets/flags/Flag_of_Trinidad_and_Tobag.png",
    },
    {"ulke": "Tunus", "resim": "assets/flags/Flag_of_Tunisia.png"},
    {"ulke": "Tuvalu", "resim": "assets/flags/Flag_of_Tuvalu.png"},
    {"ulke": "Vanuatu", "resim": "assets/flags/Flag_of_Vanuatu.png"},
    {"ulke": "Zambiya", "resim": "assets/flags/Flag_of_Zambia.png"},
    {"ulke": "Zimbabve", "resim": "assets/flags/Flag_of_Zimbabwe.png"},
    // ... (diğer bayraklar aynı şekilde devam eder)
  ];

  int? secilenIndeks;
  bool isimGoster = false;
  List<int> karisikSira = []; // Karışık gösterim sırası
  int gosterilenIndex = -1; // Kaçıncı bayraktayız

  void karisikListeOlustur() {
    karisikSira = List.generate(bayraklar.length, (i) => i)..shuffle();
    gosterilenIndex = -1;
  }

  void yeniBayrak() {
    // Eğer ilk kez çalışıyorsa veya tüm bayraklar gösterildiyse
    if (karisikSira.isEmpty || gosterilenIndex >= karisikSira.length - 1) {
      karisikListeOlustur();
    }

    gosterilenIndex++;
    int yeniIndeks = karisikSira[gosterilenIndex];

    setState(() {
      secilenIndeks = yeniIndeks;
      isimGoster = false;
    });
  }

  void ulkeIsminiGoster() {
    if (secilenIndeks == null) return;

    setState(() {
      isimGoster = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bayrak = secilenIndeks != null ? bayraklar[secilenIndeks!] : null;

    return Scaffold(
      appBar: AppBar(title: Text("🌍 Bayrak Bilmece Oyunu"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (bayrak != null)
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    key: ValueKey(bayrak["resim"]),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(66, 235, 17, 17),
                          blurRadius: 10,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(bayrak["resim"]!, height: 200),
                    ),
                  ),
                )
              else
                Text(
                  "🎌 Oyuna başlamak için 'Yeni Bayrak' butonuna tıkla",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 30),
              if (isimGoster && bayrak != null)
                AnimatedOpacity(
                  opacity: 1.0,
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    bayrak["ulke"]!,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 60, 62, 167),
                    ),
                  ),
                ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: yeniBayrak,
                icon: Icon(Icons.flag),
                label: Text("Yeni Bayrak"),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: secilenIndeks == null ? null : ulkeIsminiGoster,
                icon: Icon(Icons.visibility),
                label: Text("Ülkeyi Göster"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
