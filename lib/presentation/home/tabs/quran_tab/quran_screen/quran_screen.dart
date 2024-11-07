import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import 'package:my_qauran_app/presentation/home/tabs/quran_tab/quran_screen/quran_data_class/quran_data_class.dart';
import '../../../../../core/assets_manger.dart';
class QuranScreen extends StatefulWidget {
  QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    QuranDataClass quranDataClass = ModalRoute.of(context)?.settings.arguments as QuranDataClass;
    if(verses.isEmpty)readVerse(quranDataClass.index + 1);
    return Container(
        decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(HelperFun.isLight(context) ? AssetsManger.lightMainBackGround : AssetsManger.darkBg),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(quranDataClass.suraName,
            style: HelperFun.isLight(context) ? LightAppStyles.appbar : DarkAppStyles.appbar),
          ),
          body: verses.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: verses.length,
                  itemBuilder: (context, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        verses[index],
                        textAlign: TextAlign.center,
                        style: HelperFun.isLight(context) ? LightAppStyles.verse : DarkAppStyles.verse
                      ),
                    ),
                  ),
                ),
        ));
  }

  void readVerse(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n');
    setState(() {});
  }
}
