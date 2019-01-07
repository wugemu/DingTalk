.class public final Lhch;
.super Ljava/lang/Object;
.source "LWThumbnailUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 480
    .local v2, "nOrientation":I
    packed-switch v2, :pswitch_data_0

    .line 517
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "nOrientation":I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 482
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "nOrientation":I
    :pswitch_1
    const/16 v3, 0x5a

    goto :goto_1

    .line 484
    :pswitch_2
    const/16 v3, 0x10e

    goto :goto_1

    .line 486
    :pswitch_3
    const/16 v3, 0xb4

    goto :goto_1

    .line 489
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "nOrientation":I
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v12, -0x1

    .line 592
    .line 1610
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v3

    .line 1611
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v3

    .line 1613
    if-ne p2, v12, :cond_1

    move v0, v2

    .line 1615
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 1619
    :goto_1
    if-ge v3, v0, :cond_3

    .line 596
    .local v0, "initialSize":I
    :cond_0
    :goto_2
    const/16 v2, 0x8

    if-gt v0, v2, :cond_5

    .line 597
    const/4 v1, 0x1

    .line 598
    .local v1, "roundedSize":I
    :goto_3
    if-ge v1, v0, :cond_6

    .line 599
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1613
    .end local v0    # "initialSize":I
    .end local v1    # "roundedSize":I
    :cond_1
    mul-double v8, v4, v6

    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 1614
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    goto :goto_0

    .line 1615
    :cond_2
    int-to-double v8, p1

    div-double/2addr v4, v8

    .line 1616
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    int-to-double v8, p1

    div-double/2addr v6, v8

    .line 1617
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 1616
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_1

    .line 1623
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v0, v2

    .line 1625
    goto :goto_2

    .line 1626
    :cond_4
    if-eq p1, v12, :cond_0

    move v0, v3

    .line 1629
    goto :goto_2

    .line 602
    .restart local v0    # "initialSize":I
    :cond_5
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 605
    .restart local v1    # "roundedSize":I
    :cond_6
    return v1
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 671
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 672
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 673
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 675
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 676
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 675
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 677
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 678
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    const/4 p0, 0x0

    .line 690
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 684
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 685
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    move-object v7, p0

    .line 690
    goto :goto_0

    .line 686
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_1
    move-exception v9

    .line 687
    .local v9, "ex":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I

    .prologue
    .line 309
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 310
    const/4 v2, 0x0

    .line 368
    :goto_0
    return-object v2

    .line 313
    :cond_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 314
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 317
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    iget-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v14, :cond_1

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 326
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v3

    .line 320
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "LWThumbnailUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v2, 0x0

    goto :goto_0

    .line 328
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v12, 0x1

    .line 329
    .local v12, "verticalPic":Z
    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v14, v15, :cond_3

    .line 330
    const/4 v12, 0x0

    .line 332
    :cond_3
    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 333
    .local v8, "small":I
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 335
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v14, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 336
    move/from16 v0, p1

    if-le v8, v0, :cond_4

    .line 338
    div-int v14, v8, p1

    div-int/lit8 v14, v14, 0x2

    mul-int/lit8 v14, v14, 0x2

    iput v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 339
    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v14, :cond_4

    .line 341
    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 345
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 346
    .local v10, "time":J
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 348
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 349
    .local v13, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 351
    .local v4, "height":I
    move/from16 v0, p1

    if-le v13, v0, :cond_5

    .line 352
    if-eqz v12, :cond_6

    .line 353
    move/from16 v0, p1

    int-to-float v14, v0

    int-to-float v15, v13

    div-float/2addr v14, v15

    int-to-float v15, v4

    mul-float/2addr v14, v15

    float-to-int v5, v14

    .line 354
    .local v5, "newHeight":I
    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0, v5, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 360
    .end local v5    # "newHeight":I
    :cond_5
    :goto_1
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 361
    const-string/jumbo v14, "LWThumbnailUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "decodeFile : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v10

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 363
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v10    # "time":J
    .end local v13    # "width":I
    :catch_1
    move-exception v3

    .line 364
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 356
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "height":I
    .restart local v10    # "time":J
    .restart local v13    # "width":I
    :cond_6
    move/from16 v0, p1

    int-to-float v14, v0

    int-to-float v15, v4

    div-float/2addr v14, v15

    int-to-float v15, v13

    mul-float/2addr v14, v15

    float-to-int v6, v14

    .line 357
    .local v6, "newWidth":I
    const/4 v14, 0x0

    :try_start_2
    move/from16 v0, p1

    invoke-static {v2, v6, v0, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_1

    .line 365
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v6    # "newWidth":I
    .end local v10    # "time":J
    .end local v13    # "width":I
    :catch_2
    move-exception v9

    .line 366
    .local v9, "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/io/File;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "targeSize"    # I
    .param p3, "wifi"    # Z

    .prologue
    .line 236
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 237
    const/4 v8, 0x0

    .line 294
    :goto_0
    return-object v8

    .line 239
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 240
    .local v18, "time":J
    const/16 v20, 0x320

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lhch;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 241
    .local v4, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v20, "LWThumbnailUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "compressFileToBitmapThumb : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v18

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-nez v4, :cond_1

    .line 243
    const/4 v8, 0x0

    goto :goto_0

    .line 245
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lhch;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v6

    .line 246
    .local v6, "degree":I
    invoke-static {v4, v6}, Lhch;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 247
    .local v15, "rotate":Landroid/graphics/Bitmap;
    if-nez v15, :cond_2

    .line 248
    const/4 v8, 0x0

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 250
    .local v17, "width":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 251
    .local v11, "height":I
    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 252
    .local v16, "smallSide":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ".jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 253
    .local v13, "nameString":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, "pathString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 255
    const/16 v20, 0x320

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    div-int v20, v11, v17

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    div-int v20, v17, v11

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 256
    :cond_3
    const/16 v20, 0x32

    move/from16 v0, v20

    invoke-static {v14, v13, v15, v0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    .line 257
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "50%   rotate size= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lhch;->a(Landroid/graphics/Bitmap;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    :goto_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v8, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 269
    .local v9, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 270
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .local v10, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 272
    .local v5, "buffer":[B
    invoke-virtual {v10, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 273
    const-string/jumbo v20, "IMAGE"

    .line 274
    invoke-static/range {v20 .. v20}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 275
    .local v12, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v5, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 285
    .end local v5    # "buffer":[B
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v12    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_4
    if-eqz v9, :cond_5

    .line 287
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    :cond_5
    :goto_2
    const-string/jumbo v20, "LWThumbnailUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "writeBitmap : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v18

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 258
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_6
    invoke-static {v15}, Lhch;->a(Landroid/graphics/Bitmap;)I

    move-result v20

    const v21, 0xfa000

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    if-nez p3, :cond_7

    .line 259
    const/16 v20, 0x3c

    move/from16 v0, v20

    invoke-static {v14, v13, v15, v0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    .line 260
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "60% rotate size= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lhch;->a(Landroid/graphics/Bitmap;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 262
    :cond_7
    const/16 v20, 0x46

    move/from16 v0, v20

    invoke-static {v14, v13, v15, v0}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    .line 263
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "70% rotate size= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lhch;->a(Landroid/graphics/Bitmap;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 288
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 289
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 278
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 279
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-eqz v9, :cond_5

    .line 287
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 288
    :catch_2
    move-exception v7

    .line 289
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 280
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 281
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    if-eqz v9, :cond_5

    .line 287
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 288
    :catch_4
    move-exception v7

    .line 289
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 282
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 283
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 285
    if-eqz v9, :cond_5

    .line 287
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    .line 288
    :catch_6
    move-exception v7

    .line 289
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 285
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v9, :cond_8

    .line 287
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 290
    :cond_8
    :goto_7
    throw v20

    .line 288
    :catch_7
    move-exception v7

    .line 289
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 285
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 282
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 280
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 278
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "wifi"    # Z

    .prologue
    .line 107
    const/16 v0, 0x320

    invoke-static {p0, p1, v0, p2}, Lhch;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
