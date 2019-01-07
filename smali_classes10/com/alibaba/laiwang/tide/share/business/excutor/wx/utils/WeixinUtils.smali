.class public Lcom/alibaba/laiwang/tide/share/business/excutor/wx/utils/WeixinUtils;
.super Ljava/lang/Object;
.source "WeixinUtils.java"


# static fields
.field private static final MAX_DECODE_PICTURE_SIZE:I = 0x2a3000

.field public static final Type_NONE:I = 0x1

.field public static final Type_Session:I = 0x1

.field public static final Type_Timeline:I = 0x2

.field public static final Type_Unknown:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "crop"    # Z

    .prologue
    .line 48
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    :try_start_0
    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 53
    .local v12, "tmp":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    .line 54
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    :cond_0
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v14, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 59
    .local v4, "beY":D
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v14, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 60
    .local v2, "beX":D
    if-eqz p3, :cond_4

    cmpl-double v13, v4, v2

    if-lez v13, :cond_3

    move-wide v14, v2

    :goto_0
    double-to-int v13, v14

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x1

    if-gt v13, v14, :cond_1

    .line 62
    const/4 v13, 0x1

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 66
    :cond_1
    :goto_1
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v13, v14

    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v13, v14

    const v14, 0x2a3000

    if-le v13, v14, :cond_6

    .line 67
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 119
    .end local v2    # "beX":D
    .end local v4    # "beY":D
    .end local v12    # "tmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v13

    const/4 v6, 0x0

    :cond_2
    :goto_2
    return-object v6

    .restart local v2    # "beX":D
    .restart local v4    # "beY":D
    .restart local v12    # "tmp":Landroid/graphics/Bitmap;
    :cond_3
    move-wide v14, v4

    .line 60
    goto :goto_0

    :cond_4
    cmpg-double v13, v4, v2

    if-gez v13, :cond_5

    move-wide v14, v2

    goto :goto_0

    :cond_5
    move-wide v14, v4

    goto :goto_0

    .line 70
    :cond_6
    move/from16 v8, p1

    .line 71
    .local v8, "newHeight":I
    move/from16 v9, p2

    .line 72
    .local v9, "newWidth":I
    if-eqz p3, :cond_8

    .line 73
    cmpl-double v13, v4, v2

    if-lez v13, :cond_7

    .line 74
    move/from16 v0, p2

    int-to-double v14, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v8, v14

    .line 89
    :goto_3
    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 92
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-nez v6, :cond_a

    .line 93
    const/4 v6, 0x0

    goto :goto_2

    .line 77
    .end local v6    # "bm":Landroid/graphics/Bitmap;
    :cond_7
    move/from16 v0, p1

    int-to-double v14, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    goto :goto_3

    .line 81
    :cond_8
    cmpg-double v13, v4, v2

    if-gez v13, :cond_9

    .line 82
    move/from16 v0, p2

    int-to-double v14, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v8, v14

    goto :goto_3

    .line 85
    :cond_9
    move/from16 v0, p1

    int-to-double v14, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    goto :goto_3

    .line 96
    .restart local v6    # "bm":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v13, 0x1

    invoke-static {v6, v9, v8, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 97
    .local v11, "scale":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_b

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    move-object v6, v11

    .line 102
    :cond_b
    if-eqz p3, :cond_2

    .line 103
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int v13, v13, p2

    shr-int/lit8 v13, v13, 0x1

    .line 104
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, v14, p1

    shr-int/lit8 v14, v14, 0x1

    .line 103
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v6, v13, v14, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 105
    .local v7, "cropped":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    move-object v6, v7

    goto/16 :goto_2
.end method


# virtual methods
.method public isSupportType(Ljava/lang/String;)I
    .locals 7
    .param p1, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v4, :cond_2

    :cond_0
    move v3, v5

    .line 37
    :cond_1
    :goto_0
    return v3

    .line 21
    :cond_2
    const-string/jumbo v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "codeArray":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v6, v0

    if-ge v6, v4, :cond_4

    :cond_3
    move v3, v5

    .line 23
    goto :goto_0

    .line 26
    :cond_4
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    .local v1, "mainCode":I
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 28
    .local v2, "minCode":I
    const/4 v5, 0x4

    if-lt v1, v5, :cond_1

    .line 31
    if-lt v2, v4, :cond_1

    move v3, v4

    .line 34
    goto :goto_0

    .line 37
    .end local v1    # "mainCode":I
    .end local v2    # "minCode":I
    :catch_0
    move-exception v3

    move v3, v5

    goto :goto_0
.end method
