import 'package:flutter/material.dart';
import 'package:future_jobs/pages/detail_page.dart';

import '../theme.dart';

class JobTile extends StatelessWidget {
  final String imageUrl;
  final String jobTitle;
  final String companyName;

  JobTile({
    this.imageUrl,
    this.jobTitle,
    this.companyName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailpage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 44,
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  companyName,
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
