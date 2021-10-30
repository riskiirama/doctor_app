part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget menuAndProfile() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icon_menu.png',
              width: 24,
            ),
            Image.asset(
              'assets/image_profile.png',
              width: 36,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Row(
          children: [
            Text(
              'Find ',
              style: secondTextStyle.copyWith(
                fontSize: 34,
              ),
            ),
            Text(
              'your doctor',
              style: secondTextStyle.copyWith(
                fontSize: 34,
                color: const Color(0xffA0A4A8),
              ),
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF6F6F6),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search doctor, medicines etc',
                  hintStyle: primaryTextStyle.copyWith(
                    color: const Color(0xffCACCCF),
                  ),
                ),
              ),
            ),
            Image.asset(
              'assets/icon_search.png',
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonTile(
                  button: Color(0xff4485FD),
                  image: 'assets/scope.png',
                  text: 'Consultation',
                ),
                ButtonTile(
                  button: Color(0xffA584FF),
                  image: 'assets/teeth.png',
                  text: 'Dental',
                ),
                ButtonTile(
                  button: Color(0xffFFA188),
                  image: 'assets/heart.png',
                  text: 'Heart',
                ),
                ButtonTile(
                  button: Color(0xffFFB547),
                  image: 'assets/clinic.png',
                  text: 'Hospitals',
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonTile(
                  button: Color(0xff1AD37A),
                  image: 'assets/medic.png',
                  text: 'Medicines',
                ),
                ButtonTile(
                  button: Color(0xff05D1ED),
                  image: 'assets/care.png',
                  text: 'Physician',
                ),
                ButtonTile(
                  button: Color(0xffFF71C6),
                  image: 'assets/bandage.png',
                  text: 'Skin',
                ),
                ButtonTile(
                  button: Color(0xffFF7070),
                  image: 'assets/suntik.png',
                  text: 'Surgeon',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget topDoctorText() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Doctors',
              style: secondTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View all',
                style: secondTextStyle.copyWith(
                  color: const Color(0xff4485FD),
                  fontSize: 11,
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget cardDoctor() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ImageCard(
              image: 'assets/image_doctor1.png',
              name: 'dr. Gilang Segara Bening',
              help: 'Heart',
              place: 'Persahabatan Hospital',
              price: '(1221)',
              textButton: 'Open',
              button: Color(0xffCCF5E1),
              textWarna: Color(0xff00CC6A),
            ),
            SizedBox(
              height: 18,
            ),
            ImageCard(
              image: 'assets/image_doctor2.png',
              name: 'dr. Shabil Chan',
              help: 'Dental',
              place: 'Columbia Asia Hospital',
              price: '(964)',
              textButton: 'Open',
              button: Color(0xffCCF5E1),
              textWarna: Color(0xff00CC6A),
            ),
            SizedBox(
              height: 18,
            ),
            ImageCard(
              image: 'assets/image_doctor3.png',
              name: 'dr. Mustakim',
              help: 'Eye',
              place: 'Salemba Carolus Hospital',
              price: '(762)',
              textButton: 'Close',
              button: Color(0xffF7E4D9),
              textWarna: Color(0xffCC4900),
            ),
            SizedBox(
              height: 18,
            ),
            ImageCard(
              image: 'assets/image_doctor4.png',
              name: 'dr. Suprihatini',
              help: 'Heart',
              place: 'Salemba Carolus Hospital',
              price: '(762)',
              textButton: 'Open',
              button: Color(0xffCCF5E1),
              textWarna: Color(0xff00CC6A),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            menuAndProfile(),
            header(),
            search(),
            button(),
            topDoctorText(),
            cardDoctor(),
            const SizedBox(
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
