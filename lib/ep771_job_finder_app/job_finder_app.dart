import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/job_finder_profile_page.dart';



class JobFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: JobFinderProfilePage(),
    );
  }
}
