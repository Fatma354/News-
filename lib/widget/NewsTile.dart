/*import 'package:first/model/ArticalModel.dart';
import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';

/*ويدجت بتعرض تفاصيل المقال:

صورة (من الإنترنت).

العنوان.

الوصف (subtitle).*/
class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articalmodel});
  final Articalmodel articalmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articalmodel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSP9yzsxDotWbLvB7WDkX7hCPVyq6KKdpgHw&s',
                  width: 500,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),

          //الصورهتاخد كل الكونتينر
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articalmodel.title,
            style: TextStyle(fontSize: 20)),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalmodel.subtitle ?? '',
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
      ],
    );
  }
}
// شرحي انا دي الصفحه 
//الي بيكون فيها الاستايل بتاع المحتوي 
//الي بيظهر ونشوفه علي الشاشه من الصور و العنوان والوصف
//بنعملها باستخدام Articalmodel*/

/*import 'package:flutter/material.dart';
import 'package:first/model/articalModel.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalmodel, required articleModel});

  final Articalmodel articalmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articalmodel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articalmodel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalmodel.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}*/
//tharwat
import 'package:first/model/ArticalModel.dart';
import 'package:flutter/material.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ?? "",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              //
              errorBuilder: (context, Error, StackTrace) {
                return Image.asset(
                  'assets/image/images.jpeg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                );
              },
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title ?? "No title",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ]);
  }
}
