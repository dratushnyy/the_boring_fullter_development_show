import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:hn_app/src/article.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
  test("parses topstories.json", () {
    const jsonSting =
        "[20842956,20842784,20839582,20844039,20844346,20843076,20841059,20843940,20843958,20834125,20839870,20828775,20836664,20838955,20828306,20843560,20842400,20838790,20843667,20836247,20828838,20839478,20831220,20843406,20840382,20841976,20844172,20839689,20841896,20844394,20843545,20835223,20837753,20821746,20834066,20836331,20825381,20828282,20841586,20843829,20837554,20841833,20837314,20839935,20828560,20842736,20836825,20829039,20839902,20841456,20835428,20833639,20837470,20838078,20841713,20841455,20837553,20837214,20837951,20823319,20843654,20843399,20831126,20829089,20839796,20838182,20818537,20820016,20841418,20830940,20844241,20830037,20842886,20826990,20843196,20828595,20842510,20840922,20828296,20837306,20841886,20836769,20843843,20841867,20837398,20835126,20821389,20836608,20832705,20837826,20827049,20832798,20837892,20837940,20827574,20837985,20841755,20837558,20835082,20836413,20826618,20843477,20842340,20832570,20833030,20841839,20821064,20832945,20837246,20829156,20842655,20818177,20830819,20843125,20830069,20830155,20834685,20827480,20843831,20833779,20834379,20828997,20830726,20844147,20834080,20820609,20827046,20835942,20829144,20828224,20834885,20819237,20826949,20837663,20828356,20818915,20817101,20839146,20825502,20836749,20843124,20832188,20826200,20828981,20843011,20820036,20828281,20817083,20837935,20828278,20840077,20829111,20829933,20837386,20830665,20841116,20823611,20828781,20827761,20838089,20840196,20823774,20817036,20820173,20822182,20818106,20826823,20828600,20836690,20828940,20819902,20831105,20829155,20829404,20833198,20817627,20822637,20836337,20823339,20827886,20842830,20816827,20824116,20821810,20839798,20818618,20821018,20829418,20840387,20818973,20839901,20822429,20818527,20817370,20842272,20829499,20837479,20834562,20824148,20828751,20819672,20842111,20829288,20837171,20819664,20820795,20830351,20829076,20836304,20824443,20837923,20829647,20839821,20837300,20820438,20821847,20826443,20816470,20824984,20829815,20817484,20817784,20840106,20832739,20818553,20822710,20836037,20819388,20842108,20816027,20837850,20818184,20821039,20825680,20831001,20824759,20820524,20817762,20833101,20833519,20820430,20817340,20817352,20823152,20817583,20823542,20818988,20831621,20818851,20826578,20832521,20821675,20818230,20824849,20835772,20816457,20834986,20820846,20818779,20837885,20842499,20823565,20816812,20817362,20825013,20834436,20835331,20821022,20841660,20828299,20819538,20815558,20818664,20819364,20821914,20833633,20833862,20815786,20820911,20824951,20835073,20832688,20836106,20817068,20835325,20820895,20834645,20828308,20823200,20834556,20831694,20824770,20821503,20815880,20835678,20836874,20823783,20829994,20819572,20819215,20825193,20826894,20831676,20818048,20826535,20833092,20836315,20825899,20822908,20836155,20825280,20821161,20820668,20836081,20831473,20835982,20828596,20827361,20827025,20831941,20834729,20823063,20835671,20823498,20832414,20824034,20819478,20819878,20820808,20835431,20828231,20818750,20828844,20835317,20816806,20835222,20833575,20824936,20833217,20834894,20819017,20828010,20822963,20824956,20832460,20823888,20818066,20815914,20817887,20838259,20816935,20822868,20821939,20826639,20826637,20826525,20820844,20820773,20831440,20835208,20819301,20828605,20835656,20834972,20818822,20826616,20820113,20834434,20825913,20826941,20828161,20834052,20833977,20828495,20825248,20829744,20837723,20833450,20821248,20817926,20816913,20816212,20817641,20818554,20824651,20829715,20820961,20820783,20825949,20820000,20827453,20825624,20819666,20829847,20826810,20826740,20829007,20826532,20819550,20818825,20825783,20815801,20815741,20831914,20817863,20833658,20827370,20823868,20820630,20816774,20818510,20826767,20822695,20826636,20826390,20821452,20820681,20825515,20824976,20817023,20818473,20823768,20815479,20815448,20823134,20817143,20822601,20821099,20816479,20816267,20820279,20815728,20819305,20823606,20823647,20818367,20815955,20817921,20842247,20817336,20837715,20815637,20826612,20819646,20817465,20818955,20817194,20824713,20831203,20834351,20815936,20822944,20822654,20821710,20842407,20830755,20841088,20839068,20820583,20830738,20843994,20834781]";
    expect(parseTopStories(jsonSting).first, 20842956);
  });

  test("parses items.json", () {
    const jsonString =
        """{"by":"neversaydie","descendants":33,"id":20842956,"kids":[20843234,20843561,20844503,20843217,20844163,20844285,20844511,20843644,20843586,20843458,20843778,20843356,20843204,20843490],"score":186,"time":1567201043,"title":"On-Device, Real-Time Hand Tracking with MediaPipe","type":"story","url":"https://ai.googleblog.com/2019/08/on-device-real-time-hand-tracking-with.html"}""";
    expect(parseArticle(jsonString).by, "neversaydie");
  });

  test("parse item.json over a network", () async {
    final url = "https://hacker-news.firebaseio.com/v0/beststories.json";
    var result = await http.get(url);
    if (200 == result.statusCode) {
      final idListJson = List<int>.from(convert.jsonDecode(result.body));
      if (idListJson.isNotEmpty) {
        final storyUrl =
            "https://hacker-news.firebaseio.com/v0/item/${idListJson.first}.json";
        final storyRes = await http.get(storyUrl);
        if (200 == storyRes.statusCode) {
          var article = parseArticle(storyRes.body);
          expect(article.by, "lladnar");
        } else {
          debugPrint("Error getting story ${storyRes.statusCode}");
        }
      }
    }
  });
}
