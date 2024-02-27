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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.email, size: 14.w),
                              2.horizontalSpace,
                              AppText(
                                controller.resumeData!.email.text,
                                fontSize: 14.sp,
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
                              Icon(Icons.phone, size: 14.w),
                              2.horizontalSpace,
                              AppText(
                                controller.resumeData!.phone.text,
                                fontSize: 14.sp,
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
                              Icon(Icons.location_on, size: 14.w),
                              2.horizontalSpace,
                              AppText(
                                controller.resumeData!.address.text,
                                fontSize: 14.sp,
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
                10.verticalSpace,
                AppText(
                  AppStrings.profile,
                  fontSize: 22.sp,
                  fontFamily: FontFamily.regular,
                  color: AppColors.babyBlue,
                  fontWeight: FontWeight.w500,
                ),
                Divider(color: AppColors.black, thickness: 0.5.h),
                AppText(
                  controller.resumeData!.profile.text,
                  fontSize: 18.sp,
                  fontFamily: FontFamily.regular,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
