import 'package:flutter/material.dart';
import 'package:landlord_app/dummy-data.dart';

import './models/property_item.dart';

import './screens/leaderboard screens/leaderboard_friends_screen.dart';
import './screens/leaderboard screens/leaderboard_global_screen.dart';
import './screens/leaderboard screens/leaderboard_local_screen.dart';
import './screens/leaderboard screens/leaderboard_national_screen.dart';
import './screens/home screens/your_empire_screen.dart';
import './screens/home screens/your_skills_screen.dart';
import './screens/home screens/portfolio_screen.dart';
import './screens/bank screens/buy_coins_screen.dart';
import './screens/bank screens/watch_ads_screen.dart';
import './screens/about_landlord_screen.dart';
import './screens/buy_properties_screen.dart';
import './screens/invite_friends_screen.dart';
import './screens/leaderboards_screen.dart';
import './screens/market_place_screen.dart';
import './screens/property_details.dart';
import './screens/activity_screen.dart';
import './screens/buy_land_screen.dart';
import './screens/rate_app_screen.dart';
import './screens/home_screen.dart';
import './screens/bank_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landlord App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(4, 26, 61, 1),
        accentColor: Color.fromRGBO(6, 61, 148, 1),
        selectedRowColor: Color.fromRGBO(69, 82, 102, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              subhead: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              display1: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              headline: TextStyle(color: Colors.white, fontSize: 20),
            ),
      ),
      home: HomeScreen(),
      routes: {
        // HOME SCREEN TABS
        YourEmpireScreen.routeName: (ctx) => YourEmpireScreen(),
        PortfolioScreen.routeName: (ctx) => PortfolioScreen(),
        YourSkillsScreen.routeName: (ctx) => YourSkillsScreen(),

        // LEADERBOARD SCREEN TABS
        LeaderboardFriendsScreen.routeName: (ctx) => LeaderboardFriendsScreen(),
        LeaderboardGlobalScreen.routeName: (ctx) => LeaderboardGlobalScreen(),
        LeaderboardLocalScreen.routeName: (ctx) => LeaderboardLocalScreen(),
        LeaderboardNationalScreen.routeName: (ctx) =>
            LeaderboardNationalScreen(),

        //BANK SCREEN TABS
        BuyCoinsScreen.routeName: (ctx) => BuyCoinsScreen(),
        WatchAdsScreen.routeName: (ctx) => WatchAdsScreen(),

        // DRAWER TABS
        AboutLandlordScreen.routeName: (ctx) => AboutLandlordScreen(),
        ActivityScreen.routeName: (ctx) => ActivityScreen(),
        BankScreen.routeName: (ctx) => BankScreen(),
        BuyLandScreen.routeName: (ctx) => BuyLandScreen(),
        BuyPropertiesScreen.routeName: (ctx) => BuyPropertiesScreen(),
        LeaderboardsScreen.routeName: (ctx) => LeaderboardsScreen(),
        MarketPlaceScreen.routeName: (ctx) => MarketPlaceScreen(),
        RateAppScreen.routeName: (ctx) => RateAppScreen(),
        InviteFriendsScreen.routeName: (ctx) => InviteFriendsScreen(),

        //PROPERTY SCREENS
        PropertyDetails.routeName: (ctx) => PropertyDetails(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      },
    );
  }
}
