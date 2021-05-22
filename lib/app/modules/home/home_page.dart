import 'package:flutter/material.dart';
import 'package:flutter_arch/app/data/models/picsum_model.dart';
import 'package:flutter_arch/app/modules/home/home_controller.dart';
import 'package:flutter_arch/app/widgets/switch_widget.dart';
import 'package:flutter_arch/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();
  final appController = Modular.get<AppController>();

  @override
  void initState() {
    controller.getPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ValueListenableBuilder(
        valueListenable:
            Modular.get<AppController>().changeThemeViewModel.theme,
        builder: (context, isDark, child) =>
            ValueListenableBuilder<List<PicsumModel>>(
          valueListenable: controller.photos,
          builder: (_, photos, __) {
            return photos.length == 0
                ? Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          appController.changeThemeViewModel.switchTheme();
                        },
                        icon: appController.changeThemeViewModel.isDark
                            ? Icon(Icons.nights_stay_rounded)
                            : Icon(Icons.wb_sunny),
                        label: appController.changeThemeViewModel.isDark
                            ? Text('Goes light')
                            : Text('Goes dark'),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: photos.length,
                          itemBuilder: (_, index) {
                            return ListTile(
                              title: Image.network(photos[index].downloadUrl),
                              subtitle: Text(photos[index].author),
                            );
                          },
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
