import 'package:flutter/material.dart';
import 'package:landlord_app/screens/buy_properties_screen.dart';

import './screens/about_landlord_screen.dart';
import './screens/leaderboards_screen.dart';
import './screens/market_place_screen.dart';
import './screens/activity_screen.dart';
import './screens/buy_land_screen.dart';
import './screens/bank_screen.dart';
import './screens/home_screen.dart';

import './models/activity_item.dart';
import './models/property_item.dart';
import './models/drawer_item.dart';
import './models/skills_item.dart';
import './models/about_item.dart';
import './models/bank_item.dart';

const DUMMY_BANK_ITEMS = const [
  BankItem(
    title: 'PILE OF COINS',
    coinAmount: 100,
    price: 1.99,
    imageUrl: null,
  ),
  BankItem(
    title: 'BAG OF COINS',
    coinAmount: 550,
    price: 4.99,
    imageUrl: null,
  ),
  BankItem(
    title: 'SACK OF COINS',
    coinAmount: 1200,
    price: 9.99,
    imageUrl: null,
  ),
  BankItem(
    title: 'CHEST OF COINS',
    coinAmount: 2500,
    price: 20.00,
    imageUrl: null,
  ),
  BankItem(
    title: 'SAFE OF COINS',
    coinAmount: 6500,
    price: 49.99,
    imageUrl: null,
  ),
  BankItem(
    title: 'TRUCK OF COINS',
    coinAmount: 14000,
    price: 99.99,
    imageUrl: null,
  ),
];

const PAGE_NAMES = const [
  DrawerItem(
    title: 'Dashboard',
    icon: Icons.view_list,
    routeName: HomeScreen.routeName,
    index: 0,
  ),
  DrawerItem(
    title: 'Buy Properties',
    icon: Icons.location_on,
    routeName: BuyPropertiesScreen.routeName,
    index: 1,
  ),
  DrawerItem(
    title: 'Market Place',
    icon: Icons.monetization_on,
    routeName: MarketPlaceScreen.routeName,
    index: 2,
  ),
  DrawerItem(
    title: 'Buy Land',
    icon: Icons.layers,
    routeName: BuyLandScreen.routeName,
    index: 3,
  ),
  DrawerItem(
    title: 'Activity',
    icon: Icons.lightbulb_outline,
    routeName: ActivityScreen.routeName,
    index: 4,
  ),
  DrawerItem(
    title: 'Bank',
    icon: Icons.attach_money,
    routeName: BankScreen.routeName,
    index: 5,
  ),
  DrawerItem(
    title: 'Leaderboards',
    icon: Icons.people_outline,
    routeName: LeaderboardsScreen.routeName,
    index: 6,
  ),
  DrawerItem(
    title: 'About Landlord',
    icon: Icons.unfold_more,
    routeName: AboutLandlordScreen.routeName,
    index: 7,
  ),
  DrawerItem(
    title: 'FILL SURVEY',
    icon: Icons.attach_money,
    routeName: HomeScreen.routeName,
    index: 8,
  ),
  // DrawerItem(
  //   title: 'Invite Friends',
  //   icon: Icons.people,
  //   routeName: InviteFriendsScreen.routeName,
  // index: 9,
  // ),
  // DrawerItem(
  //   title: 'Rate App',
  //   icon: Icons.star,
  //   routeName: RateAppScreen.routeName,
  // index: 10,
  // ),
];

//! CAN'T FIGURE OUT WHY I AM GETTING A CONST ERROR ON HANDLER
const ABOUT_LANDLORD_LIST = const [
  AboutItem(
    icon: Icon(Icons.info_outline),
    label: 'About Landlord',
    handler: null, //() {},
  ),
  AboutItem(
    icon: Icon(Icons.security),
    label: 'Terms of service & privacy',
    handler: null,
  ),
  AboutItem(
    icon: Icon(Icons.help_outline),
    label: 'Help',
    handler: null,
  ),
  AboutItem(
    icon: Icon(Icons.headset_mic),
    label: 'Send Feedback',
    handler: null,
  ),
  AboutItem(
    icon: Icon(Icons.chat_bubble_outline),
    label: 'Visit our forum',
    handler: null,
  ),
  AboutItem(
    icon: Icon(Icons.thumb_up),
    label: 'Like us on Facebook',
    handler: null,
  ),
  AboutItem(
    icon: Icon(Icons.exit_to_app),
    label: 'Log Out',
    handler: null,
  ),
];

const ACTIVITY_ITEMS = const [
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
  ActivityItem(
    time: '07:18 Oct 28 2019',
    message: 'Thijs L. accepted offer of \$500,000,000 for 4.1% of the Islands',
  ),
];


const PROPERTIES = const [
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.green,
    id: 1,
    address: '28505 N Moonstone Way',
    growth: true,
    coinValue: 11
  ),
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.blue,
    id: 2,
    address: '28505 N Moonstone Way',
  ),
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.red,
    id: 3,
    growth: false,
    coinValue: 13
  ),
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.yellow,
    id: 4,
    address: '28505 N Moonstone Way',
    growth: true,
  ),
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.pink,
    id: 5,
    address: '28505 N Moonstone Way',
    coinValue: 15
  ),
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.orange,
    id: 6,
    growth: true,
  ),
  PropertyItem(
    imageUrl: '',
    title: 'THE ISLANDS',
    percentOwned: 70.0,
    value: 867537300,
    rent: 37667867,
    cost: 26784045,
    profit: 66661523,
    icon: Icons.home,
    color: Colors.purple,
    id: 7,
    address: '28505 N Moonstone Way',
    growth: false,
    coinValue: 17
  ),
];

const MY_SKILLS = const [
  SkillsItem(
    title: 'TYCOON',
    description: 'INCREASE PROPERTY SLOTS',
    amountOwned: 12,
    increment: 10,
    cost: 963,
  ),
  SkillsItem(
    title: 'LANDLORD NEW',
    description: 'INCREASE LAND SLOTS',
    amountOwned: 19,
    increment: 10,
    cost: 285,
  ),
  SkillsItem(
    title: 'LAWYER',
    description: 'INCREASE PROPERTIES WAITING FOR PAPERWORK',
    amountOwned: 5,
    increment: 1,
    cost: 110,
  ),
  SkillsItem(
    title: 'INNOVATOR',
    description: 'REDUCE PROPERTY COSTS',
    amountOwned: 13,
    increment: -1,
    cost: 85,
  ),
  SkillsItem(
    title: 'LANDLORD',
    description: 'INCREASE PROPERTY RENT',
    amountOwned: 15,
    increment: 1,
    cost: 119,
  ),
  SkillsItem(
    title: 'ACCOUNTANT',
    description: 'REDUCE TAXES',
    amountOwned: 11,
    increment: -1,
    cost: 963,
  ),
  SkillsItem(
    title: 'SPECULATOR',
    description: 'INCREASE PROPERTY VALUATIONS',
    amountOwned: 12,
    increment: 1,
    cost: 75,
  ),
  SkillsItem(
    title: 'EXPLORER',
    description: 'EXTEND BUY PROPERTY LIST BY 5',
    amountOwned: 5,
    increment: 5,
    cost: 180,
  ),
  SkillsItem(
    title: 'BANKER',
    description: 'INCREASE CASH TANK BY 1%',
    amountOwned: 0,
    increment: 1,
    cost: 8,
  ),
];
