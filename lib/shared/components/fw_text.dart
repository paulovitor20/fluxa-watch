import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

enum FwTextType { display, title, subtitle, body, caption, label }

class FwText extends StatelessWidget {
  final String text;
  final FwTextType type;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;
  final FontWeight? fontWeight;

  const FwText(
    this.text, {
    super.key,
    this.type = FwTextType.body,
    this.textAlign,
    this.color,
    this.maxLines,
    this.fontWeight,
  });

  const FwText.display(this.text, {super.key, this.textAlign, this.color})
    : type = FwTextType.display,
      maxLines = null,
      fontWeight = null;

  const FwText.title(this.text, {super.key, this.textAlign, this.color})
    : type = FwTextType.title,
      maxLines = null,
      fontWeight = null;

  const FwText.subtitle(this.text, {super.key, this.textAlign, this.color})
    : type = FwTextType.subtitle,
      maxLines = null,
      fontWeight = null;

  const FwText.body(this.text, {super.key, this.textAlign, this.color})
    : type = FwTextType.body,
      maxLines = null,
      fontWeight = null;

  const FwText.caption(this.text, {super.key, this.textAlign, this.color})
    : type = FwTextType.caption,
      maxLines = null,
      fontWeight = null;

  @override
  Widget build(BuildContext context) {
    TextStyle style;

    switch (type) {
      case FwTextType.display:
        style = AppTextStyles.titleLarge.copyWith(fontSize: 36);
        break;

      case FwTextType.title:
        style = AppTextStyles.titleLarge;
        break;

      case FwTextType.subtitle:
        style = AppTextStyles.titleMedium;
        break;

      case FwTextType.caption:
        style = AppTextStyles.caption;
        break;

      case FwTextType.label:
        style = AppTextStyles.caption.copyWith(fontSize: 12);
        break;

      default:
        style = AppTextStyles.body;
    }

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: style.copyWith(color: color, fontWeight: fontWeight),
    );
  }
}
