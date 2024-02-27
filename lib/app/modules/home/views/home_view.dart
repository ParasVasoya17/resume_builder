import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:resume_builder_flutter/app/routes/app_pages.dart';
import 'package:resume_builder_flutter/app/utils/all_imports.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      assignId: true,
      init: HomeController(),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.blue,
              title: AppText(
                AppStrings.resumeDetails,
                fontSize: 22.sp,
                fontFamily: FontFamily.regular,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
              toolbarHeight: 50.h,
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(10.w),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  CommonTextFiled(
                    controller: controller.fullName,
                    hintText: AppStrings.fullName,
                    isMaxLines: true,
                    maxLines: 1,
                  ),
                  10.verticalSpace,
                  CommonTextFiled(
                    controller: controller.designation,
                    hintText: AppStrings.designation,
                    isMaxLines: true,
                    maxLines: 1,
                  ),
                  10.verticalSpace,
                  CommonTextFiled(
                    controller: controller.phone,
                    hintText: AppStrings.phone,
                    isMaxLines: true,
                    keyboardType: TextInputType.phone,
                    maxLines: 1,
                  ),
                  10.verticalSpace,
                  CommonTextFiled(
                    controller: controller.email,
                    hintText: AppStrings.email,
                    isMaxLines: true,
                    maxLines: 1,
                  ),
                  10.verticalSpace,
                  CommonTextFiled(
                    controller: controller.address,
                    hintText: AppStrings.address,
                    isMaxLines: true,
                    maxLines: 1,
                  ),
                  10.verticalSpace,
                  CommonTextFiled(
                    controller: controller.profile,
                    hintText: AppStrings.profile,
                    isMaxLines: true,
                    maxLines: 1,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.skillsLength.value,
                      padding: EdgeInsets.only(top: 10.h),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: CommonTextFiled(
                                  controller: controller.skillsList[index],
                                  hintText: "${AppStrings.skills} ${index + 1}",
                                  isMaxLines: true,
                                  maxLines: 1,
                                ),
                              ),
                              index == controller.skillsLength.value - 1
                                  ? GestureDetector(
                                      onTap: () {
                                        controller.skillsList.add(controller.skills = TextEditingController());
                                        controller.skillsLength.value += 1;
                                        print("skill length=====${controller.skillsLength.value}");
                                        controller.update();
                                      },
                                      child: Icon(Icons.add))
                                  : Container()
                            ],
                          ),
                        );
                      }),
                  10.verticalSpace,
                  AppText(
                    AppStrings.educationDetails,
                    fontSize: 22.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.educationsLength.value,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              // padding: EdgeInsets.only(bottom: 16.h),
                              margin: EdgeInsets.only(top: 17.h),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(8.r), border: Border.all(color: AppColors.black)),
                                margin: EdgeInsets.only(
                                  bottom: 15.h,
                                ),
                                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h, bottom: 25.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    CommonTextFiled(
                                      controller: controller.educationNameList[index],
                                      hintText: "${AppStrings.education} ${index + 1}",
                                      isMaxLines: true,
                                      maxLines: 1,
                                      fillColor: AppColors.white,
                                      borderColor: AppColors.blue,
                                    ),
                                    SizedBox(height: 10.h),
                                    CommonTextFiled(
                                      controller: controller.educationYearList[index],
                                      hintText: "${AppStrings.educationYear} ${index + 1}",
                                      isMaxLines: true,
                                      keyboardType: TextInputType.datetime,
                                      maxLines: 1,
                                      fillColor: AppColors.white,
                                      borderColor: AppColors.blue,
                                    ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                            controller.educationsLength.value == index + 1
                                ? Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: Get.width / 2,
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.educationNameList.add(controller.educationName = TextEditingController());
                                          controller.educationYearList.add(controller.educationYear = TextEditingController());
                                          controller.educationsLength.value += 1;
                                          controller.update();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(color: AppColors.blue, shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.add,
                                            size: 30.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        );
                      }),
                  10.verticalSpace,
                  AppText(
                    AppStrings.experienceDetails,
                    fontSize: 22.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.experiencesLength.value,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              // padding: EdgeInsets.only(bottom: 16.h),
                              margin: EdgeInsets.only(top: 17.h),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(8.r), border: Border.all(color: AppColors.black)),
                                margin: EdgeInsets.only(
                                  bottom: 15.h,
                                ),
                                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h, bottom: 25.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    CommonTextFiled(
                                      controller: controller.experienceNameList[index],
                                      hintText: "${AppStrings.companyName} ${index + 1}",
                                      isMaxLines: true,
                                      maxLines: 1,
                                      fillColor: AppColors.white,
                                      borderColor: AppColors.blue,
                                    ),
                                    SizedBox(height: 10.h),
                                    CommonTextFiled(
                                      controller: controller.experienceYearList[index],
                                      hintText: "${AppStrings.experienceYear} ${index + 1}",
                                      isMaxLines: true,
                                      maxLines: 1,
                                      fillColor: AppColors.white,
                                      borderColor: AppColors.blue,
                                    ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                            controller.experiencesLength.value == index + 1
                                ? Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: Get.width / 2,
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.experienceNameList.add(controller.experienceName = TextEditingController());
                                          controller.experienceYearList.add(controller.experienceYear = TextEditingController());
                                          controller.experiencesLength.value += 1;
                                          controller.update();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(color: AppColors.blue, shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.add,
                                            size: 30.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        );
                      }),
                  10.verticalSpace,
                  AppText(
                    AppStrings.projectDetails,
                    fontSize: 22.sp,
                    fontFamily: FontFamily.regular,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.projectsLength.value,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              // padding: EdgeInsets.only(bottom: 16.h),
                              margin: EdgeInsets.only(top: 17.h),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(8.r), border: Border.all(color: AppColors.black)),
                                margin: EdgeInsets.only(
                                  bottom: 15.h,
                                ),
                                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h, bottom: 25.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    CommonTextFiled(
                                      controller: controller.projectNameList[index],
                                      hintText: "${AppStrings.projectName} ${index + 1}",
                                      isMaxLines: true,
                                      maxLines: 1,
                                      fillColor: AppColors.white,
                                      borderColor: AppColors.blue,
                                    ),
                                    SizedBox(height: 10.h),
                                    CommonTextFiled(
                                      controller: controller.projectDetailsList[index],
                                      hintText: "${AppStrings.projectDetails} ${index + 1}",
                                      isMaxLines: true,
                                      maxLines: 1,
                                      fillColor: AppColors.white,
                                      borderColor: AppColors.blue,
                                    ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                            controller.projectsLength.value == index + 1
                                ? Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: Get.width / 2,
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.projectNameList.add(controller.projectName = TextEditingController());
                                          controller.projectDetailsList.add(controller.projectDetails = TextEditingController());
                                          controller.projectsLength.value += 1;
                                          controller.update();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(color: AppColors.blue, shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.add,
                                            size: 30.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        );
                      }),
                  10.verticalSpace,
                  CommonButton(
                    onTap: () {
                      Get.toNamed(Routes.RESUME);
                    },
                    buttonTitle: AppStrings.createResume,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
