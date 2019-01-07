.class public final Liva;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liva$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)F
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "orientation"

    aput-object v0, v2, v11

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 101
    .local v8, "r":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    int-to-float v10, v8

    .line 117
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "r":I
    :cond_0
    :goto_0
    return v10

    .line 104
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_0

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    new-instance v7, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 110
    .local v7, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v0, "Orientation"

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1079
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 1080
    const/high16 v0, 0x42b40000    # 90.0f

    .line 110
    :goto_1
    float-to-int v9, v0

    .line 113
    .local v9, "rotation":I
    int-to-float v10, v9

    goto :goto_0

    .line 1081
    .end local v9    # "rotation":I
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1082
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_1

    .line 1083
    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 1084
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_1

    :cond_5
    move v0, v10

    .line 1086
    goto :goto_1

    .end local v7    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v12, -0x1

    .line 141
    .line 1159
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v3

    .line 1160
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v3

    .line 1162
    if-ne p2, v12, :cond_1

    move v0, v2

    .line 1164
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 1168
    :goto_1
    if-ge v3, v0, :cond_3

    .line 145
    .local v0, "initialSize":I
    :cond_0
    :goto_2
    const/16 v2, 0x8

    if-gt v0, v2, :cond_5

    .line 146
    const/4 v1, 0x1

    .line 147
    .local v1, "roundedSize":I
    :goto_3
    if-ge v1, v0, :cond_6

    .line 148
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1162
    .end local v0    # "initialSize":I
    .end local v1    # "roundedSize":I
    :cond_1
    mul-double v8, v4, v6

    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 1163
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    goto :goto_0

    .line 1164
    :cond_2
    int-to-double v8, p1

    div-double/2addr v4, v8

    .line 1165
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    int-to-double v8, p1

    div-double/2addr v6, v8

    .line 1166
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 1165
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_1

    .line 1173
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v0, v2

    .line 1175
    goto :goto_2

    .line 1176
    :cond_4
    if-eq p1, v12, :cond_0

    move v0, v3

    .line 1179
    goto :goto_2

    .line 151
    .restart local v0    # "initialSize":I
    :cond_5
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 154
    .restart local v1    # "roundedSize":I
    :cond_6
    return v1
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 344
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Liva;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 345
    :cond_0
    if-nez p4, :cond_1

    .line 365
    invoke-static {p4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v2

    .line 346
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    move-object p5, v1

    .line 348
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 349
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 350
    invoke-static {}, Lcom/android/camera/BitmapManager;->a()Lcom/android/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v3, v0, p5}, Lcom/android/camera/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 351
    iget-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_3

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v4, :cond_3

    iget v3, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_4

    .line 365
    :cond_3
    invoke-static {p4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 355
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Liva;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 357
    const/4 v3, 0x0

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 359
    const/4 v3, 0x0

    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 360
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 361
    invoke-static {}, Lcom/android/camera/BitmapManager;->a()Lcom/android/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v3, v0, p5}, Lcom/android/camera/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 365
    invoke-static {p4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v3

    invoke-static {p4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {p4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "useNative"    # Z

    .prologue
    .line 314
    const/4 v4, 0x0

    .line 316
    .local v4, "input":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 317
    const/4 v5, 0x0

    .line 318
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p4, :cond_0

    .line 319
    invoke-static {}, Liva;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 321
    invoke-static/range {v0 .. v5}, Liva;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 326
    invoke-static {v4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 60
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 61
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 62
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 65
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 65
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 67
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    move-object p0, v7

    .line 75
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 471
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 372
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 290
    if-nez p0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 396
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
