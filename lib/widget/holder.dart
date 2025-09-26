/*class Newslistview extends StatefulWidget {
  const Newslistview({super.key});

  @override
  State<Newslistview> createState() => _NewslistviewState();
}

class _NewslistviewState extends State<Newslistview> {
  List<Articalmodel> articals = [];
  bool isloding = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articals = await Newsservis(Dio()).getNews();
    isloding = false;
    // بعد ما السطر ده ينتهي اعمل الي بعد
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloding
        ? const SliverToBoxAdapter(
            child: SizedBox(
              height: 500,
              child: Center(child: CircularProgressIndicator()),
            ),
          )
        : SliverList(
            // لبناء الودجيت الموجوده علي الشاشه فقط مع CustomScrollView
            delegate: SliverChildBuilderDelegate(
              childCount: articals.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Newstile(
                    articalmodel: articals[index],
                  ),
                );
              },
            ),
          );*/