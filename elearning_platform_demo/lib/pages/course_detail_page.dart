import 'package:elearning_platform_demo/data/courses_data.dart';
import 'package:elearning_platform_demo/model/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CourseDetailPage extends StatelessWidget {
  static const routeName = "/course_detail_page";

  const CourseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final courseID = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCourse =
        coursesData.firstWhere((element) => element.id == courseID);

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[100],
      appBar: appBar(context, selectedCourse),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                courseImage(selectedCourse),
                Text(selectedCourse.courseTitle, style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20
                ),),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(IconlyLight.time_circle,
                        size: 19, color: Colors.grey[400]),
                    const SizedBox(width: 5),
                    Text(selectedCourse.duration,
                        style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold, fontSize: 13)),
                    const SizedBox(width: 5),
                    const Text('  •  '),
                    Text(selectedCourse.sectionsLength,
                        style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold, fontSize: 13)),
                    const SizedBox(width: 5),
                    const Text('  •  '),
                    Text(selectedCourse.rating,
                        style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold, fontSize: 13)),
                    const SizedBox(width: 5),
                    Icon(IconlyBold.star, size: 15, color: Colors.yellow[800]),
                  ],
                ),
                const SizedBox(height: 10,),
                Text('About Course',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 5),
                Text(
                  selectedCourse.description,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 5),
                Text('Lessons',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 5),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    
                    separatorBuilder: (context, index) => const SizedBox(height: 10,),
                  itemCount: selectedCourse.sectionLaps.length,
                  itemBuilder: (BuildContext context, int index) {
                      final selectionLaps = selectedCourse.sectionLaps[index];
                      return Container(
                        decoration: ShapeDecoration(
                          shadows: [
                            BoxShadow(
                              color: Colors.grey.shade100,
                              blurStyle: BlurStyle.outer
                            )
                          ],
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                        ),
                        child: ListTile(
                          onTap: () {},
                          leading: Icon(IconlyLight.play, size: 50, color: Colors.grey,),
                          title: Text(selectionLaps[0], style: TextStyle(color: Colors.black, fontSize: 15),),
                          subtitle: Row(
                            children: [
                              const Icon(IconlyLight.time_circle, size: 16, color: Colors.pink,),
                              const SizedBox(width: 3,),
                              Text(selectionLaps[1])
                            ],
                          ),
                        ),
                      );
                  },
                    ),
                const SizedBox(height: 90,)
              ],
            ),

          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          elevation: 10
        ),
        onPressed: () {},
        child: Text(
          "Buy course for ${selectedCourse.price}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Container courseImage(Course selectedCourse) {
    return Container(
                margin: EdgeInsets.only(top: 10, bottom: 8, right: 5),
                constraints: const BoxConstraints.expand(height: 230, width: double.infinity),
                padding: const EdgeInsets.only(left: 16, bottom: 8, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(selectedCourse.imageUrl),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.colorBurn)
                  )
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.6),
                      radius: 50,
                    ),
                    Icon(
                      IconlyBold.play,
                      color: Colors.red,
                      size: 90,
                    )
                  ],
                ),
              );
  }

  AppBar appBar(BuildContext context, Course selectedCourse) {
    return AppBar(
      backgroundColor: Colors.grey[100],
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            size: 26,
            color: Colors.black,
          ),
          style: IconButton.styleFrom(
              shape: CircleBorder(), backgroundColor: Colors.white),
        ),
      ),
      title: const Text(
        "Course Details",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: (selectedCourse.isBookmarked)
                ? const Icon(
                    IconlyBold.heart,
                    size: 26,
                    color: Colors.black,
                  )
                : const Icon(
                    IconlyLight.heart,
                    size: 26,
                    color: Colors.black,
                  ),
          ),
        )
      ],
    );
  }
}
