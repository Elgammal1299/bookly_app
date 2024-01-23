// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsScreen.routeName);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            const CustomBookImage(
                imageUrl:
                    'data:image/jpeg;base64,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'),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtsectrafine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      // const Spacer(),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
