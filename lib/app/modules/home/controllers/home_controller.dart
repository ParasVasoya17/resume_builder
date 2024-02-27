import 'package:resume_builder_flutter/app/utils/all_imports.dart';

class HomeController extends GetxController {
  TextEditingController fullName = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController profile = TextEditingController();

  TextEditingController skills = TextEditingController();
  TextEditingController experienceName = TextEditingController();
  TextEditingController experienceYear = TextEditingController();
  TextEditingController educationName = TextEditingController();
  TextEditingController educationYear = TextEditingController();
  TextEditingController projectName = TextEditingController();
  TextEditingController projectDetails = TextEditingController();

  List<TextEditingController> skillsList = [];
  List<TextEditingController> experienceNameList = [];
  List<TextEditingController> experienceYearList = [];
  List<TextEditingController> educationNameList = [];
  List<TextEditingController> educationYearList = [];
  List<TextEditingController> projectNameList = [];
  List<TextEditingController> projectDetailsList = [];

  RxInt skillsLength = 1.obs;
  RxInt experiencesLength = 1.obs;
  RxInt educationsLength = 1.obs;
  RxInt projectsLength = 1.obs;

  @override
  void onInit() {
    skillsList.add(skills = TextEditingController());
    experienceNameList.add(experienceName = TextEditingController());
    experienceYearList.add(experienceYear = TextEditingController());
    educationNameList.add(educationName = TextEditingController());
    educationYearList.add(educationYear = TextEditingController());
    projectNameList.add(projectName = TextEditingController());
    projectDetailsList.add(projectDetails = TextEditingController());
    super.onInit();
  }
}
