import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:student_table_task/business_logic/global_cubit/global_cubit.dart';
import 'package:student_table_task/data/network/responses/table_response.dart';
import 'package:student_table_task/presentation/styles/colors.dart';
import 'package:student_table_task/presentation/widget/container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalCubit, GlobalState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return GlobalCubit.get(context).tableResponse != null ?
        tableBuilder(GlobalCubit.get(context).tableResponse!,context)
        : Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.white,
          child: Center(child: CircularProgressIndicator()));
      },
    );
  }

  Widget tableBuilder(TableResponse tableResponse , context) => Scaffold(
          appBar: AppBar(
            title: Text(
              'جدول الاختبرات',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black),
            ),
            backgroundColor: AppColor.transparent,
            toolbarHeight: 10.h,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: AppColor.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(25),
                  )),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 220),
                                        child: Container(
                                          width: 75.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ContainerWidget(
                                                height: 10,
                                                width: 23,
                                                color: AppColor.yellow,
                                                borderRadius: 10,
                                                cText: tableResponse.exams![3].grade!.name,
                                                Chorizontal: 10,
                                                Cvertical: 23,
                                              ),
                                              ContainerWidget(
                                                height: 10,
                                                width: 23,
                                                color: AppColor.yellow,
                                                borderRadius: 10,
                                                cText: tableResponse.exams![2].grade!.name,
                                                Chorizontal: 10,
                                                Cvertical: 23,
                                              ),
                                              ContainerWidget(
                                                height: 10,
                                                width: 23,
                                                color: AppColor.yellow,
                                                borderRadius: 10,
                                                cText: tableResponse.exams![0].grade!.name,
                                                Chorizontal: 12,
                                                Cvertical: 23,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Container(
                                        width: 131.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ContainerWidget(
                                              height: 9,
                                              width: 75,
                                              color: AppColor.blue,
                                              borderRadius: 10,
                                              cText: 'المده',
                                              Chorizontal: 10,
                                              Cvertical: 20,
                                            ),
                                            ContainerWidget(
                                              height: 9,
                                              width: 20,
                                              color: AppColor.blue,
                                              borderRadius: 10,
                                              cText: 'نوع الاختبار',
                                              Chorizontal: 20,
                                              Cvertical: 10,
                                            ),
                                            ContainerWidget(
                                              height: 9,
                                              width: 27,
                                              color: AppColor.blue,
                                              borderRadius: 10,
                                              cText: 'التوقيت',
                                              Chorizontal: 30,
                                              Cvertical: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Container(
                                        width: 28.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ContainerWidget(
                                              height: 5,
                                              width: 12,
                                              color: AppColor.blue,
                                              borderRadius: 10,
                                              cText: 'الي',
                                              Chorizontal: 15,
                                              Cvertical: 8,
                                            ),
                                            ContainerWidget(
                                              height: 5,
                                              width: 12,
                                              color: AppColor.blue,
                                              borderRadius: 10,
                                              cText: 'من',
                                              Chorizontal: 15,
                                              Cvertical: 8,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 132.w,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 25,
                                                        color: AppColor.yellow,
                                                        borderRadius: 10,
                                                        cText: 'الي',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 20,
                                                        color: AppColor.blue,
                                                        borderRadius: 10,
                                                        cText: 'AM',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '11AM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '2PM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Container(
                                              width: 132.w,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 25,
                                                        color: AppColor.yellow,
                                                        borderRadius: 10,
                                                        cText: 'الي',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 20,
                                                        color: AppColor.blue,
                                                        borderRadius: 10,
                                                        cText: 'AM',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '11AM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '2PM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Container(
                                              width: 132.w,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 25,
                                                        color: AppColor.yellow,
                                                        borderRadius: 10,
                                                        cText: 'الي',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 20,
                                                        color: AppColor.blue,
                                                        borderRadius: 10,
                                                        cText: 'AM',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '11AM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '1PM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Container(
                                              width: 132.w,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 25,
                                                      color: AppColor.yellow,
                                                      borderRadius: 10,
                                                      cText: 'الي',
                                                      Chorizontal: 15,
                                                      Cvertical: 35,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 25,
                                                        color: AppColor.yellow,
                                                        borderRadius: 10,
                                                        cText: 'الي',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      child: ContainerWidget(
                                                        height: 12,
                                                        width: 20,
                                                        color: AppColor.blue,
                                                        borderRadius: 10,
                                                        cText: 'AM',
                                                        Chorizontal: 15,
                                                        Cvertical: 35,
                                                      ),
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '11AM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                    ContainerWidget(
                                                      height: 12,
                                                      width: 12,
                                                      color: AppColor.blue,
                                                      borderRadius: 10,
                                                      cText: '1PM',
                                                      Chorizontal: 2,
                                                      Cvertical: 35,
                                                    ),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 88),
                          child: Container(
                            width: 30.w,
                            //height: 4.h,
                            child: Column(
                              children: [
                                ContainerWidget(
                                  height: 9,
                                  width: 23,
                                  color: AppColor.blue,
                                  borderRadius: 10,
                                  cText: 'اليوم',
                                  Chorizontal: 30,
                                  Cvertical: 20,
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Container(
                                  height: 27.3.h,
                                  width: 23.w,
                                  decoration: BoxDecoration(
                                      color: AppColor.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'الخميس',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '2022-6-5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                Container(
                                  height: 12.h,
                                  width: 23.w,
                                  decoration: BoxDecoration(
                                      color: AppColor.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'الخميس',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '2022-6-5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                Container(
                                  height: 12.h,
                                  width: 23.w,
                                  decoration: BoxDecoration(
                                      color: AppColor.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'الخميس',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '2022-6-5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
}
