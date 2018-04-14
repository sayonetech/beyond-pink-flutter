import 'package:beyondpink/data.dart';
import 'package:beyondpink/intro_page_item.dart';
import 'package:beyondpink/page_transformer.dart';
import 'package:flutter/material.dart';

class IntroPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new SizedBox.fromSize(
          size: MediaQuery.of(context).size,
          child: new PageTransformer(
            pageViewBuilder: (context, visibilityResolver) {
              return new PageView.builder(
                scrollDirection: Axis.vertical,
                controller: new PageController(viewportFraction: 1.0),
                itemCount: sampleItems.length,
                itemBuilder: (context, index) {
                  final item = sampleItems[index];
                  final pageVisibility =
                      visibilityResolver.resolvePageVisibility(index);

                  return new IntroPageItem(
                    item: item,
                    pageVisibility: pageVisibility,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
