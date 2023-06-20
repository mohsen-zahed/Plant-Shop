import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/models/item_models.dart';

List onboardingList = [
  {
    'title': 'به اپلیکیشن گیاه من خوش آمدید',
    'image': 'assets/images/backgrounds/onboadring2.jpg',
  },
  {
    'title': 'به اپلیکیشن گیاه من خوش آمدید',
    'image': 'assets/images/backgrounds/onboadring3.jpg',
  },
  {
    'title': 'به اپلیکیشن گیاه من خوش آمدید',
    'image': 'assets/images/backgrounds/onboadring1.jpg',
  },
];
List bottomNavs = [
  {
    'icon': Icons.home,
  },
  {
    'icon': Icons.search,
  },
  {
    'icon': Icons.bookmarks,
  },
  {
    'icon': Icons.settings,
  },
];
List drawerListItems = [
  {
    "title": "ذخیره شده",
    "icon": "Icons.save_alt_outlined",
    "logo": "images/backgrounds/sign-up-logo.jpg",
    "id": 1
  },
  {
    "title": "درباره ما",
    "icon": "Icons.people_alt_rounded",
    "logo": "images/backgrounds/sign-up-logo.jpg",
    "id": 2
  },
  {
    "title": "تنظیمات",
    "icon": "Icons.settings",
    "logo": "images/backgrounds/sign-up-logo.jpg",
    "id": 3
  },
  {
    "title": "خدمات و پشتیبانی",
    "icon": "Icons.supervised_user_circle",
    "logo": "images/backgrounds/sign-up-logo.jpg",
    "id": 4
  },
  {
    "title": "خروج",
    "icon": "Icons.logout_outlined",
    "logo": "images/backgrounds/sign-up-logo.jpg",
    "id": 5
  },
];
List<ItemModel> savedList = [];

List<ItemModel> herbList = [
  ItemModel.createItem(
    itemImage: 'alcea.jpg',
    itemTitle: "گل ختمی",
    itemSTitle: "Alcea Rosea",
    itemId: 0,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'bomadaran.jpg',
    itemTitle: "بومادران زرد",
    itemSTitle: "Achille Millefolium",
    itemId: 1,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'actaea.jpg',
    itemTitle: "کوهش سیاه",
    itemSTitle: "Actaea Racemosa",
    itemId: 2,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'aesculus.jpg',
    itemTitle: "دم اسب",
    itemSTitle: "Aesculus Hippocastanum",
    itemId: 3,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'agretina.jpg',
    itemTitle: "زرآوند سفید",
    itemSTitle: "Ageratina Altissima",
    itemId: 4,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'acacia-senegal.jpg',
    itemTitle: "صمغ عربی",
    itemSTitle: "Acacia Senegal",
    itemId: 5,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'alisma.jpg',
    itemTitle: "غازیانی",
    itemSTitle: "Alisma Plantago-Aquatica",
    itemId: 6,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'allium.png',
    itemTitle: "سیر",
    itemSTitle: "Allium Sativum",
    itemId: 7,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'alo_vera.png',
    itemTitle: "آلوئه ورا",
    itemSTitle: "Aloe Vera",
    itemId: 8,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'althea.png',
    itemTitle: "گل ختمی",
    itemSTitle: "Althaea Officinalis",
    itemId: 9,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'amorphophallus.png',
    itemTitle: "کنجک",
    itemSTitle: "Amorphophallus Konjac",
    itemId: 10,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'anemone.png',
    itemTitle: "تیره آلاله",
    itemSTitle: "Anemone Hepatica",
    itemId: 11,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'angelica.png',
    itemTitle: "سنبل ختایی",
    itemSTitle: "Angelica Archangelica",
    itemId: 12,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'angelica_sinesis.jpg',
    itemTitle: "دونگ کوهی",
    itemSTitle: "Angelica Sinensis",
    itemId: 13,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'apium.png',
    itemTitle: "کرفس",
    itemSTitle: "Apium Graveolens",
    itemId: 14,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'arctium.png',
    itemTitle: "بابا آدم",
    itemSTitle: "Arctium Lappa",
    itemId: 15,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'arnica.png',
    itemTitle: "همیشه بهارکوهی",
    itemSTitle: "Arnica Montana",
    itemId: 16,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'astragalus.png',
    itemTitle: "آستراگالوس",
    itemSTitle: "Astragalus Propinquus",
    itemId: 17,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'atropa.png',
    itemTitle: "شابیزک",
    itemSTitle: "Atropa Belladonna",
    itemId: 18,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'azadirachta.png',
    itemTitle: "چریش",
    itemSTitle: "Azadirachta Indica",
    itemId: 19,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'bellis.png',
    itemTitle: "دیزی",
    itemSTitle: "Bellis Perennis",
    itemId: 20,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'barberis.png',
    itemTitle: "زرشک",
    itemSTitle: "Berberis Vulgaris",
    itemId: 21,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'borago.png',
    itemTitle: " گل گاو زبان",
    itemSTitle: "Borago Officinalis",
    itemId: 22,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
  ItemModel.createItem(
    itemImage: 'broussonetia.jpg',
    itemTitle: "شابانک",
    itemSTitle: "Broussonetia kurzii",
    itemId: 23,
    itemDescription:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemUsage:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    itemNotice:
        "خود این شرکت یک شرکت بسیار موفق است. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ شاکیان مسئولیتی در قبال خدمات مشتری ندارند. روزگار از کجا به دنبال هر چیز پرزحمت و خطا خواهد رفت و آنهایی که از دردهای شاکیان ناشی می شوند، اما به دلیل ضرورت های حال حاضر هستند؟ متهمان وظایف را به حساب نیاوردند.",
    isSaved: false,
  ),
];
