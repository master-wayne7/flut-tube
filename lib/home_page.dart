import 'package:cached_network_image/cached_network_image.dart';
import 'package:flut_tube/core/screens/error_page.dart';
import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flut_tube/core/widgets/image_button.dart';
import 'package:flut_tube/core/widgets/loader.dart';
import 'package:flut_tube/features/auth/provider/user_provider.dart';
import 'package:flut_tube/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.kh),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.images.youtubeLogo.image(height: 34.kh),
                      Text(
                        " FlutTube",
                        style: GoogleFonts.roboto(fontSize: 25.kh, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                4.kwidthBox,
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 12.kw),
                  child: SizedBox(
                    height: 42.kh,
                    child: ImageButton(
                      image: Assets.icons.cast,
                      onPressed: () {},
                      haveColor: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 38.kh,
                  child: ImageButton(
                    image: Assets.icons.notification,
                    onPressed: () {},
                    haveColor: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.kw, right: 15.kw),
                  child: SizedBox(
                    height: 41.5.kh,
                    child: ImageButton(
                      image: Assets.icons.search,
                      onPressed: () {},
                      haveColor: false,
                    ),
                  ),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    return ref.watch(currentUserProvider).when(
                          data: (currentUser) => Padding(
                            padding: EdgeInsets.only(right: 12.kw),
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => AccountPage(
                                //       user: currentUser,
                                //     ),
                                //   ),
                                // );
                              },
                              child: CircleAvatar(
                                radius: 14.kh,
                                backgroundColor: Colors.grey,
                                backgroundImage: CachedNetworkImageProvider(
                                  currentUser.profilePic,
                                ),
                              ),
                            ),
                          ),
                          error: (error, stackTrace) => const ErrorPage(),
                          loading: () => const Loader(),
                        );
                  },
                ),
              ],
            ),
            // Expanded(
            //   child: pages[currentIndex],
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigation(
      //   onPressed: (index) {
      //     if (index != 2) {
      //       currentIndex = index;
      //       setState(() {});
      //     } else {
      //       showModalBottomSheet(
      //         context: context,
      //         builder: (context) => const CreateBottomSheet(),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
