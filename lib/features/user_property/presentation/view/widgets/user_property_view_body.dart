import 'package:flutter/material.dart';
import 'package:sakkiny/core/utils/app_localizations.dart';
import 'package:sakkiny/core/utils/const.dart';
import 'package:sakkiny/core/widgets/custom_divider.dart';
import 'package:sakkiny/features/home/presentation/views/widget/bloc_builder/property_bloc_builder.dart';
import 'package:sakkiny/features/home/presentation/views/widget/bloc_builder/recommended_hose_bloc_builder.dart';
import 'package:sakkiny/features/home/presentation/views/widget/bloc_builder/user_bloc_builder.dart';
import 'package:sakkiny/features/home/presentation/views/widget/custom_login.dart';
import 'package:sakkiny/features/home/presentation/views/widget/custom_search.dart';
import 'package:sakkiny/features/home/presentation/views/widget/custom_text.dart';
import 'package:sakkiny/features/home/presentation/views/widget/custom_view_all.dart';
import 'package:sakkiny/features/user_property/presentation/view/widgets/user_propert_bloc_bulider.dart';


class UserPropertyViewBody extends StatelessWidget {
  const UserPropertyViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            const UserPropertyBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
