import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/number.dart';

class PhrasesPage extends StatelessWidget {
  final List<ItemModel> phrasesList = [
    ItemModel(
        jpName: 'rai masu ka',
        enName: 'are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'choushi wa dou desu ka',
        enName: 'how are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'koudoku suru koto wa wasure nai de kudasai',
        enName: 'dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'watashi wa anime ga daisuk desu',
        enName: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'programming ga daisuk',
        enName: 'i love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'programming ga kantan',
        enName: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'anata no namae wa nani desu ka',
        enName: 'what is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'doko ni iki masu ka',
        enName: 'where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: 'hai 、 rai te iya masu',
        enName: 'yes in coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
    ItemModel(
        jpName: 'hai 、 rai te iya masu',
        enName: 'gray',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  PhrasesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff423028),
        title: const Text(
          'Phrase',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        // ignore: avoid_types_as_parameter_names
        itemBuilder: (context, num) {
          return PhrasesItem(
            item: phrasesList[num],
            color: const Color(0xff61A4C8),
          );
        },
      ),
    );
  }
}
