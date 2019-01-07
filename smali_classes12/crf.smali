.class public final Lcrf;
.super Ljava/lang/Object;
.source "WaterBitmap.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcig$j;->water_logo:I

    sput v0, Lcrf;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "textPainColor"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_6_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "textPainColor"    # I
    .param p4, "backColor"    # I

    .prologue
    .line 45
    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v20

    .line 46
    .local v20, "fontPadding":I
    const/high16 v2, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v21

    .line 47
    .local v21, "yFontPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcrf;->a:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "dingText":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-le v2, v4, :cond_0

    .line 1122
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1123
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-eqz v2, :cond_a

    .line 53
    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_0
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-le v2, v4, :cond_b

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_1
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/2addr v2, v4

    add-int v20, v20, v2

    .line 72
    :cond_2
    mul-int/lit8 v2, v20, 0x3

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v2, v4

    mul-int/lit8 v4, v21, 0x3

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 73
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .local v1, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 76
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .local v6, "mPaint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcig$d;->uidic_global_text_size_s14:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 89
    .local v3, "path":Landroid/graphics/Path;
    const/high16 v2, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 90
    move/from16 v0, v20

    int-to-float v2, v0

    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 92
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 95
    :cond_3
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 96
    .local v9, "path1":Landroid/graphics/Path;
    mul-int/lit8 v2, v20, 0x2

    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    mul-int/lit8 v2, v20, 0x3

    int-to-float v2, v2

    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 100
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 101
    .local v12, "path2":Landroid/graphics/Path;
    const/high16 v2, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    mul-int/lit8 v4, v21, 0x3

    int-to-float v4, v4

    invoke-virtual {v12, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    move/from16 v0, v20

    int-to-float v2, v0

    mul-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    invoke-virtual {v12, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    move-object v11, v8

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 105
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 106
    .local v15, "path3":Landroid/graphics/Path;
    mul-int/lit8 v2, v20, 0x2

    int-to-float v2, v2

    mul-int/lit8 v4, v21, 0x3

    int-to-float v4, v4

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 107
    mul-int/lit8 v2, v20, 0x3

    int-to-float v2, v2

    mul-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v1

    move-object/from16 v14, p1

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_4
    return-object v19

    .line 1125
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v6    # "mPaint":Landroid/graphics/Paint;
    .end local v9    # "path1":Landroid/graphics/Path;
    .end local v12    # "path2":Landroid/graphics/Path;
    .end local v15    # "path3":Landroid/graphics/Path;
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1126
    array-length v5, v4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_9

    aget-char v7, v4, v2

    .line 1128
    const/16 v10, 0x41

    if-lt v7, v10, :cond_6

    const/16 v10, 0x5a

    if-le v7, v10, :cond_8

    :cond_6
    const/16 v10, 0x61

    if-lt v7, v10, :cond_7

    const/16 v10, 0x7a

    if-le v7, v10, :cond_8

    .line 1131
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1126
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1134
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 55
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 64
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method
