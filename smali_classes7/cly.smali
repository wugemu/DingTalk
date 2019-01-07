.class public final Lcly;
.super Ljava/lang/Object;
.source "MailHtml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcly$a;,
        Lcly$c;,
        Lcly$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcly$b;Lcly$c;I)Landroid/text/Spanned;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Lcly$b;
    .param p2, "tagHandler"    # Lcly$c;
    .param p3, "maxImageWidth"    # I

    .prologue
    .line 136
    new-instance v4, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v4}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 138
    .local v4, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lcly$a;->a()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    new-instance v0, Lclx;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lclx;-><init>(Ljava/lang/String;Lcly$b;Lcly$c;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 150
    .local v0, "converter":Lclx;
    invoke-virtual {v0}, Lclx;->a()Landroid/text/Spanned;

    move-result-object v1

    return-object v1

    .line 139
    .end local v0    # "converter":Lclx;
    :catch_0
    move-exception v6

    .line 141
    .local v6, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 142
    .end local v6    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v6

    .line 144
    .local v6, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcly;->a(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 25
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 172
    invoke-interface/range {p1 .. p1}, Landroid/text/Spanned;->length()I

    move-result v8

    .line 175
    .local v8, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/text/Spanned;->length()I

    move-result v12

    if-ge v6, v12, :cond_2c

    .line 176
    const-class v12, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v8, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v10

    .line 177
    .local v10, "next":I
    const-class v12, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ParagraphStyle;

    .line 178
    .local v11, "style":[Landroid/text/style/ParagraphStyle;
    const-string/jumbo v5, " "

    .line 179
    .local v5, "elements":Ljava/lang/String;
    const/4 v9, 0x0

    .line 181
    .local v9, "needDiv":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v12, v11

    if-ge v7, v12, :cond_3

    .line 182
    aget-object v12, v11, v7

    instance-of v12, v12, Landroid/text/style/AlignmentSpan;

    if-eqz v12, :cond_0

    .line 183
    aget-object v12, v11, v7

    check-cast v12, Landroid/text/style/AlignmentSpan;

    .line 184
    invoke-interface {v12}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    .line 185
    .local v4, "align":Landroid/text/Layout$Alignment;
    const/4 v9, 0x1

    .line 186
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v4, v12, :cond_1

    .line 187
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "align=\"center\" "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .end local v4    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 188
    .restart local v4    # "align":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v4, v12, :cond_2

    .line 189
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "align=\"right\" "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 191
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "align=\"left\" "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 195
    .end local v4    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v9, :cond_4

    .line 196
    const-string/jumbo v12, "<div "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move/from16 v17, v6

    .line 1210
    :goto_3
    move/from16 v0, v17

    if-ge v0, v10, :cond_2a

    .line 1211
    const-class v12, Landroid/text/style/QuoteSpan;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1, v10, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v15

    .line 1212
    const-class v12, Landroid/text/style/QuoteSpan;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1, v15, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/QuoteSpan;

    .line 1214
    array-length v14, v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_5

    .line 1215
    const-string/jumbo v16, "<blockquote>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1229
    :cond_5
    const-string/jumbo v13, "<p>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    :goto_5
    move/from16 v0, v17

    if-ge v0, v15, :cond_28

    .line 1233
    const/16 v13, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v13, v1, v15}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v13

    .line 1234
    if-gez v13, :cond_6

    move v13, v15

    .line 1238
    :cond_6
    const/4 v14, 0x0

    move/from16 v20, v14

    move/from16 v21, v13

    .line 1240
    :goto_6
    move/from16 v0, v21

    if-ge v0, v15, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_7

    .line 1241
    add-int/lit8 v13, v20, 0x1

    .line 1242
    add-int/lit8 v14, v21, 0x1

    move/from16 v20, v13

    move/from16 v21, v14

    goto :goto_6

    .line 1245
    :cond_7
    sub-int v22, v21, v20

    move/from16 v0, v21

    if-ne v0, v15, :cond_12

    const/4 v13, 0x1

    move/from16 v16, v13

    .line 1255
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_23

    .line 1256
    const-class v13, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v13}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v19

    .line 1257
    const-class v13, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/CharacterStyle;

    .line 1260
    const/4 v14, 0x0

    move/from16 v18, v17

    move/from16 v17, v14

    :goto_8
    array-length v14, v13

    move/from16 v0, v17

    if-ge v0, v14, :cond_17

    .line 1261
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/StyleSpan;

    if-eqz v14, :cond_9

    .line 1262
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/StyleSpan;

    invoke-virtual {v14}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v14

    .line 1264
    and-int/lit8 v23, v14, 0x1

    if-eqz v23, :cond_8

    .line 1265
    const-string/jumbo v23, "<b>"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_8
    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_9

    .line 1268
    const-string/jumbo v14, "<i>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    :cond_9
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/TypefaceSpan;

    if-eqz v14, :cond_a

    .line 1272
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v14}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v14

    .line 1274
    const-string/jumbo v23, "monospace"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1275
    const-string/jumbo v14, "<tt>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_a
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/SuperscriptSpan;

    if-eqz v14, :cond_b

    .line 1279
    const-string/jumbo v14, "<sup>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    :cond_b
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/SubscriptSpan;

    if-eqz v14, :cond_c

    .line 1282
    const-string/jumbo v14, "<sub>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_c
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/UnderlineSpan;

    if-eqz v14, :cond_d

    .line 1285
    const-string/jumbo v14, "<u>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_d
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/StrikethroughSpan;

    if-eqz v14, :cond_e

    .line 1288
    const-string/jumbo v14, "<strike>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    :cond_e
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/URLSpan;

    if-eqz v14, :cond_f

    .line 1291
    const-string/jumbo v14, "<a href=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/URLSpan;

    invoke-virtual {v14}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string/jumbo v14, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    :cond_f
    aget-object v14, v13, v17

    instance-of v14, v14, Lcqj;

    if-eqz v14, :cond_14

    .line 1296
    const-string/jumbo v14, "<img src=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    aget-object v14, v13, v17

    check-cast v14, Lcqj;

    .line 2050
    iget-object v0, v14, Lcqj;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1298
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 3050
    iget-object v0, v14, Lcqj;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1299
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :goto_9
    const-string/jumbo v18, "\" android-uri=\""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4046
    iget-object v14, v14, Lcqj;->a:Landroid/net/Uri;

    .line 1304
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const-string/jumbo v14, "\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string/jumbo v14, " />"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v19

    .line 1317
    :cond_10
    :goto_a
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v14, :cond_11

    .line 1318
    const-string/jumbo v14, "<font size =\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v14}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v14

    div-int/lit8 v14, v14, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1320
    const-string/jumbo v14, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    :cond_11
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/ForegroundColorSpan;

    if-eqz v14, :cond_16

    .line 1323
    const-string/jumbo v14, "<font color =\"#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/ForegroundColorSpan;

    .line 1325
    invoke-virtual {v14}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v14

    const/high16 v23, 0x1000000

    add-int v14, v14, v23

    .line 1324
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    .line 1326
    :goto_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 1327
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "0"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    .line 1245
    :cond_12
    const/4 v13, 0x0

    move/from16 v16, v13

    goto/16 :goto_7

    .line 1301
    :cond_13
    invoke-virtual {v14}, Lcqj;->getSource()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1309
    :cond_14
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/ImageSpan;

    if-eqz v14, :cond_10

    .line 1310
    const-string/jumbo v14, "<img src=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/ImageSpan;

    invoke-virtual {v14}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    const-string/jumbo v14, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v19

    .line 1315
    goto/16 :goto_a

    .line 1329
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string/jumbo v14, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    :cond_16
    add-int/lit8 v14, v17, 0x1

    move/from16 v17, v14

    goto/16 :goto_8

    .line 1334
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcly;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 1336
    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    move/from16 v17, v14

    :goto_c
    if-ltz v17, :cond_22

    .line 1337
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/ForegroundColorSpan;

    if-eqz v14, :cond_18

    .line 1338
    const-string/jumbo v14, "</font>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    :cond_18
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v14, :cond_19

    .line 1341
    const-string/jumbo v14, "</font>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    :cond_19
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/URLSpan;

    if-eqz v14, :cond_1a

    .line 1344
    const-string/jumbo v14, "</a>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    :cond_1a
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/StrikethroughSpan;

    if-eqz v14, :cond_1b

    .line 1347
    const-string/jumbo v14, "</strike>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    :cond_1b
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/UnderlineSpan;

    if-eqz v14, :cond_1c

    .line 1350
    const-string/jumbo v14, "</u>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_1c
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/SubscriptSpan;

    if-eqz v14, :cond_1d

    .line 1353
    const-string/jumbo v14, "</sub>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_1d
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/SuperscriptSpan;

    if-eqz v14, :cond_1e

    .line 1356
    const-string/jumbo v14, "</sup>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    :cond_1e
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/TypefaceSpan;

    if-eqz v14, :cond_1f

    .line 1359
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v14}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v14

    .line 1361
    const-string/jumbo v18, "monospace"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1362
    const-string/jumbo v14, "</tt>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    :cond_1f
    aget-object v14, v13, v17

    instance-of v14, v14, Landroid/text/style/StyleSpan;

    if-eqz v14, :cond_21

    .line 1366
    aget-object v14, v13, v17

    check-cast v14, Landroid/text/style/StyleSpan;

    invoke-virtual {v14}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v14

    .line 1368
    and-int/lit8 v18, v14, 0x1

    if-eqz v18, :cond_20

    .line 1369
    const-string/jumbo v18, "</b>"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_20
    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_21

    .line 1372
    const-string/jumbo v14, "</i>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    :cond_21
    add-int/lit8 v14, v17, -0x1

    move/from16 v17, v14

    goto/16 :goto_c

    :cond_22
    move/from16 v17, v19

    .line 1255
    goto/16 :goto_7

    .line 1378
    :cond_23
    if-eqz v16, :cond_24

    const-string/jumbo v13, ""

    move-object v14, v13

    .line 1380
    :goto_d
    const/4 v13, 0x1

    move/from16 v0, v20

    if-ne v0, v13, :cond_25

    .line 1381
    const-string/jumbo v13, "<br>\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    move/from16 v17, v21

    .line 1232
    goto/16 :goto_5

    .line 1378
    :cond_24
    const-string/jumbo v13, "</p>\n<p>"

    move-object v14, v13

    goto :goto_d

    .line 1382
    :cond_25
    const/4 v13, 0x2

    move/from16 v0, v20

    if-ne v0, v13, :cond_26

    .line 1383
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1385
    :cond_26
    const/4 v13, 0x2

    :goto_f
    move/from16 v0, v20

    if-ge v13, v0, :cond_27

    .line 1386
    const-string/jumbo v16, "<br>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 1388
    :cond_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1248
    :cond_28
    const-string/jumbo v13, "</p>\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    array-length v13, v12

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v13, :cond_29

    .line 1221
    const-string/jumbo v14, "</blockquote>\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_29
    move/from16 v17, v15

    .line 1210
    goto/16 :goto_3

    .line 201
    :cond_2a
    if-eqz v9, :cond_2b

    .line 202
    const-string/jumbo v12, "</div>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_2b
    move v6, v10

    goto/16 :goto_0

    .line 205
    .end local v5    # "elements":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v9    # "needDiv":Z
    .end local v10    # "next":I
    .end local v11    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_2c
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v4, 0x20

    .line 394
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_7

    .line 395
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 397
    .local v0, "c":C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    .line 398
    const-string/jumbo v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    .line 400
    const-string/jumbo v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 401
    :cond_1
    const/16 v2, 0x26

    if-ne v0, v2, :cond_2

    .line 402
    const-string/jumbo v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 403
    :cond_2
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_3

    if-ge v0, v4, :cond_4

    .line 404
    :cond_3
    const-string/jumbo v2, "&#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 405
    :cond_4
    if-ne v0, v4, :cond_6

    .line 406
    :goto_2
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    .line 407
    const-string/jumbo v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 411
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 413
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 416
    .end local v0    # "c":C
    :cond_7
    return-void
.end method
