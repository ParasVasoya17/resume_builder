import 'package:get/get.dart';
import 'package:resume_builder_flutter/app/modules/home/controllers/home_controller.dart';

class ResumeController extends GetxController {
  HomeController? resumeData;
  @override
  void onInit() {
    resumeData = Get.find<HomeController>();
    print("device size ==${Get.size.height}device size ==${Get.size.width}device size ==${Get.height}device size ==${Get.width}");
    super.onInit();
  }
}
