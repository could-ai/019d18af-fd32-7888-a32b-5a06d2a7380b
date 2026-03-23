import 'package:flutter/material.dart';

void main() {
  runApp(const GoldInvestmentApp());
}

class GoldInvestmentApp extends StatelessWidget {
  const GoldInvestmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gold Investment Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black87,
          elevation: 2,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const GoldScriptScreen(),
      },
    );
  }
}

class ScriptLine {
  final String character;
  final String text;
  final bool isExpert;

  ScriptLine({
    required this.character,
    required this.text,
    required this.isExpert,
  });
}

class GoldScriptScreen extends StatefulWidget {
  const GoldScriptScreen({super.key});

  @override
  State<GoldScriptScreen> createState() => _GoldScriptScreenState();
}

class _GoldScriptScreenState extends State<GoldScriptScreen> {
  final List<ScriptLine> scriptData = [
    ScriptLine(
      character: "राहुल (गुंतवणूकदार)",
      text: "नमस्कार प्रिया मॅडम! सध्या बाजारात सोन्याचे भाव कमी होताना दिसत आहेत. मला सांगा, सोनं अजून पडेल की वाढेल? (Gold vadel ka padel?)",
      isExpert: false,
    ),
    ScriptLine(
      character: "प्रिया (आर्थिक तज्ज्ञ)",
      text: "नमस्कार राहुल! सध्या 24 कॅरेट सोन्याचा भाव साधारण ₹14,596 प्रति ग्रॅम आणि 22 कॅरेटचा भाव ₹13,379 प्रति ग्रॅम आहे. बाजारात सध्या थोडे चढ-उतार सुरू आहेत.",
      isExpert: true,
    ),
    ScriptLine(
      character: "राहुल (गुंतवणूकदार)",
      text: "पण हे भाव अचानक कमी का होत आहेत? (Gold rate kami ka hot ahea?)",
      isExpert: false,
    ),
    ScriptLine(
      character: "प्रिया (आर्थिक तज्ज्ञ)",
      text: "याची काही मुख्य कारणे आहेत:\n१. जागतिक बाजारात अमेरिकन डॉलरची (US Dollar) ताकद वाढली आहे.\n२. अमेरिकेच्या मध्यवर्ती बँकेच्या (Federal Reserve) धोरणांमुळे गुंतवणूकदार इतर पर्यायांकडे वळत आहेत.\n३. इतर मालमत्तांमध्ये (Assets) वाढ होत असल्याने सोन्यातील गुंतवणूक तात्पुरती कमी झाली आहे.",
      isExpert: true,
    ),
    ScriptLine(
      character: "राहुल (गुंतवणूकदार)",
      text: "मग पुढे काय होईल? सोन्याचे भाव भविष्यात वाढतील का?",
      isExpert: false,
    ),
    ScriptLine(
      character: "प्रिया (आर्थिक तज्ज्ञ)",
      text: "होय, नक्कीच! 2026 च्या अखेरीस सोन्याचे भाव पुन्हा वाढण्याची दाट शक्यता आहे. सण आणि लग्नसराईच्या काळात भारतात सोन्याची मागणी नेहमीच वाढते. दीर्घकालीन विचार केल्यास सोनं नेहमीच वर जातं.",
      isExpert: true,
    ),
    ScriptLine(
      character: "राहुल (गुंतवणूकदार)",
      text: "मग आता सोन्यात गुंतवणूक करावी का? (Investment keli pahiji ka nahi?)",
      isExpert: false,
    ),
    ScriptLine(
      character: "प्रिया (आर्थिक तज्ज्ञ)",
      text: "होय, १०० टक्के! भाव कमी असताना खरेदी करणे ही एक उत्तम संधी (Buying Opportunity) असते. सोनं हा महागाईपासून (Inflation) बचाव करणारा सर्वात सुरक्षित पर्याय मानला जातो.",
      isExpert: true,
    ),
    ScriptLine(
      character: "राहुल (गुंतवणूकदार)",
      text: "गुंतवणुकीचे कोणते पर्याय सर्वात चांगले आहेत?",
      isExpert: false,
    ),
    ScriptLine(
      character: "प्रिया (आर्थिक तज्ज्ञ)",
      text: "तुम्ही फक्त दागिन्यांवर अवलंबून न राहता खालील पर्याय निवडू शकता:\n• डिजिटल गोल्ड (Digital Gold)\n• गोल्ड ईटीएफ (Gold ETFs)\n• गोल्ड म्युच्युअल फंड्स\n• सोव्हरेन गोल्ड बाँड्स (SGB - यात तुम्हाला वार्षिक व्याजही मिळते)",
      isExpert: true,
    ),
    ScriptLine(
      character: "राहुल (गुंतवणूकदार)",
      text: "धन्यवाद मॅडम! तुम्ही खूप सोप्या भाषेत आणि छान माहिती दिलीत. मी आजच गुंतवणुकीचा विचार करतो.",
      isExpert: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'सोन्यातील गुंतवणूक: एक चर्चा',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          children: [
            _buildMarketUpdateCard(),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: scriptData.length,
                itemBuilder: (context, index) {
                  final line = scriptData[index];
                  return _buildScriptBubble(line);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMarketUpdateCard() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber.shade300, Colors.amber.shade500],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.amber.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.trending_up, color: Colors.black87),
              SizedBox(width: 8),
              Text(
                'सध्याचे मार्केट रेट्स (Current Rates)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '24K Gold: ₹14,596 / gm',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                '22K Gold: ₹13,379 / gm',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildScriptBubble(ScriptLine line) {
    final isExpert = line.isExpert;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment:
            isExpert ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isExpert) _buildAvatar(isExpert),
          if (isExpert) const SizedBox(width: 12),
          
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: isExpert ? Colors.white : Colors.amber.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft: Radius.circular(isExpert ? 0 : 16),
                  bottomRight: Radius.circular(isExpert ? 16 : 0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    line.character,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: isExpert ? Colors.blue.shade700 : Colors.brown.shade700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    line.text,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          if (!isExpert) const SizedBox(width: 12),
          if (!isExpert) _buildAvatar(isExpert),
        ],
      ),
    );
  }

  Widget _buildAvatar(bool isExpert) {
    return CircleAvatar(
      backgroundColor: isExpert ? Colors.blue.shade100 : Colors.orange.shade100,
      radius: 20,
      child: Icon(
        isExpert ? Icons.support_agent : Icons.person,
        color: isExpert ? Colors.blue.shade700 : Colors.orange.shade700,
        size: 24,
      ),
    );
  }
}
