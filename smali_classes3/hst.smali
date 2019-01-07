.class public final Lhst;
.super Ljava/lang/Object;
.source "SaveBitmap2File.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v12, -0x1

    .line 252
    .line 2271
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v3

    .line 2272
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v3

    .line 2274
    if-ne p2, v12, :cond_1

    move v0, v2

    .line 2276
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 2280
    :goto_1
    if-ge v3, v0, :cond_3

    .line 256
    .local v0, "initialSize":I
    :cond_0
    :goto_2
    const/16 v2, 0x8

    if-gt v0, v2, :cond_5

    .line 257
    const/4 v1, 0x1

    .line 258
    .local v1, "roundedSize":I
    :goto_3
    if-ge v1, v0, :cond_6

    .line 259
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2274
    .end local v0    # "initialSize":I
    .end local v1    # "roundedSize":I
    :cond_1
    mul-double v8, v4, v6

    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 2275
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    goto :goto_0

    .line 2276
    :cond_2
    int-to-double v8, p1

    div-double/2addr v4, v8

    .line 2277
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    int-to-double v8, p1

    div-double/2addr v6, v8

    .line 2278
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 2277
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_1

    .line 2285
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v0, v2

    .line 2287
    goto :goto_2

    .line 2288
    :cond_4
    if-eq p1, v12, :cond_0

    move v0, v3

    .line 2291
    goto :goto_2

    .line 262
    .restart local v0    # "initialSize":I
    :cond_5
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 265
    .restart local v1    # "roundedSize":I
    :cond_6
    return v1
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 317
    .local v0, "degree":I
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 319
    .local v2, "orientation":I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 324
    :pswitch_1
    const/16 v0, 0xb4

    .line 325
    goto :goto_0

    .line 321
    :pswitch_2
    const/16 v0, 0x5a

    .line 322
    goto :goto_0

    .line 327
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    .end local v2    # "orientation":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 234
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 235
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 236
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

    .line 238
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 238
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 247
    .end local v5    # "m":Landroid/graphics/Matrix;
    :goto_0
    return-object v7

    .line 241
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 242
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 243
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_1
    move-exception v9

    .line 244
    .local v9, "ex":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;IIZI)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "writeCompressedBitmapBackToFile"    # Z
    .param p4, "degree"    # I

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 113
    const/4 v2, 0x0

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 115
    :cond_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 116
    .local v18, "targetSize":I
    mul-int v13, p1, p2

    .line 117
    .local v13, "maxPixels":I
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 119
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    :cond_2
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 132
    .local v9, "fd":Ljava/io/FileDescriptor;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v9, v0, v15}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 154
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 157
    :cond_3
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 162
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 127
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v7

    .line 138
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :catch_2
    move-exception v8

    .line 142
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 145
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 146
    .local v17, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 152
    :goto_3
    const/4 v2, 0x0

    goto :goto_0

    .line 149
    :catch_4
    move-exception v7

    .line 150
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 158
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    .line 160
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    move/from16 v0, v18

    invoke-static {v15, v0, v13}, Lhst;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v16

    .line 170
    .local v16, "sampleSize":I
    const/16 v19, 0x14

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 172
    .local v14, "maxSample":I
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 175
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 177
    move/from16 v12, v16

    .local v12, "index":I
    :goto_4
    if-gt v12, v14, :cond_b

    .line 179
    :try_start_5
    iput v12, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v9, v0, v15}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 184
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 185
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 186
    .local v6, "currentWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 188
    .local v4, "currentHeight":I
    if-le v6, v4, :cond_7

    .line 189
    move v5, v6

    .line 195
    .local v5, "currentLong":I
    :goto_5
    const/16 v19, 0x500

    move/from16 v0, v19

    if-gt v5, v0, :cond_5

    const/16 v19, 0x3c0

    move/from16 v0, v19

    if-le v4, v0, :cond_8

    .line 196
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "currentHeight":I
    .end local v5    # "currentLong":I
    .end local v6    # "currentWidth":I
    :cond_6
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 192
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "currentHeight":I
    .restart local v6    # "currentWidth":I
    :cond_7
    move v5, v4

    .restart local v5    # "currentLong":I
    goto :goto_5

    .line 200
    :cond_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 201
    if-nez v3, :cond_9

    .line 202
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 204
    :cond_9
    move/from16 v0, p4

    invoke-static {v3, v0}, Lhst;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 205
    .local v2, "b2":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 206
    if-eq v3, v2, :cond_0

    .line 207
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_0

    .line 216
    .end local v2    # "b2":Landroid/graphics/Bitmap;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "currentHeight":I
    .end local v5    # "currentLong":I
    .end local v6    # "currentWidth":I
    :catch_6
    move-exception v7

    .line 217
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_6

    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "b2":Landroid/graphics/Bitmap;
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "currentHeight":I
    .restart local v5    # "currentLong":I
    .restart local v6    # "currentWidth":I
    :cond_a
    move-object v2, v3

    .line 213
    goto/16 :goto_0

    .line 218
    .end local v2    # "b2":Landroid/graphics/Bitmap;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "currentHeight":I
    .end local v5    # "currentLong":I
    .end local v6    # "currentWidth":I
    :catch_7
    move-exception v7

    .line 219
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 220
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v17

    .line 221
    .restart local v17    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 225
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_b
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 230
    :goto_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 226
    :catch_9
    move-exception v7

    .line 228
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    .line 339
    invoke-static {p0}, Lhst;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 344
    .local v0, "cacheDir":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 351
    :cond_2
    return-object v0

    .line 2368
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    .restart local v0    # "cacheDir":Ljava/io/File;
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lhst;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ActionImage"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v4, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 66
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-object v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v3, 0x0

    .line 34
    .local v3, "myCaptureFile":Ljava/io/File;
    move-object v5, p1

    .line 35
    .local v5, "subForder":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "foder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 39
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v3    # "myCaptureFile":Ljava/io/File;
    .local v4, "myCaptureFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 43
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 45
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 46
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 50
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "foder":Ljava/io/File;
    .end local v4    # "myCaptureFile":Ljava/io/File;
    .restart local v3    # "myCaptureFile":Ljava/io/File;
    :goto_0
    return-object v3

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "myCaptureFile":Ljava/io/File;
    .restart local v2    # "foder":Ljava/io/File;
    .restart local v4    # "myCaptureFile":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "myCaptureFile":Ljava/io/File;
    .restart local v3    # "myCaptureFile":Ljava/io/File;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 79
    move-object/from16 v9, p1

    .line 80
    .local v9, "resPath":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lhst;->a(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "degree":I
    if-nez v2, :cond_0

    move-object v10, v9

    .line 100
    .end local v9    # "resPath":Ljava/lang/String;
    .local v10, "resPath":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 83
    .end local v10    # "resPath":Ljava/lang/String;
    .restart local v9    # "resPath":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v11, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    .local v11, "widthpixels":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v13, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1296
    const/4 v12, 0x0

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "status_bar_height"

    const-string/jumbo v16, "dimen"

    const-string/jumbo v17, "android"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1298
    if-lez v14, :cond_1

    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 84
    :cond_1
    sub-int v6, v13, v12

    .line 85
    .local v6, "heightpixels":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lhst;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "originPath":Ljava/lang/String;
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11, v6, v12, v2}, Lhst;->a(Ljava/lang/String;IIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 90
    .local v7, "origin":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "fileName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lhst;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v5}, Lhst;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 95
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 97
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .end local v5    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v10, v9

    .line 100
    .end local v9    # "resPath":Ljava/lang/String;
    .restart local v10    # "resPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 92
    .end local v4    # "file":Ljava/io/File;
    .end local v10    # "resPath":Ljava/lang/String;
    .restart local v9    # "resPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 97
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 95
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    :catchall_0
    move-exception v12

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 97
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 99
    :cond_3
    throw v12
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    .local v0, "f":Ljava/io/File;
    :goto_0
    return-object v0

    .line 360
    .end local v0    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0
.end method
