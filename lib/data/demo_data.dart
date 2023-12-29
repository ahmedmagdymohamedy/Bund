import 'package:bund/core/resources/app_assets.dart';
import 'package:bund/data/models/banner_item.dart';
import 'package:bund/data/models/bond.dart';
import 'package:bund/data/models/feature.dart';

class DemoData {
  static String userName = "Mehemet Taser";

  static const List<BannerItem> bannerItems = [
    BannerItem(id: 0, name: "Standard", image: AppAssets.banner_1),
    BannerItem(id: 1, name: "Plus", image: AppAssets.banner_2),
    BannerItem(id: 2, name: "Max", image: AppAssets.banner_3),
    BannerItem(id: 3, name: "Unlimited", image: AppAssets.banner_3),
  ];

  static List<Feature> features = [
    Feature(
      id: 0,
      title: "Swiss Bank Account",
      icon: AppAssets.Swiss_Bank_Account,
    ),
    Feature(
      id: 1,
      title: "Mastercard Prepaid",
      icon: AppAssets.Mastercard_Prepaid,
    ),
    Feature(
      id: 2,
      title: "Account Open Same Day",
      icon: AppAssets.Account_Open_Same_Day,
    ),
    Feature(
      id: 0,
      title: "Protected up to \$100,000",
      icon: AppAssets.Protected_up_to,
    ),
    Feature(
      id: 3,
      title: "Investments Portfolios",
      icon: AppAssets.Investments_Portfolios,
      enable: false,
    ),
    Feature(
      id: 4,
      title: "Deposits Options",
      icon: AppAssets.Deposits_Options,
      enable: false,
    ),
  ];

  static List<Bond> bonds = [
    Bond(
      id: 0,
      title: "Netflix INC",
      image:
          "https://s3-alpha-sig.figma.com/img/64a5/2265/7ca706039994fe05d37fff8a710eb048?Expires=1704672000&Signature=ZuWBYtmjHM66DEw~VhxmUq6AjhHaJAXgYjB6OL3f3t1z1gjbzMD6xRb72K2i4jvZV5b1YzrhYi0x8D~IaMDJzBlH325A2eOzCFzJnocCkEka8icXxwQhGiUXKZHBWy2kIvGf9gWFSQcZtULJ5u9GXWXSyVHk2cYU9QpmxgZL65HlJOCn3EdsmWQWUniK9kuTHAiyrw7g8DOHVxRDHAhg9wlWZJoAcvA9jk3S6X7TEKzBjlRS9xfxO7Dt8W4S0CvAvHJH7HiXdh6grxz-pbSnbGK-lKiPVXTu5bcX42Bcw~mp9mcfDGGEB9rAepcjqK1lhD8CD~byCf~qXH77GC2PxQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      rate: "BBB",
      investPercentage: "5.37% APY",
      havePadding: true,
    ),
    Bond(
      id: 1,
      title: "Ford Motor LLC",
      image:
          "https://s3-alpha-sig.figma.com/img/d2b7/603f/1d951c5d3495f250941af4126134ac2c?Expires=1704672000&Signature=DDciNqPYyYGWmEjM1cKpCXRjPX-kEtRH0iH3MmKnf4w74dySMW63kq7YaV1~rOsBIXSLAOqrfT-68LPaV2vjXHh0Qg1~OMtocot~cWuNTMJb2bQ7KFd5WRAnAAMxUrXgUWSDHbwpR6PGgM6sU9M0x-VP75D2wBvPRMLCJ08Ysqhc0VtMsEhiZgCsNqZC~5L~QZPjLO1BK-5cbZvoJfjoCgsPqq7DRw9te230OBur2xcwCJToJq~aYooGC8loe67JefbsEJhBFuNbTs5A-ttA~dkkOkY8QZEotC5IPvi6YGRNbL3lOGuKt7kqtWCLHvF7Q7DkibxIAJhdH5ftt6gprw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      rate: "BB+",
      investPercentage: "7.71% APY",
      havePadding: true,
    ),
    Bond(
      id: 2,
      title: "Apple INC",
      image:
          "https://s3-alpha-sig.figma.com/img/af16/7513/9aa260c10f022504ebb967c87d4dba73?Expires=1704672000&Signature=p~LtggmU8haIq-MuJglIDCThnHTdNMxiIk43v5IfYQOK9yo1ztuFh-zyYAMye2eUnkisEEbx5zwG4i7t-f1i0NI2L72w70Di4Awwp6uCebI~bdPUVnNY5odEYW-Iulkgu-CBhwqAzmo0B~WKzWmsNh89a674EzfwBQjymoAoc9HD4j8clReKS0i3UfWgEsBng20aGSPBb5hHsQ4DAbEtEhP1WBjcuc4evZOkYOSB1YO9kYxCj-hqRCNGzyySL5UxN-xqAoJ3L1UmEvhw0CUdGl8-hbRI910XPsTtfYyosllAlma-D3ZfKFL7LyLwCMb~XCggGJ2ONkJI~9F8rnRhvQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      rate: "AA+",
      investPercentage: "4.85% APY",
      havePadding: true,
    ),
    Bond(
      id: 3,
      title: "Morgan Stanley",
      image:
          "https://s3-alpha-sig.figma.com/img/116c/cb20/88845ac0b7b409b483386c809b88dc8d?Expires=1704672000&Signature=SvBQKsj~sx-dcpOL0wnlxEFYSbCqyi3dC5i~2KRZoz7EdLhoPAjRi3Ru2MnvwdGVLKj33vB2G9FwiNjem9QckB5P9gx-C-8wek8ydrEjsR9HXxZs-JJo-7Vgmxa8~x45lNhlGKUD9yKLE~f43-9bqWgSuYU-LjnpKq-WGN3r01w-Xl21wGwlb6ELrlONXo6IsA5XGAGuasV854iY8r5wl6SMF~yyxydM~Asni7A6OzlE51p-choMy2067QcL48gZ-mzitjnwccEgO3SWDktlwLmu473VjOsaksHC5SY2tR9qehg9Xx76O75ezJCYx4UCyvFvpjYF1AJ7UyzEj00XiA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      rate: "A-",
      investPercentage: "6.27% APY",
      havePadding: false,
    ),
  ];
}
