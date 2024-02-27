import 'package:resume_builder_flutter/app/modules/home/controllers/home_controller.dart';

import '../../../utils/all_imports.dart';

class ResumeController extends GetxController {
  HomeController? resumeData;
  List<Widget> item = [];
  RxBool isEditable = false.obs;
  @override
  void onInit() {
    resumeData = Get.find<HomeController>();
    item.add(profileSummery());
    item.add(skillsWidget());
    item.add(educationWidget());
    item.add(experienceWidget());
    item.add(projectWidget());
    super.onInit();
  }

  void reorderData(int oldindex, int newindex) {
    if (newindex > oldindex) {
      newindex -= 1;
    }
    final items = item.removeAt(oldindex);
    item.insert(newindex, items);
    update();
  }

  Widget profileSummery() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        AppText(
          AppStrings.profile,
          fontSize: 20.sp,
          fontFamily: FontFamily.regular,
          color: AppColors.babyBlue,
          fontWeight: FontWeight.w500,
        ),
        Divider(color: AppColors.black, thickness: 0.5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Icon(Icons.circle, size: 10.w),
            ),
            4.horizontalSpace,
            Expanded(
              child: AppText(
                resumeData!.profile.text,
                fontSize: 16.sp,
                fontFamily: FontFamily.regular,
                color: AppColors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget skillsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        AppText(
          AppStrings.skills,
          fontSize: 20.sp,
          fontFamily: FontFamily.regular,
          color: AppColors.babyBlue,
          fontWeight: FontWeight.w500,
        ),
        Divider(color: AppColors.black, thickness: 0.5.h),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: resumeData!.skillsList.length,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Icon(Icons.circle, size: 10.w),
                  ),
                  4.horizontalSpace,
                  Expanded(
                    child: AppText(
                      resumeData!.skillsList[index].text,
                      fontSize: 16.sp,
                      fontFamily: FontFamily.regular,
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }

  Widget educationWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        AppText(
          AppStrings.education,
          fontSize: 20.sp,
          fontFamily: FontFamily.regular,
          color: AppColors.babyBlue,
          fontWeight: FontWeight.w500,
        ),
        Divider(color: AppColors.black, thickness: 0.5.h),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: resumeData!.educationsLength.value,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Icon(Icons.circle, size: 10.w),
                  4.horizontalSpace,
                  AppText(
                    resumeData!.educationNameList[index].text,
                    fontSize: 16.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  Spacer(),
                  AppText(
                    "(${resumeData!.educationYearList[index].text})",
                    fontSize: 16.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              );
            }),
      ],
    );
  }

  Widget experienceWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        AppText(
          AppStrings.experience,
          fontSize: 20.sp,
          fontFamily: FontFamily.regular,
          color: AppColors.babyBlue,
          fontWeight: FontWeight.w500,
        ),
        Divider(color: AppColors.black, thickness: 0.5.h),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: resumeData!.experiencesLength.value,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Icon(Icons.circle, size: 10.w),
                  4.horizontalSpace,
                  AppText(
                    resumeData!.experienceNameList[index].text,
                    fontSize: 16.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  Spacer(),
                  AppText(
                    "(${resumeData!.experienceYearList[index].text})",
                    fontSize: 16.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              );
            }),
      ],
    );
  }

  Widget projectWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        AppText(
          AppStrings.project,
          fontSize: 20.sp,
          fontFamily: FontFamily.regular,
          color: AppColors.babyBlue,
          fontWeight: FontWeight.w500,
        ),
        Divider(color: AppColors.black, thickness: 0.5.h),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: resumeData!.projectsLength.value,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    resumeData!.projectNameList[index].text,
                    fontSize: 18.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w800,
                  ),
                  4.verticalSpace,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Icon(Icons.circle, size: 10.w),
                      ),
                      4.horizontalSpace,
                      Expanded(
                        child: AppText(
                          resumeData!.projectDetailsList[index].text,
                          fontSize: 16.sp,
                          fontFamily: FontFamily.regular,
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  6.verticalSpace,
                ],
              );
            }),
      ],
    );
  }
}
