import 'package:flutter/material.dart';
import 'package:flutter_job_search_app/app_styles.dart';
import 'package:flutter_job_search_app/size_config.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: kPadding8,
        ),
        height: 52,
        width: SizeConfig.screenWidth! * 0.6,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius12),
          color: kBluePrimary,
        ),
        child: Center(
          child: Text(
            'APPLY NOW',
            style: kPoppinsBold.copyWith(
              color: kWhite,
              fontSize: SizeConfig.blockSizeHorizontal! * 4,
            ),
          ),
        ),
      ),
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: kWhite,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://imagedynamics.co.id/wp-content/uploads/2018/09/client_logo/Logo_UBER.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Head of Product Design',
                      style: kPoppinsMedium.copyWith(
                        color: kBlack18,
                        fontSize: SizeConfig.blockSizeHorizontal! * 6,
                      ),
                    ),
                    Text(
                      'Uber',
                      style: kPoppinsMedium.copyWith(
                        color: kBlack18,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'Posted on 20 July',
                      style: kPoppinsRegular.copyWith(
                        color: kBlack18,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                thickness: 10,
                color: kWhiteF5,
              ),
              Container(
                color: kWhite,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'APPLY BEFORE',
                              style: kPoppinsBold.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                            Text(
                              '30 December 2023',
                              style: kPoppinsRegular.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SALARY RANGE',
                              style: kPoppinsBold.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                            Text(
                              '\$100k - \$120k/yearly',
                              style: kPoppinsRegular.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JOB NATURE',
                              style: kPoppinsBold.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                            SizedBox(
                              height: 21,
                              child: ListView.builder(
                                itemCount: 1,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: kPadding8,
                                    ),
                                    margin: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        25,
                                      ),
                                      color: kWhiteF5,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Contexttual',
                                        style: kPoppinsRegular.copyWith(
                                          color: kBlack18,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3.5,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JOB LOCATION',
                              style: kPoppinsBold.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                            Text(
                              'Work from Anywhere',
                              style: kPoppinsRegular.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                thickness: 10,
                color: kWhiteF5,
              ),
              Container(
                color: kWhite,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'JOB DESCRIPTION',
                      style: kPoppinsBold.copyWith(
                        color: kBlack18,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TextWrapper(
                      text:
                          'Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye? We believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We\'re looking for a like-minded\n\nCan you bring creative human-centered ideas to life and make great things happen beyond what meets the eye? We believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We\'re looking for a like-minded',
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                thickness: 10,
                color: kWhiteF5,
              ),
              Container(
                color: kWhite,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ROLES AND RESPONSIBILITIES',
                      style: kPoppinsBold.copyWith(
                        color: kBlack18,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TextWrapper(
                      text:
                          '- Someone who has ample work experience with synthesizing primary research, developing insight-driven product strategy, and extending that strategy into artefacts in a creative, systematic and logical fashion \n\n-Adapt and meticulous with creating user',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextWrapper extends StatefulWidget {
  const TextWrapper({super.key, required this.text});

  final String text;

  @override
  State<TextWrapper> createState() => _TextWrapperState();
}

class _TextWrapperState extends State<TextWrapper>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: ConstrainedBox(
            constraints: isExpanded
                ? const BoxConstraints()
                : const BoxConstraints(
                    maxHeight: 120,
                  ),
            child: Text(
              widget.text,
              style: kPoppinsRegular.copyWith(
                color: kBlack18,
                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
              ),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        isExpanded
            ? GestureDetector(
                onTap: () => setState(() => isExpanded = false),
                child: Row(
                  children: [
                    Text(
                      'See less',
                      style: kPoppinsSemibold.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_up,
                      color: kBlack,
                    ),
                  ],
                ),
              )
            : GestureDetector(
                onTap: () => setState(
                  () => isExpanded = true,
                ),
                child: Row(
                  children: [
                    Text(
                      'See more',
                      style: kPoppinsSemibold.copyWith(
                        color: kBluePrimary,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down, color: kBluePrimary),
                  ],
                ),
              )
      ],
    );
  }
}
