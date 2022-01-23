import 'package:azercell_hackathon/UI/page/app.dart';
import 'package:azercell_hackathon/UI/page/home/business_idea/widget/business_idea_details.dart';
import 'package:azercell_hackathon/UI/page/idea_details/ideoa_details.dart';
import 'package:azercell_hackathon/UI/page/main/main.dart';
import 'package:azercell_hackathon/UI/page/person_information/person_information.dart';
import 'package:azercell_hackathon/UI/page/proposal_detail/proposal_detail.dart';
import 'package:azercell_hackathon/UI/page/see_all/see_all.dart';
import 'package:azercell_hackathon/UI/page/select_product/select_product.dart';
import 'package:azercell_hackathon/blinding/home_bilding.dart';
import 'package:azercell_hackathon/core/roots/app_roots.dart';
import 'package:get/get.dart';

final _binding = HomeBinding();

class AppPages {
  static final home = GetPage(
    name: AppRoutes.HOME,
    page: () => MyApp(),
    binding: _binding,
  );

  static final information = GetPage(
    name: AppRoutes.PERSONINFORMATION,
    page: () => PersonInformation(),
    binding: _binding,
  );
  static final main = GetPage(
    name: AppRoutes.MAIN,
    page: () => MainPage(),
    binding: _binding,
  );
  static final idea_details = GetPage(
    name: AppRoutes.IDEADETAILS,
    page: () => IdeasDetail(),
    binding: _binding,
  );
  static final business_details = GetPage(
    name: AppRoutes.BUSINESSDETAILS,
    page: () => BusinessDetail(),
    binding: _binding,
  );
  static final see_all = GetPage(
    name: AppRoutes.SEEALL,
    page: () => Events(),
    binding: _binding,
  );
  static final propozal = GetPage(
    name: AppRoutes.PROPOSAL,
    page: () => ProposalDetail(),
    binding: _binding,
  );
  static final selectproduct = GetPage(
    name: AppRoutes.SELECTPRODUCT,
    page: () => SelectProduct(),
    binding: _binding,
  );

  static final List<GetPage> pages = [
    home,
    information,
    main,
    idea_details,
    business_details,
    see_all,
    propozal,
    selectproduct
  ];
}
