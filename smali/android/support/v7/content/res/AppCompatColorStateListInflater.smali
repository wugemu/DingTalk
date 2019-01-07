.class final Landroid/support/v7/content/res/AppCompatColorStateListInflater;
.super Ljava/lang/Object;
.source "AppCompatColorStateListInflater.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 55
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 58
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    :cond_1
    if-eq v1, v3, :cond_2

    .line 64
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 24
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    add-int/lit8 v12, v22, 0x1

    .line 102
    .local v12, "innerDepth":I
    const/16 v22, 0x14

    move/from16 v0, v22

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    .line 103
    .local v19, "stateSpecList":[[I
    const/16 v22, 0x14

    move/from16 v0, v22

    new-array v8, v0, [I

    .line 104
    .local v8, "colorList":[I
    const/4 v15, 0x0

    .line 106
    .local v15, "listSize":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 107
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .local v10, "depth":I
    if-ge v10, v12, :cond_1

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 108
    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    if-gt v10, v12, :cond_0

    .line 109
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "item"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 113
    sget-object v22, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 114
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v22, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_color:I

    const v23, -0xff01

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 117
    .local v6, "baseColor":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 118
    .local v5, "alphaMod":F
    sget v22, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 119
    sget v22, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 124
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    const/4 v13, 0x0

    .line 128
    .local v13, "j":I
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v16

    .line 129
    .local v16, "numAttrs":I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 130
    .local v18, "stateSpec":[I
    const/4 v11, 0x0

    .local v11, "i":I
    move v14, v13

    .end local v13    # "j":I
    .local v14, "j":I
    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    .line 131
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v17

    .line 132
    .local v17, "stateResId":I
    const v22, 0x10101a5

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const v22, 0x101031f

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    sget v22, Landroid/support/v7/appcompat/R$attr;->alpha:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 135
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "j":I
    .restart local v13    # "j":I
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v11, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v22

    if-eqz v22, :cond_4

    .end local v17    # "stateResId":I
    :goto_3
    aput v17, v18, v14

    .line 130
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v14, v13

    .end local v13    # "j":I
    .restart local v14    # "j":I
    goto :goto_2

    .line 120
    .end local v11    # "i":I
    .end local v14    # "j":I
    .end local v16    # "numAttrs":I
    .end local v18    # "stateSpec":[I
    :cond_3
    sget v22, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 121
    sget v22, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    goto :goto_1

    .line 135
    .restart local v11    # "i":I
    .restart local v13    # "j":I
    .restart local v16    # "numAttrs":I
    .restart local v17    # "stateResId":I
    .restart local v18    # "stateSpec":[I
    :cond_4
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_3

    .line 139
    .end local v13    # "j":I
    .end local v17    # "stateResId":I
    .restart local v14    # "j":I
    :cond_5
    move-object/from16 v0, v18

    invoke-static {v0, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v18

    .line 144
    invoke-static {v6, v5}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->modulateColorAlpha(IF)I

    move-result v7

    .line 149
    .local v7, "color":I
    invoke-static {v8, v15, v7}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v8

    .line 150
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "stateSpecList":[[I
    check-cast v19, [[I

    .line 151
    .restart local v19    # "stateSpecList":[[I
    add-int/lit8 v15, v15, 0x1

    .line 152
    goto/16 :goto_0

    .line 154
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "alphaMod":F
    .end local v6    # "baseColor":I
    .end local v7    # "color":I
    .end local v10    # "depth":I
    .end local v11    # "i":I
    .end local v14    # "j":I
    .end local v16    # "numAttrs":I
    .end local v18    # "stateSpec":[I
    :cond_6
    new-array v9, v15, [I

    .line 155
    .local v9, "colors":[I
    new-array v0, v15, [[I

    move-object/from16 v20, v0

    .line 156
    .local v20, "stateSpecs":[[I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v9, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v22

    .end local v9    # "colors":[I
    .end local v20    # "stateSpecs":[[I
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    .restart local v5    # "alphaMod":F
    .restart local v6    # "baseColor":I
    .restart local v10    # "depth":I
    .restart local v11    # "i":I
    .restart local v14    # "j":I
    .restart local v16    # "numAttrs":I
    .restart local v17    # "stateResId":I
    .restart local v18    # "stateSpec":[I
    :cond_7
    move v13, v14

    .end local v14    # "j":I
    .restart local v13    # "j":I
    goto :goto_4
.end method

.method private static modulateColorAlpha(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "alphaMod"    # F

    .prologue
    .line 169
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, v0}, Ldt;->b(II)I

    move-result v0

    return v0
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 164
    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method
