import 'dart:ui';

import 'package:pixelfield_app/pf_app/widgets/card_list.dart';
import 'package:pixelfield_app/pf_app/widgets/foundation_list.dart';
import 'package:pixelfield_app/pf_app/widgets/project_list.dart';

class SvgIcons {
  static const String main = 'assets/icons/main.svg';
  static const String profile = 'assets/icons/profile.svg';
  static const String breegy = 'assets/icons/breegy.svg';
  static const String clock = 'assets/icons/clock.svg';
}

class Texts {
  static const String dashboardProjectTitle = "Vyřešíme v Česku #naDobro";
  static const String dashboardCelebrityTitle = "Řeší s námi naDobro";
  static const String foundationHeader = "Nadace";
  static const String foundationButton = "Zobraz vše";
  static const String projectItemLabelNew = "Nové";
  static const String projectItemProgress = "Již pomáhá %s patronů";
  static const String projectItemProgressReady = "%s patronů";
}

const Duration newLabelDuration = Duration(days: 3);
const defaultAvatar = "assets/images/avatar.jpg";

const List<String> carouselImages = [
  "assets/images/carousel1.jpg",
  "assets/images/carousel2.jpg",
  "assets/images/carousel3.jpg",
  "assets/images/carousel4.jpg",
  "assets/images/carousel5.jpg",
];

final List<CardDto> listCards = [
  CardDto(
    "Změna začíná uvědoměním",
    author: "Pavel Moric",
    colors: [Color.fromRGBO(180, 83, 255, 1), Color.fromRGBO(122, 33, 255, 1)],
  ),
  CardDto("Jak funguje neziskový sektor", colors: [Color.fromRGBO(92, 239, 202, 1), Color.fromRGBO(57, 179, 230, 1)]),
  CardDto("Další zajímavé informace", colors: [Color.fromRGBO(239, 220, 110, 1), Color.fromRGBO(233, 202, 1, 1)]),
];

final List<FoundationDto> listFoundations = [
  FoundationDto("Konto Bariéry", logoPath: "assets/images/logo1.jpg"),
  FoundationDto("Smiling Crocodile", logoPath: "assets/images/logo2.png"),
  FoundationDto("Nadace Adra", logoPath: "assets/images/logo3.jpg"),
  FoundationDto("Život dětem", logoPath: "assets/images/logo4.png"),
];

final List<ProjectDto> listProjects = [
  ProjectDto(
    "Trvalá podpora pro rodiny bojující s DMO",
    imageUrl: "https://www.nasedite.cz/files/articles/393-na-pomoc-detem-s-dmo-a-autismem-prijelo-od-spolecnosti-kia-uzasnych-274-tisic-korun-393/received_10211066844653249-2-jpeg.jpg",
    start: DateTime(2021, 2, 5, 17),
    end: DateTime(2021, 4, 5, 17),
    patronsNum: 3500,
    patronsGoal: 5000,
  ),
  ProjectDto(
    "Robotické končetiny pomáhají žít naplno",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlzE3SbYktFhSCbpgZAX6inIQRZCNvkCD4CQ&usqp=CAU",
    start: DateTime.now(),
    end: DateTime(2021, 4, 5, 17),
    patronsNum: 5100,
    patronsGoal: 5000,
  ),
  ProjectDto(
    "Naděje na slušný život pro děti z dětských domovů",
    imageUrl: "https://breegy-cdn.bypixelfield.com/uploads/stories/4fa49e36/1750/4e0a/accd/68fac37c3fab/0d635c98-ae9f-475f-80d4-27c1de04462e.jpg",
    start: DateTime(2021, 3, 9, 17),
    end: DateTime(2021, 2, 10, 14),
    patronsNum: 5400,
    patronsGoal: 5000,
  ),
];

final List<ProjectDto> listCelebrities = [
  ProjectDto(
    "Zorka Hejdová, patronka dětí s DMO",
    imageUrl: "https://cdn.breegy.com/uploads/stories/c6bf7177/c570/406c/8225/d41ef392500d/m_296030eb-1085-4f8e-aa6d-5986e9c4a59e.PNG",
    start: DateTime(2021, 2, 5, 17),
    end: DateTime(2021, 4, 5, 17),
    patronsNum: 3500,
    patronsGoal: 5000,
  ),
  ProjectDto(
    "Marek Lambora je patronem léčby nemoci motýlích křídel",
    imageUrl: "https://cdn.breegy.com/uploads/stories/8e2aa56b/fc56/409b/ba05/f2632f0dc56d/m_4ec955fe-cb8b-4514-8990-c7e8334dae27.jpeg",
    start: DateTime.now(),
    end: DateTime(2021, 4, 5, 17),
    patronsNum: 5100,
    patronsGoal: 5000,
  ),
  ProjectDto(
    "Viktor Vincze bojuje proti zastavení rehabilitací dětí s DMO",
    imageUrl: "https://cdn.breegy.com/uploads/stories/4b6f4162/913f/42af/b467/4bd5404a4b1e/m_4e6b88b8-aa86-4195-87f0-28240b08b30d.PNG",
    start: DateTime(2021, 3, 9, 17),
    end: DateTime(2021, 2, 10, 14),
    patronsNum: 5100,
    patronsGoal: 5000,
  ),
];
