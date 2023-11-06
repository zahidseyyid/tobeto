import '../models/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Flutter varsayılan state yönetimi nedir?",
    {
      "GetX": false,
      "Provider": false,
      "setState": true,
      "Bloc": false,
    },
  ),
  QuestionModel(
    "Flutter'i kim geliştirdi?",
    {
      "Facebook": false,
      "Google": true,
      "Microsoft": false,
      "Apple": false,
    },
  ),
  QuestionModel(
    "Hangisi Flutter'da layout widget'ı değil?",
    {
      "Column": false,
      "Row": false,
      "Container": false,
      "FlatButton": true,
    },
  ),
  QuestionModel(
    "Flutter'da popüler state yönetimi nedir?",
    {
      "HTTP": false,
      "provider": true,
      "url_launcher": false,
      "flutter_svg": false,
    },
  ),
  QuestionModel(
    "Flutter'da animasyonu başlatan widget?",
    {
      "Animator": false,
      "AnimationController": true,
      "AnimationBuilder": false,
      "AnimatedWidget": false,
    },
  ),
  QuestionModel(
    "Stateless ile StatefulWidget farkı nedir?",
    {
      "Dinamik": false,
      "Durum korur": true,
      "Durum tutar": false,
      "Yalnızca statik": false,
    },
  ),
  QuestionModel(
    "Hangisi Flutter'da state yönetimi değil?",
    {
      "Bloc": false,
      "MobX": false,
      "Redux": false,
      "SQL": true,
    },
  ),
  QuestionModel(
    "Flutter'da sayfa navigasyon widget'ı?",
    {
      "MaterialApp": false,
      "Navigator": true,
      "AppBar": false,
      "Scaffold": false,
    },
  ),
  QuestionModel(
    "Flutter'da HTTP istekleri için paket?",
    {
      "http": true,
      "socket": false,
      "request": false,
      "connect": false,
    },
  ),
  QuestionModel(
    "Flutter'da sınırsız boyutlu kutu?",
    {
      "UnboundedBox": false,
      "InfiniteBox": false,
      "SizedBox.expand": true,
      "ConstrainedBox": false,
    },
  ),
];
