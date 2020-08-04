class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarURL;

  ChatModel({this.name, this.message, this.time, this.avatarURL});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Michael Scott",
      message: "Welcome to the electric city",
      time: "2:23 PM",
      avatarURL:
          "https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png"),
  ChatModel(
      name: "Dwight Schrute",
      message: "Bears, Beets, Battlestar Galactica",
      time: "11:30 AM",
      avatarURL:
          "https://img1.looper.com/img/gallery/the-untold-truth-of-dwight-schrute/intro-1562620300.jpg"),
  ChatModel(
      name: "Jim Halpert",
      message: "I work in Philly now",
      time: "10:00 AM",
      avatarURL:
          "https://pbs.twimg.com/profile_images/3171824697/ef75d90df2e65ce326acf30262df5918.jpeg"),
  ChatModel(
      name: "Kevin Malone",
      message: "Oh YEAH!!!",
      time: "9:23 AM",
      avatarURL:
          "https://vignette.wikia.nocookie.net/theoffice/images/e/ec/Kevin3.jpg/revision/latest?cb=20140726053223"),
  ChatModel(
      name: "Angela Martin",
      message: "Hm",
      time: "6:20 AM",
      avatarURL:
          "https://s.yimg.com/ny/api/res/1.2/T375OtY0RDL6dxGFdMKJPw--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9NTAwO2g9MzI4/http://media.zenfs.com/en-US/homerun/hello_giggles_454/a786ff28b7506f3966b127ab2ea8c53d")
];
