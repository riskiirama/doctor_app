part of 'widgets.dart';

class ButtonTile extends StatelessWidget {
  final String image;
  final Color button;
  final String text;
  const ButtonTile(
      {Key? key, required this.image, required this.button, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: button,
                border: Border.all(
                  color: const Color(0xffF6F6F6),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                image,
                width: 24,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: secondTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
