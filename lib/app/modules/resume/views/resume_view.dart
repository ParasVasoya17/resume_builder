import 'dart:math';

import '../../../utils/all_imports.dart';
import '../controllers/resume_controller.dart';

class ResumeView extends GetView<ResumeController> {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResumeController>(
      assignId: true,
      init: ResumeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.blue,
            title: AppText(
              AppStrings.resume,
              fontSize: 22.sp,
              fontFamily: FontFamily.regular,
              color: AppColors.black,
              fontWeight: FontWeight.w500,
            ),
            toolbarHeight: 50.h,
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () {
                  controller.isEditable.value = !controller.isEditable.value;
                  controller.update();
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Icon(Icons.edit),
                ),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(10.w),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Center(
                  child: Column(
                    children: [
                      AppText(
                        controller.resumeData!.fullName.text,
                        fontSize: 22.sp,
                        fontFamily: FontFamily.regular,
                        color: AppColors.babyBlue,
                        fontWeight: FontWeight.w500,
                      ),
                      AppText(
                        controller.resumeData!.designation.text,
                        fontSize: 20.sp,
                        fontFamily: FontFamily.regular,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      20.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.email, size: 10.w),
                              2.horizontalSpace,
                              AppText(
                                controller.resumeData!.email.text,
                                fontSize: 10.sp,
                                fontFamily: FontFamily.regular,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          10.horizontalSpace,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.phone, size: 10.w),
                              2.horizontalSpace,
                              AppText(
                                controller.resumeData!.phone.text,
                                fontSize: 10.sp,
                                fontFamily: FontFamily.regular,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          10.horizontalSpace,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on, size: 10.w),
                              2.horizontalSpace,
                              AppText(
                                controller.resumeData!.address.text,
                                fontSize: 10.sp,
                                fontFamily: FontFamily.regular,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColors.babyBlue, thickness: 2.h),
                ReorderableListView(
                  shrinkWrap: true,
                  onReorder: controller.reorderData,
                  children: [
                    for (final items in controller.item)
                      Container(
                        key: ValueKey(items),
                        child: Row(
                          children: [
                            Expanded(child: items),
                            GestureDetector(
                              onTap: () {
                                controller.item.remove(items);
                                controller.update();
                              },
                              child: controller.isEditable.value ? Icon(Icons.delete) : Container(),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  // Widget profileSummery(ResumeController controller) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       20.verticalSpace,
  //       AppText(
  //         AppStrings.profile,
  //         fontSize: 20.sp,
  //         fontFamily: FontFamily.regular,
  //         color: AppColors.babyBlue,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       Divider(color: AppColors.black, thickness: 0.5.h),
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Padding(
  //             padding: EdgeInsets.only(top: 5.h),
  //             child: Icon(Icons.circle, size: 10.w),
  //           ),
  //           4.horizontalSpace,
  //           Expanded(
  //             child: AppText(
  //               controller.resumeData!.profile.text,
  //               fontSize: 16.sp,
  //               fontFamily: FontFamily.regular,
  //               color: AppColors.black,
  //               fontWeight: FontWeight.w400,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
  //
  // Widget skillsWidget(ResumeController resumeController) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       20.verticalSpace,
  //       AppText(
  //         AppStrings.skills,
  //         fontSize: 20.sp,
  //         fontFamily: FontFamily.regular,
  //         color: AppColors.babyBlue,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       Divider(color: AppColors.black, thickness: 0.5.h),
  //       ListView.builder(
  //           shrinkWrap: true,
  //           physics: NeverScrollableScrollPhysics(),
  //           itemCount: controller.resumeData!.skillsList.length,
  //           itemBuilder: (context, index) {
  //             return Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: EdgeInsets.only(top: 5.h),
  //                   child: Icon(Icons.circle, size: 10.w),
  //                 ),
  //                 4.horizontalSpace,
  //                 Expanded(
  //                   child: AppText(
  //                     controller.resumeData!.skillsList[index].text,
  //                     fontSize: 16.sp,
  //                     fontFamily: FontFamily.regular,
  //                     color: AppColors.black,
  //                     fontWeight: FontWeight.w400,
  //                   ),
  //                 ),
  //               ],
  //             );
  //           }),
  //     ],
  //   );
  // }
  //
  // Widget educationWidget(ResumeController resumeController) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       20.verticalSpace,
  //       AppText(
  //         AppStrings.education,
  //         fontSize: 20.sp,
  //         fontFamily: FontFamily.regular,
  //         color: AppColors.babyBlue,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       Divider(color: AppColors.black, thickness: 0.5.h),
  //       ListView.builder(
  //           shrinkWrap: true,
  //           physics: NeverScrollableScrollPhysics(),
  //           itemCount: controller.resumeData!.educationsLength.value,
  //           itemBuilder: (context, index) {
  //             return Row(
  //               children: [
  //                 Icon(Icons.circle, size: 10.w),
  //                 4.horizontalSpace,
  //                 AppText(
  //                   controller.resumeData!.educationNameList[index].text,
  //                   fontSize: 16.sp,
  //                   fontFamily: FontFamily.regular,
  //                   color: AppColors.black,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //                 Spacer(),
  //                 AppText(
  //                   "(${controller.resumeData!.educationYearList[index].text})",
  //                   fontSize: 16.sp,
  //                   fontFamily: FontFamily.regular,
  //                   color: AppColors.black,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ],
  //             );
  //           }),
  //     ],
  //   );
  // }
  //
  // Widget experienceWidget(ResumeController resumeController) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       20.verticalSpace,
  //       AppText(
  //         AppStrings.experience,
  //         fontSize: 20.sp,
  //         fontFamily: FontFamily.regular,
  //         color: AppColors.babyBlue,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       Divider(color: AppColors.black, thickness: 0.5.h),
  //       ListView.builder(
  //           shrinkWrap: true,
  //           physics: NeverScrollableScrollPhysics(),
  //           itemCount: controller.resumeData!.experiencesLength.value,
  //           itemBuilder: (context, index) {
  //             return Row(
  //               children: [
  //                 Icon(Icons.circle, size: 10.w),
  //                 4.horizontalSpace,
  //                 AppText(
  //                   controller.resumeData!.experienceNameList[index].text,
  //                   fontSize: 16.sp,
  //                   fontFamily: FontFamily.regular,
  //                   color: AppColors.black,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //                 Spacer(),
  //                 AppText(
  //                   "(${controller.resumeData!.experienceYearList[index].text})",
  //                   fontSize: 16.sp,
  //                   fontFamily: FontFamily.regular,
  //                   color: AppColors.black,
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ],
  //             );
  //           }),
  //     ],
  //   );
  // }
  //
  // Widget projectWidget(ResumeController resumeController) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       20.verticalSpace,
  //       AppText(
  //         AppStrings.project,
  //         fontSize: 20.sp,
  //         fontFamily: FontFamily.regular,
  //         color: AppColors.babyBlue,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       Divider(color: AppColors.black, thickness: 0.5.h),
  //       ListView.builder(
  //           shrinkWrap: true,
  //           physics: NeverScrollableScrollPhysics(),
  //           itemCount: controller.resumeData!.projectsLength.value,
  //           itemBuilder: (context, index) {
  //             return Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 AppText(
  //                   controller.resumeData!.projectNameList[index].text,
  //                   fontSize: 18.sp,
  //                   fontFamily: FontFamily.regular,
  //                   color: AppColors.black,
  //                   fontWeight: FontWeight.w800,
  //                 ),
  //                 4.verticalSpace,
  //                 Row(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Padding(
  //                       padding: EdgeInsets.only(top: 5.h),
  //                       child: Icon(Icons.circle, size: 10.w),
  //                     ),
  //                     4.horizontalSpace,
  //                     Expanded(
  //                       child: AppText(
  //                         controller.resumeData!.projectDetailsList[index].text,
  //                         fontSize: 16.sp,
  //                         fontFamily: FontFamily.regular,
  //                         color: AppColors.black,
  //                         fontWeight: FontWeight.w400,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 6.verticalSpace,
  //               ],
  //             );
  //           }),
  //     ],
  //   );
  // }
}
// import '../../../utils/all_imports.dart';
// import '../controllers/resume_controller.dart';
//
// class ResumeView extends GetView<ResumeController> {
//   const ResumeView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<ResumeController>(
//       assignId: true,
//       init: ResumeController(),
//       builder: (controller) {
//         return Scaffold(
//           appBar: AppBar(
//             backgroundColor: AppColors.blue,
//             title: AppText(
//               AppStrings.resume,
//               fontSize: 22.sp,
//               fontFamily: FontFamily.regular,
//               color: AppColors.black,
//               fontWeight: FontWeight.w500,
//             ),
//             toolbarHeight: 50.h,
//             centerTitle: true,
//           ),
//           body: Padding(
//             padding: EdgeInsets.all(10.w),
//             child: ListView(
//               physics: const BouncingScrollPhysics(),
//               children: [
//                 Center(
//                   child: Column(
//                     children: [
//                       AppText(
//                         controller.resumeData!.fullName.text,
//                         fontSize: 22.sp,
//                         fontFamily: FontFamily.regular,
//                         color: AppColors.babyBlue,
//                         fontWeight: FontWeight.w500,
//                       ),
//                       AppText(
//                         controller.resumeData!.designation.text,
//                         fontSize: 20.sp,
//                         fontFamily: FontFamily.regular,
//                         color: AppColors.black,
//                         fontWeight: FontWeight.w500,
//                       ),
//                       20.verticalSpace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Row(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Icon(Icons.email, size: 10.w),
//                               2.horizontalSpace,
//                               AppText(
//                                 controller.resumeData!.email.text,
//                                 fontSize: 10.sp,
//                                 fontFamily: FontFamily.regular,
//                                 color: AppColors.black,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ],
//                           ),
//                           10.horizontalSpace,
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Icon(Icons.phone, size: 10.w),
//                               2.horizontalSpace,
//                               AppText(
//                                 controller.resumeData!.phone.text,
//                                 fontSize: 10.sp,
//                                 fontFamily: FontFamily.regular,
//                                 color: AppColors.black,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ],
//                           ),
//                           10.horizontalSpace,
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Icon(Icons.location_on, size: 10.w),
//                               2.horizontalSpace,
//                               AppText(
//                                 controller.resumeData!.address.text,
//                                 fontSize: 10.sp,
//                                 fontFamily: FontFamily.regular,
//                                 color: AppColors.black,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(color: AppColors.babyBlue, thickness: 2.h),
//                 10.verticalSpace,
//                 AppText(
//                   AppStrings.profile,
//                   fontSize: 20.sp,
//                   fontFamily: FontFamily.regular,
//                   color: AppColors.babyBlue,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 Divider(color: AppColors.black, thickness: 0.5.h),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: 5.h),
//                       child: Icon(Icons.circle, size: 10.w),
//                     ),
//                     4.horizontalSpace,
//                     Expanded(
//                       child: AppText(
//                         controller.resumeData!.profile.text,
//                         fontSize: 16.sp,
//                         fontFamily: FontFamily.regular,
//                         color: AppColors.black,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ],
//                 ),
//                 20.verticalSpace,
//                 AppText(
//                   AppStrings.skills,
//                   fontSize: 20.sp,
//                   fontFamily: FontFamily.regular,
//                   color: AppColors.babyBlue,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 Divider(color: AppColors.black, thickness: 0.5.h),
//                 ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: controller.resumeData!.skillsList.length,
//                     itemBuilder: (context, index) {
//                       return Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(top: 5.h),
//                             child: Icon(Icons.circle, size: 10.w),
//                           ),
//                           4.horizontalSpace,
//                           Expanded(
//                             child: AppText(
//                               controller.resumeData!.skillsList[index].text,
//                               fontSize: 16.sp,
//                               fontFamily: FontFamily.regular,
//                               color: AppColors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       );
//                     }),
//                 20.verticalSpace,
//                 AppText(
//                   AppStrings.education,
//                   fontSize: 20.sp,
//                   fontFamily: FontFamily.regular,
//                   color: AppColors.babyBlue,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 Divider(color: AppColors.black, thickness: 0.5.h),
//                 ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: controller.resumeData!.educationsLength.value,
//                     itemBuilder: (context, index) {
//                       return Row(
//                         children: [
//                           Icon(Icons.circle, size: 10.w),
//                           4.horizontalSpace,
//                           AppText(
//                             controller.resumeData!.educationNameList[index].text,
//                             fontSize: 16.sp,
//                             fontFamily: FontFamily.regular,
//                             color: AppColors.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           Spacer(),
//                           AppText(
//                             "(${controller.resumeData!.educationYearList[index].text})",
//                             fontSize: 16.sp,
//                             fontFamily: FontFamily.regular,
//                             color: AppColors.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ],
//                       );
//                     }),
//                 20.verticalSpace,
//                 AppText(
//                   AppStrings.experience,
//                   fontSize: 20.sp,
//                   fontFamily: FontFamily.regular,
//                   color: AppColors.babyBlue,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 Divider(color: AppColors.black, thickness: 0.5.h),
//                 ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: controller.resumeData!.experiencesLength.value,
//                     itemBuilder: (context, index) {
//                       return Row(
//                         children: [
//                           Icon(Icons.circle, size: 10.w),
//                           4.horizontalSpace,
//                           AppText(
//                             controller.resumeData!.experienceNameList[index].text,
//                             fontSize: 16.sp,
//                             fontFamily: FontFamily.regular,
//                             color: AppColors.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           Spacer(),
//                           AppText(
//                             "(${controller.resumeData!.experienceYearList[index].text})",
//                             fontSize: 16.sp,
//                             fontFamily: FontFamily.regular,
//                             color: AppColors.black,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ],
//                       );
//                     }),
//                 20.verticalSpace,
//                 AppText(
//                   AppStrings.project,
//                   fontSize: 20.sp,
//                   fontFamily: FontFamily.regular,
//                   color: AppColors.babyBlue,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 Divider(color: AppColors.black, thickness: 0.5.h),
//                 ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: controller.resumeData!.projectsLength.value,
//                     itemBuilder: (context, index) {
//                       return Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           AppText(
//                             controller.resumeData!.projectNameList[index].text,
//                             fontSize: 18.sp,
//                             fontFamily: FontFamily.regular,
//                             color: AppColors.black,
//                             fontWeight: FontWeight.w800,
//                           ),
//                           4.verticalSpace,
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 5.h),
//                                 child: Icon(Icons.circle, size: 10.w),
//                               ),
//                               4.horizontalSpace,
//                               Expanded(
//                                 child: AppText(
//                                   controller.resumeData!.projectDetailsList[index].text,
//                                   fontSize: 16.sp,
//                                   fontFamily: FontFamily.regular,
//                                   color: AppColors.black,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           6.verticalSpace,
//                         ],
//                       );
//                     }),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
