// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

enum TweetLanguage {
  @JsonValue('am')
  amharic('am'),

  @JsonValue('de')
  german('de'),

  @JsonValue('ml')
  malayalam('ml'),

  @JsonValue('sk')
  slovak('sk'),

  @JsonValue('ar')
  arabic('ar'),

  @JsonValue('el')
  greek('el'),

  @JsonValue('dv')
  maldivian('dv'),

  @JsonValue('sl')
  slovenian('sl'),

  @JsonValue('hy')
  armenian('hy'),

  @JsonValue('gu')
  gujarati('gu'),

  @JsonValue('mr')
  marathi('mr'),

  @JsonValue('ckb')
  soraniKurdish('ckb'),

  @JsonValue('eu')
  basque('eu'),

  @JsonValue('ht')
  haitianCreole('ht'),

  @JsonValue('ne')
  nepali('ne'),

  @JsonValue('es')
  spanish('es'),

  @JsonValue('bn')
  bengali('bn'),

  @JsonValue('iw')
  hebrew('iw'),

  @JsonValue('no')
  norwegian('no'),

  @JsonValue('sv')
  swedish('sv'),

  @JsonValue('bs')
  bosnian('bs'),

  @JsonValue('hi')
  hindi('hi'),

  @JsonValue('or')
  oriya('or'),

  @JsonValue('tl')
  tagalog('tl'),

  @JsonValue('bg')
  bulgarian('bg'),

  @JsonValue('hi-Latn')
  latinizedHindi('hi-Latn'),

  @JsonValue('pa')
  panjabi('pa'),

  @JsonValue('ta')
  tamil('ta'),

  @JsonValue('my')
  burmese('my'),

  @JsonValue('hu')
  hungarian('hu'),

  @JsonValue('ps')
  pashto('ps'),

  @JsonValue('te')
  telugu('te'),

  @JsonValue('hr')
  croatian('hr'),

  @JsonValue('is')
  icelandic('is'),

  @JsonValue('fa')
  persian('fa'),

  @JsonValue('th')
  thai('th'),

  @JsonValue('ca')
  catalan('ca'),

  @JsonValue('in')
  indonesian('in'),

  @JsonValue('pl')
  polish('pl'),

  @JsonValue('bo')
  tibetan('bo'),

  @JsonValue('cs')
  czech('cs'),

  @JsonValue('it')
  italian('it'),

  @JsonValue('pt')
  portuguese('pt'),

  @JsonValue('zh')
  chinese('zh'),

  @JsonValue('zh-TW')
  traditionalChinese('zh-TW'),

  @JsonValue('da')
  danish('da'),

  @JsonValue('ja')
  japanese('ja'),

  @JsonValue('ro')
  romanian('ro'),

  @JsonValue('tr')
  turkish('tr'),

  @JsonValue('nl')
  dutch('nl'),

  @JsonValue('kn')
  kannada('kn'),

  @JsonValue('ru')
  russian('ru'),

  @JsonValue('uk')
  ukrainian('uk'),

  @JsonValue('en')
  english('en'),

  @JsonValue('km')
  khmer('km'),

  @JsonValue('sr')
  serbian('sr'),

  @JsonValue('ur')
  urdu('ur'),

  @JsonValue('et')
  estonian('et'),

  @JsonValue('ko')
  korean('ko'),

  @JsonValue('zh-CN')
  simplifiedChinese('zh-CN'),

  @JsonValue('ug')
  uyghur('ug'),

  @JsonValue('fi')
  finnish('fi'),

  @JsonValue('lo')
  lao('lo'),

  @JsonValue('sd')
  sindhi('sd'),

  @JsonValue('vi')
  vietnamese('vi'),

  @JsonValue('fr')
  french('fr'),

  @JsonValue('lv')
  latvian('lv'),

  @JsonValue('si')
  sinhala('si'),

  @JsonValue('cy')
  welsh('cy'),

  @JsonValue('ka')
  georgian('ka'),

  @JsonValue('lt')
  lithuanian('lt'),

  @JsonValue('und')
  undetermined('und');

  /// The language code
  final String code;

  const TweetLanguage(this.code);
}
