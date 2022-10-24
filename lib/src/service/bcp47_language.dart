// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum BCP47Language {
  /// `am`
  amharic('am'),

  /// `de`
  german('de'),

  /// `ml`
  malayalam('ml'),

  /// `sk`
  slovak('sk'),

  /// `ar`
  arabic('ar'),

  /// `el`
  greek('el'),

  /// `dv`
  maldivian('dv'),

  /// `sl`
  slovenian('sl'),

  /// `hy`
  armenian('hy'),

  /// `gu`
  gujarati('gu'),

  /// `mr`
  marathi('mr'),

  /// `ckb`
  soraniKurdish('ckb'),

  /// `eu`
  basque('eu'),

  /// `ht`
  haitianCreole('ht'),

  /// `ne`
  nepali('ne'),

  /// `es`
  spanish('es'),

  /// `bn`
  bengali('bn'),

  /// `iw`
  hebrew('iw'),

  /// `no`
  norwegian('no'),

  /// `sv`
  swedish('sv'),

  /// `bs`
  bosnian('bs'),

  /// `hi`
  hindi('hi'),

  /// `or`
  oriya('or'),

  /// `tl`
  tagalog('tl'),

  /// `bg`
  bulgarian('bg'),

  /// `hi-Latn`
  latinizedHindi('hi-Latn'),

  /// `pa`
  panjabi('pa'),

  /// `ta`
  tamil('ta'),

  /// `my`
  burmese('my'),

  /// `hu`
  hungarian('hu'),

  /// `ps`
  pashto('ps'),

  /// `te`
  telugu('te'),

  /// `hr`
  croatian('hr'),

  /// `is`
  icelandic('is'),

  /// `fa`
  persian('fa'),

  /// `th`
  thai('th'),

  /// `ca`
  catalan('ca'),

  /// `in`
  indonesian('in'),

  /// `pl`
  polish('pl'),

  /// `bo`
  tibetan('bo'),

  /// `cs`
  czech('cs'),

  /// `it`
  italian('it'),

  /// `pt`
  portuguese('pt'),

  /// `zh-TW`
  traditionalChinese('zh-TW'),

  /// `da`
  danish('da'),

  /// `ja`
  japanese('ja'),

  /// `ro`
  romanian('ro'),

  /// `tr`
  turkish('tr'),

  /// `nl`
  dutch('nl'),

  /// `kn`
  kannada('kn'),

  /// `ru`
  russian('ru'),

  /// `uk`
  ukrainian('uk'),

  /// `en`
  english('en'),

  /// `km`
  khmer('km'),

  /// `sr`
  serbian('sr'),

  /// `ur`
  urdu('ur'),

  /// `et`
  estonian('et'),

  /// `ko`
  korean('ko'),

  /// `zh-CN`
  simplifiedChinese('zh-CN'),

  /// `ug`
  uyghur('ug'),

  /// `fi`
  finnish('fi'),

  /// `lo`
  lao('lo'),

  /// `sd`
  sindhi('sd'),

  /// `vi`
  vietnamese('vi'),

  /// `fr`
  french('fr'),

  /// `lv`
  latvian('lv'),

  /// `si`
  sinhala('si'),

  /// `cy`
  welsh('cy'),

  /// `ka`
  georgian('ka'),

  /// `lt`
  lithuanian('lt');

  /// The language code
  final String code;

  const BCP47Language(this.code);
}
