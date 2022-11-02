// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';
import 'package:twitter_api_core/src/service/language.dart';

void main() {
  test('.name', () {
    expect(Language.amharic.name, 'amharic');
    expect(Language.german.name, 'german');
    expect(Language.malayalam.name, 'malayalam');
    expect(Language.slovak.name, 'slovak');
    expect(Language.arabic.name, 'arabic');
    expect(Language.greek.name, 'greek');
    expect(Language.maldivian.name, 'maldivian');
    expect(Language.slovenian.name, 'slovenian');
    expect(Language.armenian.name, 'armenian');
    expect(Language.gujarati.name, 'gujarati');
    expect(Language.marathi.name, 'marathi');
    expect(Language.soraniKurdish.name, 'soraniKurdish');
    expect(Language.basque.name, 'basque');
    expect(Language.haitianCreole.name, 'haitianCreole');
    expect(Language.nepali.name, 'nepali');
    expect(Language.spanish.name, 'spanish');
    expect(Language.bengali.name, 'bengali');
    expect(Language.hebrew.name, 'hebrew');
    expect(Language.norwegian.name, 'norwegian');
    expect(Language.swedish.name, 'swedish');
    expect(Language.bosnian.name, 'bosnian');
    expect(Language.hindi.name, 'hindi');
    expect(Language.oriya.name, 'oriya');
    expect(Language.tagalog.name, 'tagalog');
    expect(Language.bulgarian.name, 'bulgarian');
    expect(Language.latinizedHindi.name, 'latinizedHindi');
    expect(Language.panjabi.name, 'panjabi');
    expect(Language.tamil.name, 'tamil');
    expect(Language.burmese.name, 'burmese');
    expect(Language.hungarian.name, 'hungarian');
    expect(Language.pashto.name, 'pashto');
    expect(Language.telugu.name, 'telugu');
    expect(Language.croatian.name, 'croatian');
    expect(Language.icelandic.name, 'icelandic');
    expect(Language.persian.name, 'persian');
    expect(Language.thai.name, 'thai');
    expect(Language.catalan.name, 'catalan');
    expect(Language.indonesian.name, 'indonesian');
    expect(Language.polish.name, 'polish');
    expect(Language.tibetan.name, 'tibetan');
    expect(Language.czech.name, 'czech');
    expect(Language.italian.name, 'italian');
    expect(Language.portuguese.name, 'portuguese');
    expect(Language.chinese.name, 'chinese');
    expect(Language.traditionalChinese.name, 'traditionalChinese');
    expect(Language.danish.name, 'danish');
    expect(Language.japanese.name, 'japanese');
    expect(Language.romanian.name, 'romanian');
    expect(Language.turkish.name, 'turkish');
    expect(Language.dutch.name, 'dutch');
    expect(Language.kannada.name, 'kannada');
    expect(Language.russian.name, 'russian');
    expect(Language.ukrainian.name, 'ukrainian');
    expect(Language.english.name, 'english');
    expect(Language.khmer.name, 'khmer');
    expect(Language.serbian.name, 'serbian');
    expect(Language.urdu.name, 'urdu');
    expect(Language.estonian.name, 'estonian');
    expect(Language.korean.name, 'korean');
    expect(Language.simplifiedChinese.name, 'simplifiedChinese');
    expect(Language.uyghur.name, 'uyghur');
    expect(Language.finnish.name, 'finnish');
    expect(Language.lao.name, 'lao');
    expect(Language.sindhi.name, 'sindhi');
    expect(Language.vietnamese.name, 'vietnamese');
    expect(Language.french.name, 'french');
    expect(Language.latvian.name, 'latvian');
    expect(Language.sinhala.name, 'sinhala');
    expect(Language.welsh.name, 'welsh');
    expect(Language.georgian.name, 'georgian');
    expect(Language.lithuanian.name, 'lithuanian');
    expect(Language.undefined.name, 'undefined');
  });

  test('.code', () {
    expect(Language.amharic.code, 'am');
    expect(Language.german.code, 'de');
    expect(Language.malayalam.code, 'ml');
    expect(Language.slovak.code, 'sk');
    expect(Language.arabic.code, 'ar');
    expect(Language.greek.code, 'el');
    expect(Language.maldivian.code, 'dv');
    expect(Language.slovenian.code, 'sl');
    expect(Language.armenian.code, 'hy');
    expect(Language.gujarati.code, 'gu');
    expect(Language.marathi.code, 'mr');
    expect(Language.soraniKurdish.code, 'ckb');
    expect(Language.basque.code, 'eu');
    expect(Language.haitianCreole.code, 'ht');
    expect(Language.nepali.code, 'ne');
    expect(Language.spanish.code, 'es');
    expect(Language.bengali.code, 'bn');
    expect(Language.hebrew.code, 'iw');
    expect(Language.norwegian.code, 'no');
    expect(Language.swedish.code, 'sv');
    expect(Language.bosnian.code, 'bs');
    expect(Language.hindi.code, 'hi');
    expect(Language.oriya.code, 'or');
    expect(Language.tagalog.code, 'tl');
    expect(Language.bulgarian.code, 'bg');
    expect(Language.latinizedHindi.code, 'hi-Latn');
    expect(Language.panjabi.code, 'pa');
    expect(Language.tamil.code, 'ta');
    expect(Language.burmese.code, 'my');
    expect(Language.hungarian.code, 'hu');
    expect(Language.pashto.code, 'ps');
    expect(Language.telugu.code, 'te');
    expect(Language.croatian.code, 'hr');
    expect(Language.icelandic.code, 'is');
    expect(Language.persian.code, 'fa');
    expect(Language.thai.code, 'th');
    expect(Language.catalan.code, 'ca');
    expect(Language.indonesian.code, 'in');
    expect(Language.polish.code, 'pl');
    expect(Language.tibetan.code, 'bo');
    expect(Language.czech.code, 'cs');
    expect(Language.italian.code, 'it');
    expect(Language.portuguese.code, 'pt');
    expect(Language.chinese.code, 'zh');
    expect(Language.traditionalChinese.code, 'zh-TW');
    expect(Language.danish.code, 'da');
    expect(Language.japanese.code, 'ja');
    expect(Language.romanian.code, 'ro');
    expect(Language.turkish.code, 'tr');
    expect(Language.dutch.code, 'nl');
    expect(Language.kannada.code, 'kn');
    expect(Language.russian.code, 'ru');
    expect(Language.ukrainian.code, 'uk');
    expect(Language.english.code, 'en');
    expect(Language.khmer.code, 'km');
    expect(Language.serbian.code, 'sr');
    expect(Language.urdu.code, 'ur');
    expect(Language.estonian.code, 'et');
    expect(Language.korean.code, 'ko');
    expect(Language.simplifiedChinese.code, 'zh-CN');
    expect(Language.uyghur.code, 'ug');
    expect(Language.finnish.code, 'fi');
    expect(Language.lao.code, 'lo');
    expect(Language.sindhi.code, 'sd');
    expect(Language.vietnamese.code, 'vi');
    expect(Language.french.code, 'fr');
    expect(Language.latvian.code, 'lv');
    expect(Language.sinhala.code, 'si');
    expect(Language.welsh.code, 'cy');
    expect(Language.georgian.code, 'ka');
    expect(Language.lithuanian.code, 'lt');
    expect(Language.undefined.code, 'und');
  });

  group('.valueOf', () {
    test('with lower case', () {
      final actual = Language.valueOf('fr');

      expect(actual, Language.french);
    });

    test('with upper case', () {
      final actual = Language.valueOf('FR');

      expect(actual, Language.french);
    });

    test('with unsupported code', () {
      expect(
        () => Language.valueOf('test'),
        throwsA(
          allOf(
            isA<UnsupportedError>(),
            predicate(
              (dynamic e) => e.message == 'The code [test] is not supported.',
            ),
          ),
        ),
      );
    });
  });

  test('.properName', () {
    expect(Language.amharic.properName, 'Amharic');
  });

  test('.standardizedValues', () {
    final actual = Language.standardizedValues;

    expect(actual.length != Language.values.length, isTrue);
    expect(actual.length == Language.values.length - 1, isTrue);
    expect(actual.contains(Language.undefined), isFalse);
  });
}
