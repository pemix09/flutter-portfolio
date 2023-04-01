import 'package:flutter/material.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF242430),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(
            flex: 2,
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/images/przemo-profile.jpg"),
          ),
          Spacer(),
          Text(
            "Przemysław Klejno",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            ".NET and Flutter programmer",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
