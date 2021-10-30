part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget menuAndDoctor() {
      return Stack(
        children: [
          Image.asset(
            'assets/image_doctor1.png',
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icon_back.png',
                    width: 24,
                  ),
                ),
                Image.asset(
                  'assets/icon_artboard.png',
                  width: 24,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget helpAndPlace() {
      return Container(
        margin: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            Text(
              'Heart',
              style: primaryTextStyle.copyWith(
                color: const Color(0xffAAAAAA),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xffAAAAAA),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Text(
              'Persahabatan Hospital',
              style: primaryTextStyle.copyWith(
                color: const Color(0xffAAAAAA),
              ),
            ),
          ],
        ),
      );
    }

    Widget desc() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Text(
          'dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.',
          style: primaryTextStyle.copyWith(
            color: const Color(0xffC4C4C4),
            fontSize: 16,
          ),
        ),
      );
    }

    Widget nameLabel(String label, String number, String year) {
      return Column(
        children: [
          Text(
            label,
            style: secondTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                number,
                style: secondTextStyle.copyWith(
                  fontSize: 24,
                  color: const Color(0xff2B92E4),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                year,
                style: secondTextStyle.copyWith(
                  fontSize: 14,
                  color: const Color(0xffAAAAAA),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget label() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            nameLabel('Experience', '3', 'yr'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 1,
              height: 54,
              decoration: const BoxDecoration(
                color: Color(0xffCACCCF),
              ),
            ),
            nameLabel('Patient', '1221', 'ps'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 1,
              height: 54,
              decoration: const BoxDecoration(
                color: Color(0xffCACCCF),
              ),
            ),
            nameLabel('Rating', '5.0', ''),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xff4485FD),
                borderRadius: BorderRadius.circular(8),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 36,
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 75, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xff00CC6A),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Make an Appointment',
                    textAlign: TextAlign.center,
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                )),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'dr. Gilang Segara Bening ',
              style: secondTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            helpAndPlace(),
            desc(),
            label(),
            button(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          menuAndDoctor(),
          header(),
        ],
      ),
    );
  }
}
