import 'package:get/get.dart';
import 'package:getx_demo/pages/home-page.dart';

class SplashController extends GetxController {

  @override
  void onReady() {
    super.onReady();
    Future.delayed( Duration( seconds: 2 ), (){
      // Navegamos hacía el home
      // Get.to( HomePage(), transition: Transition.cupertinoDialog );
      Get.off( HomePage(), transition: Transition.cupertinoDialog );
    });
  }

  @override
  void onClose() {
    super.onClose();
    print('Destruyendo el widget desde el controller');
  }

}