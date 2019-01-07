.class public final Ljsz;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    .line 342
    .line 1360
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v1

    .line 1361
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v1

    .line 1363
    if-ne p2, v6, :cond_1

    move v1, v0

    .line 1365
    :goto_0
    const/16 v2, 0x80

    .line 1369
    if-ge v2, v1, :cond_2

    .line 346
    :cond_0
    :goto_1
    const/16 v2, 0x8

    if-gt v1, v2, :cond_3

    .line 348
    :goto_2
    if-ge v0, v1, :cond_4

    .line 349
    shl-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1363
    :cond_1
    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    goto :goto_0

    .line 1374
    :cond_2
    if-ne p2, v6, :cond_0

    move v1, v0

    .line 1376
    goto :goto_1

    .line 352
    :cond_3
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 355
    :cond_4
    return v0
.end method

.method public static final a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 287
    :try_start_0
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 292
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 293
    iget-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_2

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v7, :cond_2

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v7, :cond_3

    :cond_2
    move-object v0, v3

    .line 295
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 297
    :cond_3
    if-le v0, v2, :cond_5

    .line 298
    :goto_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 299
    if-le v0, p1, :cond_4

    .line 300
    mul-int v0, p1, p1

    invoke-static {v4, v7, v0}, Ljsz;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 303
    :cond_4
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 306
    :try_start_1
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 310
    :goto_3
    if-nez v0, :cond_6

    move-object v0, v3

    .line 311
    goto :goto_0

    :cond_5
    move v0, v2

    .line 297
    goto :goto_2

    .line 307
    :catch_1
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v3

    goto :goto_3

    .line 313
    :cond_6
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 314
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 315
    if-le v2, v3, :cond_7

    .line 316
    :goto_4
    if-le v2, p1, :cond_0

    .line 1193
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1196
    if-le v2, v3, :cond_8

    .line 1197
    :goto_5
    int-to-float v3, p1

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 1198
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_7
    move v2, v3

    .line 315
    goto :goto_4

    :cond_8
    move v2, v3

    .line 1196
    goto :goto_5
.end method

.method protected static final a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :cond_1
    if-eqz p0, :cond_2

    .line 224
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 225
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 227
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 239
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static final a(Ljava/lang/String;II)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 272
    :goto_0
    return v0

    .line 251
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 252
    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 254
    :try_start_0
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_1
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 259
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 260
    iget-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_1

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v6, :cond_1

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v6, :cond_2

    :cond_1
    move v0, v2

    .line 262
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 264
    :cond_2
    if-le v0, v1, :cond_4

    move v4, v0

    .line 265
    :goto_2
    if-ge v0, v1, :cond_5

    .line 266
    :goto_3
    const-string/jumbo v1, "AsynScaleCompressImage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "longSide="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "shortSide="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 269
    if-gt v4, p2, :cond_3

    if-le v0, p1, :cond_6

    :cond_3
    move v0, v3

    .line 270
    goto :goto_0

    :cond_4
    move v4, v1

    .line 264
    goto :goto_2

    :cond_5
    move v0, v1

    .line 265
    goto :goto_3

    :cond_6
    move v0, v2

    .line 272
    goto :goto_0
.end method
