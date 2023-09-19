import 'package:flutter/material.dart';
import 'model.dart';

class TelegramView extends StatefulWidget {
  const TelegramView({Key? key}) : super(key: key);

  @override
  State<TelegramView> createState() => _TelegramViewState();
}

class _TelegramViewState extends State<TelegramView> {
  List<ChatModel> list = [
    ChatModel(
        userImage:
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
        userName: "Muhammed Seoudii",
        message: "hey whats up man where have you been yesterday",
        time: "11.25PM",
        isread: true),
    ChatModel(
        userImage:
        "https://engineering.unl.edu/images/staff/Kayla-Person.jpg",
        userName: "Kate Marrion",
        message: "you can do whatever you want",
        time: "5.45AM",
        isread: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [Icon(Icons.search)],
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          // // Image.asset(
          //   "assets/images/Background.jpg",
          //   width: double.infinity,
          //   fit: BoxFit.fill,
          // ),
          ListView.separated(
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        list[index].userImage ,
                      ),
                      radius: 25,
                    ),
                    title: Text(list[index].userName,
                        style: TextStyle(fontSize: 18)),
                    subtitle: Text(
                      list[index].message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.check), Text(list[index].time)],
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
              itemCount: list.length)
        ],
      ),
    );
  }
}
