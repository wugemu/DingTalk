.class public final Landroid/support/v4/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/FontResourcesParserCompat$b;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$c;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$d;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$a;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$a;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 153
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v3, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 158
    :cond_1
    if-eq v0, v3, :cond_2

    .line 159
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1166
    :cond_2
    const-string/jumbo v2, "font-family"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1168
    const-string/jumbo v3, "font-family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1169
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$a;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1171
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "certsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 222
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .restart local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    .line 225
    .local v5, "isArrayOfArrays":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 226
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 227
    invoke-virtual {v6, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 228
    .local v0, "certId":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "certsArray":[Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 230
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "certId":I
    .end local v2    # "certsArray":[Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "i":I
    .end local v5    # "isArrayOfArrays":Z
    :cond_0
    move v5, v7

    .line 224
    goto :goto_0

    .line 233
    .restart local v5    # "isArrayOfArrays":Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "certsArray":[Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 235
    .restart local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v2    # "certsArray":[Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "isArrayOfArrays":Z
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    .end local v6    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    if-eqz v1, :cond_4

    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :goto_2
    return-object v1

    .restart local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method

.method private static a([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "stringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p0, v2

    .line 246
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 269
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 272
    goto :goto_0

    .line 274
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$a;
    .locals 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    .line 178
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 179
    .local v1, "attrs":Landroid/util/AttributeSet;
    sget-object v11, Lg$h;->FontFamily:[I

    invoke-virtual {p1, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v11, Lg$h;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "authority":Ljava/lang/String;
    sget v11, Lg$h;->FontFamily_fontProviderPackage:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "providerPackage":Ljava/lang/String;
    sget v11, Lg$h;->FontFamily_fontProviderQuery:I

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "query":Ljava/lang/String;
    sget v11, Lg$h;->FontFamily_fontProviderCerts:I

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 184
    .local v4, "certsId":I
    sget v11, Lg$h;->FontFamily_fontProviderFetchStrategy:I

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 186
    .local v8, "strategy":I
    sget v11, Lg$h;->FontFamily_fontProviderFetchTimeout:I

    const/16 v12, 0x1f4

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 188
    .local v10, "timeoutMs":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 190
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v13, :cond_0

    .line 191
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {p1, v4}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v11, Landroid/support/v4/content/res/FontResourcesParserCompat$d;

    new-instance v12, Lfc;

    invoke-direct {v12, v2, v6, v7, v3}, Lfc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v11, v12, v8, v10}, Landroid/support/v4/content/res/FontResourcesParserCompat$d;-><init>(Lfc;II)V

    .line 210
    .end local v3    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :goto_1
    return-object v11

    .line 197
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v5, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/content/res/FontResourcesParserCompat$c;>;"
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v13, :cond_4

    .line 199
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 200
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v11, "font"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 202
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->c(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 207
    .end local v9    # "tag":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 208
    const/4 v11, 0x0

    goto :goto_1

    .line 210
    :cond_5
    new-instance v12, Landroid/support/v4/content/res/FontResourcesParserCompat$b;

    .line 211
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 210
    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    invoke-direct {v12, v11}, Landroid/support/v4/content/res/FontResourcesParserCompat$b;-><init>([Landroid/support/v4/content/res/FontResourcesParserCompat$c;)V

    move-object v11, v12

    goto :goto_1
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 253
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 254
    .local v1, "attrs":Landroid/util/AttributeSet;
    sget-object v7, Lg$h;->FontFamilyFont:[I

    invoke-virtual {p1, v1, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v7, Lg$h;->FontFamilyFont_fontWeight:I

    const/16 v8, 0x190

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 256
    .local v5, "weight":I
    sget v7, Lg$h;->FontFamilyFont_fontStyle:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 257
    .local v3, "isItalic":Z
    :goto_0
    sget v7, Lg$h;->FontFamilyFont_font:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 258
    .local v4, "resourceId":I
    sget v6, Lg$h;->FontFamilyFont_font:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 261
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "isItalic":Z
    .end local v4    # "resourceId":I
    :cond_0
    move v3, v6

    .line 256
    goto :goto_0

    .line 263
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "isItalic":Z
    .restart local v4    # "resourceId":I
    :cond_1
    new-instance v6, Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    invoke-direct {v6, v2, v5, v3, v4}, Landroid/support/v4/content/res/FontResourcesParserCompat$c;-><init>(Ljava/lang/String;IZI)V

    return-object v6
.end method
