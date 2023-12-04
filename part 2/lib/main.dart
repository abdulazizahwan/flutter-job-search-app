import 'package:flutter/material.dart';
import 'package:flutter_job_search_app/app_styles.dart';
import 'package:flutter_job_search_app/job_detail_page.dart';
import 'package:flutter_job_search_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JobDetailPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 8,
        ),
        height: 52,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: kBluePrimary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                style: kPoppinsMedium.copyWith(
                  color: kWhite,
                ),
                controller: TextEditingController(),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(
                      8,
                    ),
                    child: SvgPicture.asset(
                      'assets/icon_search.svg',
                    ),
                  ),
                  hintText: 'Type the jobs you want to search',
                  hintStyle: kPoppinsMedium.copyWith(
                    color: kWhiteF5,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      color: kTransparent,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      color: kTransparent,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      color: kTransparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      color: kTransparent,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      color: kTransparent,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const VerticalDivider(
              color: kWhite,
              thickness: 1,
            ),
            const SizedBox(
              width: 12,
            ),
            SvgPicture.asset(
              'assets/icon_filter_list.svg',
            ),
          ],
        ),
      ),
      backgroundColor: kWhiteF5,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                      'https://miro.medium.com/v2/resize:fit:2400/2*NDZrabY3uLA-1MM3K1MexQ.png',
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icon_notification_none.svg',
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '40 JOBS FOUND',
                    style: kPoppinsBold.copyWith(
                      color: kBlack18,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'All Relevance',
                        style: kPoppinsSemibold.copyWith(
                          color: kBluePrimary,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset(
                        'assets/icon_arrow_drop_down.svg',
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return JobCard(
                    position: 'Senior Product Designer',
                    company: 'Google INC',
                    companyImage:
                        'https://st3.depositphotos.com/1050070/13243/i/450/depositphotos_132435332-stock-photo-google-logo-on-pc-screen.jpg',
                    status: 'applied',
                    types: const [
                      'Full Time',
                      'Remote',
                      'Contractual',
                    ],
                    salary: '\$64k - \$80k',
                    onTap: () {},
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class JobCard extends StatelessWidget {
  JobCard({
    Key? key,
    required this.position,
    required this.company,
    required this.companyImage,
    required this.status,
    required this.salary,
    required this.types,
    required this.onTap,
  }) : super(key: key);

  String position;
  String company;
  String companyImage;
  String status;
  String salary;
  List<String> types;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 113,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kWhite,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              color: kShadow.withOpacity(0.05),
              spreadRadius: 0,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        margin: EdgeInsets.only(
          bottom: SizeConfig.blockSizeVertical! * 1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            companyImage,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          position,
                          style: kPoppinsSemibold.copyWith(
                            color: kBlack18,
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          ),
                        ),
                        Text(
                          company,
                          style: kPoppinsMedium.copyWith(
                            color: kBlack18,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                jobStatus()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 21,
                    child: ListView.builder(
                      itemCount: types.length >= 2 ? 2 : types.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
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
                              types[index],
                              style: kPoppinsMedium.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Text(
                  '$salary/yearly',
                  style: kPoppinsRegular.copyWith(
                    color: kBlack18,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget jobStatus() {
    switch (status) {
      case 'expires':
        return Container(
          transform: Matrix4.translationValues(16, 0, 0),
          height: 20,
          color: kYellowExpires,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.warning,
                size: SizeConfig.blockSizeHorizontal! * 3,
                color: kWhite,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Expires',
                style: kPoppinsSemibold.copyWith(
                  color: kWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 2.3,
                ),
              ),
            ],
          ),
        );

      case 'applied':
        return Container(
          transform: Matrix4.translationValues(16, 0, 0),
          height: 20,
          color: kGreenApplied,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                size: SizeConfig.blockSizeHorizontal! * 3,
                color: kWhite,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Applied',
                style: kPoppinsSemibold.copyWith(
                  color: kWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 2.3,
                ),
              ),
            ],
          ),
        );

      default:
        Container();
        break;
    }

    return Container();
  }
}
