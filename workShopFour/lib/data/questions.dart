import '../models/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    questionText: "Flutter varsayılan state yönetimi nedir?",
    answers: {
      "GetX": false,
      "Provider": false,
      "setState": true,
      "Bloc": false,
    },
  ),
  QuestionModel(
    questionText: "Flutter'i kim geliştirdi?",
    answers: {
      "Facebook": false,
      "Google": true,
      "Microsoft": false,
      "Apple": false,
    },
  ),
  QuestionModel(
    questionText: "Hangisi Flutter'da layout widget'ı değil?",
    answers: {
      "Column": false,
      "Row": false,
      "Container": false,
      "FlatButton": true,
    },
  ),
  QuestionModel(
    questionText: "Flutter'da popüler state yönetimi nedir?",
    answers: {
      "HTTP": false,
      "Provider": true,
      "url_launcher": false,
      "flutter_svg": false,
    },
  ),
  QuestionModel(
    questionText: "Flutter'da animasyonu başlatan widget?",
    answers: {
      "Animator": false,
      "AnimationController": true,
      "AnimationBuilder": false,
      "AnimatedWidget": false,
    },
  ),
  QuestionModel(
    questionText: "StatelessWidget ile StatefulWidget arasındaki temel fark nedir?",
    answers: {
      "StatelessWidget durum değişikliklerini takip eder": false,
      "StatefulWidget yeniden oluşturulabilir ve durumunu koruyabilir": true,
      "StatelessWidget durumunu koruyabilir": false,
      "StatefulWidget durum değişikliklerini takip edemez": false,
    },
  ),
  QuestionModel(
    questionText: "Hangisi Flutter'da state yönetimi için kullanılan bir paket değildir?",
    answers: {
      "Bloc": false,
      "MobX": false,
      "Redux": false,
      "SQL": true,
    },
  ),
  QuestionModel(
    questionText: "Flutter'da sayfa navigasyonu için hangi widget kullanılır?",
    answers: {
      "MaterialApp": false,
      "Navigator": true,
      "AppBar": false,
      "Scaffold": false,
    },
  ),
  QuestionModel(
    questionText: "Flutter'da HTTP istekleri için yaygın kullanılan paket hangisidir?",
    answers: {
      "http": true,
      "socket": false,
      "request": false,
      "connect": false,
    },
  ),
  QuestionModel(
    questionText: "Flutter'da sınırsız boyutlu bir kutu nasıl oluşturulur?",
    answers: {
      "UnboundedBox": false,
      "InfiniteBox": false,
      "SizedBox.expand": true,
      "ConstrainedBox": false,
    },
  ),
];
