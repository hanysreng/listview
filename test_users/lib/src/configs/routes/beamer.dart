// import 'package:beamer/beamer.dart';
// import 'package:flutter/material.dart';
// import 'package:test_users/src/Modules/Investment/screen/Equity_investment/company_information.dart';
// import 'package:test_users/src/Modules/Investment/screen/Equity_investment/financ_information.dart';
// import 'package:test_users/src/Modules/Investment/screen/Equity_investment/required_document.dart';
// import 'package:test_users/src/Modules/Investment/screen/investment_screen.dart';

// // final navigationToSecondProvider = StateProvider<bool>((ref) => false);
// // final navigationToThirdProvider = StateProvider<bool>((ref) => false);

// const firstRoute = 'main';
// const secondRoute = 'investment_screen';
// const thirdRoute = 'financ_information';
// const foreRoute = 'company_information';
// const fiveRoute = 'required_document';

// class MyLocation extends BeamLocation<BeamState> {
//   @override
//   List<Pattern> get pathPatterns => [
//     '/secondRoute',
//      '/thirdRoute',
//     '/secondRoute/thirdRoute',
//     '/thirdRoute/foreRoute',
//     '/foreRoute/fiveRoute',
//   ];

//   @override
//   List<BeamPage> buildPages(BuildContext context, BeamState state) {
//     return [
//       BeamPage(key: ValueKey(secondRoute), child: InvestMentScreen()),
//       if (state.uri.pathSegments.contains(thirdRoute))
//         BeamPage(key: ValueKey(thirdRoute), fullScreenDialog: true, child: FinancingInformationScreen()),
//       if (state.uri.pathSegments.contains(foreRoute))
//         BeamPage(key: ValueKey(foreRoute), fullScreenDialog: true, child: CompanyInformationScreen()),
//          if (state.uri.pathSegments.contains(fiveRoute))
//         BeamPage(key: ValueKey(fiveRoute), fullScreenDialog: true, child: RequiredDocumentsScreen()),
       
//     ];
//   }
// }

import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:test_users/src/Modules/Investment/screen/Equity_investment/company_information.dart';
import 'package:test_users/src/Modules/Investment/screen/Equity_investment/financ_information.dart';
import 'package:test_users/src/Modules/Investment/screen/Equity_investment/required_document.dart';
import 'package:test_users/src/Modules/Investment/screen/investment_screen.dart';

final simpleLocationBuilder = RoutesLocationBuilder(
  routes: {
    '/': (context, state, data) =>const BeamPage(
          key: ValueKey('investment_screen'),
          title: 'InvestMentScreen',
          child: InvestMentScreen(),
        ),
    '/financ_information': (context, state, data) => BeamPage(
          key:const ValueKey('financ_information'),
          title: 'FinancInformationScreen',
          child: FinancInformationScreen(),
        ),
      '/company_information': (context, state, data) => const BeamPage(
          key: ValueKey('company_information'),
          title: 'CompanyInformationScreen',
          child: CompanyInformationScreen(),
        ),
         '/required_document': (context, state, data) => const BeamPage(
          key: ValueKey('required_document'),
          title: 'RequiredDocumentsScreen',
          child: RequiredDocumentsScreen(),
        ),

    // '/books/:bookId': (context, state, data) {
    //   final book = books.firstWhere((book) =>
    //       book['id'] ==
    //       (context.currentBeamLocation.state as BeamState)
    //           .pathParameters['bookId']);

    //   return BeamPage(
    //     key: ValueKey('book-${book['id']}'),
    //     title: book['title'],
    //     child: BookDetailsScreen(book: book),
    //   );
    // }
  },
);
