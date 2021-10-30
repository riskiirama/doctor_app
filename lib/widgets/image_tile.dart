part of 'widgets.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final String name;
  final String help;
  final String place;
  final String price;
  final String textButton;
  final Color button;
  final Color textWarna;
  const ImageCard({
    Key? key,
    required this.image,
    required this.name,
    required this.help,
    required this.place,
    required this.price,
    required this.textButton,
    required this.button,
    required this.textWarna,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 88,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: secondTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  help,
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
                  place,
                  style: primaryTextStyle.copyWith(
                    color: const Color(0xffAAAAAA),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/star.png',
                  width: 20,
                ),
                Image.asset(
                  'assets/star.png',
                  width: 20,
                ),
                Image.asset(
                  'assets/star.png',
                  width: 20,
                ),
                Image.asset(
                  'assets/star.png',
                  width: 20,
                ),
                Image.asset(
                  'assets/star.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  price,
                  style: primaryTextStyle.copyWith(
                    color: const Color(0xffC4C4C4),
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  width: 58,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: button,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                  child: Text(
                    textButton,
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      color: textWarna,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
