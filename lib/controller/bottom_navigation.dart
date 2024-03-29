import 'package:get/get.dart';

class BottonNavigationController extends GetxController {
  late String demoCode = ''' ElevatedButton(
                    onPressed: () {},
                    child: const Text("Elevated Button"),
  ),''';
  late String simpleBottonNavigation =
      ''' class SimpleNavigationBar extends StatelessWidget {
  const SimpleNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    SimpleNavigationController simpleNavigationController =
        Get.put(SimpleNavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: titleColor,
          unselectedItemColor: grayColor,
          backgroundColor: Colors.white,
          currentIndex: simpleNavigationController.index.value,
          onTap: (index) {
            simpleNavigationController.index.value = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ),
      ),
      body: Obx(
        () => simpleNavigationController
            .Pages[simpleNavigationController.index.value],
      ),
    );
  }
}
''';

  late String SimpleNavigationController = '''class SimpleNavigationController extends GetxController {
  RxInt index = 0.obs;

  var Pages = [
    DemoHomePage(),
    DemoAboutPage(),
    DemoContactPage(),
    DemoHomePage(),
  ];
}
''';
}
