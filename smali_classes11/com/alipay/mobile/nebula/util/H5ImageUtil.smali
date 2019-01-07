.class public Lcom/alipay/mobile/nebula/util/H5ImageUtil;
.super Ljava/lang/Object;
.source "H5ImageUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImageUtil"

.field public static gifBase64:Ljava/lang/String;

.field public static iconBase64:Ljava/lang/String;

.field public static jpgBae64:Ljava/lang/String;

.field public static pngBase64:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const-string/jumbo v0, "data:image/gif;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->gifBase64:Ljava/lang/String;

    .line 314
    const-string/jumbo v0, "data:image/png;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->pngBase64:Ljava/lang/String;

    .line 316
    const-string/jumbo v0, "data:image/jpeg;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->jpgBae64:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "data:image/x-icon;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->iconBase64:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Deal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->gifBase64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->gifBase64:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 334
    :cond_0
    :goto_0
    return-object p0

    .line 326
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->pngBase64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->pngBase64:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 328
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->jpgBae64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->jpgBae64:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 330
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->iconBase64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->iconBase64:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "base64Data"    # Ljava/lang/String;

    .prologue
    .line 280
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 281
    .local v0, "bytes":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 285
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImageUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static base64ToInput(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "strBase64"    # Ljava/lang/String;

    .prologue
    .line 380
    :try_start_0
    const-string/jumbo v2, "ImageUtil"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 382
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImageUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static base64ToInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p0, "base64Data"    # Ljava/lang/String;

    .prologue
    .line 355
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 356
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v4, :cond_0

    .line 357
    const-string/jumbo v6, "h5_base64ToInputStream"

    invoke-interface {v4, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 359
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToInput(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 372
    .end local v5    # "value":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 364
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 365
    .local v3, "bytes":[B
    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 367
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 369
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 371
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bytes":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    :goto_1
    :try_start_2
    const-string/jumbo v6, "ImageUtil"

    const-string/jumbo v7, "base64ToInputStream, inputStream is null"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 372
    const/4 v6, 0x0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "bytes":[B
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 371
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static bitmapToString(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, "bStream":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "jpg"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 268
    .local v3, "cf":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 270
    .local v2, "bytes":[B
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "base64":Ljava/lang/String;
    return-object v1

    .line 267
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v3    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static byteToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "icon"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v2

    .line 64
    .local v2, "img":[B
    if-eqz v2, :cond_0

    .line 65
    array-length v3, v2

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)J
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 300
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    int-to-long v2, v1

    .line 307
    :goto_0
    return-wide v2

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v2, v1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "ImageUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getDiskBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 104
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 105
    const/4 v6, 0x0

    .line 174
    :goto_0
    return-object v6

    .line 107
    :cond_0
    const-string/jumbo v14, "ImageUtil"

    const-string/jumbo v15, "getDiskBitmap begin"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v14, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 111
    const/4 v14, 0x1

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 113
    const v14, 0x8000

    new-array v14, v14, [B

    iput-object v14, v7, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 114
    const-string/jumbo v14, "ImageUtil"

    const-string/jumbo v15, "getDiskBitmap decodeFile begin"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    const-string/jumbo v14, "ImageUtil"

    const-string/jumbo v15, "getDiskBitmap decodeFile after"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 120
    .local v11, "srcWidth":I
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 123
    .local v10, "srcHeight":I
    move/from16 v0, p1

    if-gt v11, v0, :cond_1

    move/from16 v0, p2

    if-le v10, v0, :cond_2

    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 124
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 127
    :cond_3
    int-to-float v14, v11

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v8, v14, v15

    .line 128
    .local v8, "scaleX":F
    int-to-float v14, v10

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v9, v14, v15

    .line 132
    .local v9, "scaleY":F
    cmpl-float v14, v8, v9

    if-lez v14, :cond_5

    .line 133
    move/from16 v13, p1

    .line 134
    .local v13, "targetWidth":I
    int-to-float v14, v10

    div-float/2addr v14, v8

    float-to-int v12, v14

    .line 141
    .local v12, "targetHeight":I
    :goto_1
    div-int v14, v11, v13

    div-int v15, v10, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 144
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 147
    .local v4, "fs":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .local v5, "fs":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 151
    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :goto_2
    const/4 v6, 0x0

    .line 153
    .local v6, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_6

    .line 154
    :try_start_1
    const-string/jumbo v14, "ImageUtil"

    const-string/jumbo v15, "getDiskBitmap decodeFileDescriptor begin"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v14, "ImageUtil"

    const-string/jumbo v15, "getDiskBitmap decodeFileDescriptor after"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v14, 0x1

    invoke-static {v1, v13, v12, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 161
    if-eq v1, v6, :cond_4

    .line 162
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    const-string/jumbo v14, "ImageUtil"

    const-string/jumbo v15, "getDiskBitmap after"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .end local v6    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "targetHeight":I
    .end local v13    # "targetWidth":I
    :cond_5
    int-to-float v14, v11

    div-float/2addr v14, v9

    float-to-int v13, v14

    .line 137
    .restart local v13    # "targetWidth":I
    move/from16 v12, p2

    .restart local v12    # "targetHeight":I
    goto :goto_1

    .line 148
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v14, "ImageUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_6
    :try_start_2
    const-string/jumbo v14, "ImageUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "not file."

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 170
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "create bitmap exception:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getDiskBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "quality"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x0

    .line 184
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getDiskBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 204
    :goto_0
    return-object v3

    .line 190
    :cond_0
    const/16 v4, 0x32

    if-lt p3, v4, :cond_1

    if-le p3, v6, :cond_2

    .line 191
    :cond_1
    const-string/jumbo v4, "ImageUtil"

    const-string/jumbo v5, "set quality as default 75."

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 p3, 0x4b

    .line 195
    :cond_2
    if-eq p3, v6, :cond_3

    .line 196
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 197
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v4, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 198
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    invoke-static {v0, v3, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 201
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object v3, v2

    .line 204
    goto :goto_0
.end method

.method public static getExtensionFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "mimeType":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 340
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    const-string/jumbo v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    const-string/jumbo v0, "gif"

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 343
    :cond_1
    const-string/jumbo v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    const-string/jumbo v0, "png"

    goto :goto_0

    .line 345
    :cond_2
    const-string/jumbo v2, "image/jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    const-string/jumbo v0, "jpg"

    goto :goto_0

    .line 347
    :cond_3
    const-string/jumbo v2, "image/icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const-string/jumbo v0, "icon"

    goto :goto_0
.end method

.method public static getImageTempDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/h5container/image/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "base64Data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 291
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 292
    .local v1, "mOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 293
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 294
    const-string/jumbo v2, "ImageUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "--type is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v2
.end method

.method public static imageQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    const/4 v4, 0x0

    .line 80
    if-nez p0, :cond_1

    move-object p0, v4

    .line 100
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 83
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v4, 0x0

    .line 84
    .local v4, "qBitmap":Landroid/graphics/Bitmap;
    const/16 v5, 0x64

    if-ge p1, v5, :cond_0

    .line 88
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 89
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 90
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 91
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v2, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 97
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    move-object p0, v4

    .line 100
    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v5, "ImageUtil"

    const-string/jumbo v6, "exception detail"

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 97
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static loadImage(Ljava/lang/String;Lioi;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lioi;

    .prologue
    .line 392
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 393
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 395
    .local v0, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lioi;->onImage(Landroid/graphics/Bitmap;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    if-eqz v0, :cond_2

    .line 405
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ImageUtil$1;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil$1;-><init>(Lioi;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->loadImage(Ljava/lang/String;Lioi;)V

    goto :goto_0

    .line 416
    :cond_2
    const-string/jumbo v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lioj;

    new-instance v3, Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;-><init>(Lioi;)V

    invoke-direct {v2, p0, v3}, Lioj;-><init>(Ljava/lang/String;Lioi;)V

    .line 417
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # F

    .prologue
    .line 235
    if-nez p0, :cond_1

    .line 236
    const/4 v8, 0x0

    .line 257
    :cond_0
    :goto_0
    return-object v8

    .line 239
    :cond_1
    const/4 v8, 0x0

    .line 241
    .local v8, "rotatedBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 245
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 253
    :goto_1
    if-nez v8, :cond_0

    .line 254
    move-object v8, p0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v0, "ImageUtil"

    const-string/jumbo v1, "OutOfMemoryError"

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v9, 0x0

    .line 55
    :goto_0
    return-object v9

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 41
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 42
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float v10, v0, v1

    .line 43
    .local v10, "scaleX":F
    int-to-float v0, p2

    int-to-float v1, v4

    div-float v11, v0, v1

    .line 44
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 45
    .local v7, "baseScale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 47
    const/4 v9, 0x0

    .line 49
    .local v9, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 51
    :catch_0
    move-exception v8

    .line 52
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v0, "ImageUtil"

    const-string/jumbo v1, "OutOfMemoryError"

    invoke-static {v0, v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    .locals 6
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p0, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v3, 0x64

    :try_start_1
    invoke-virtual {p0, p1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "ImageUtil"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 216
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string/jumbo v3, "ImageUtil"

    const-string/jumbo v4, "exception detail."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    if-eqz v1, :cond_0

    .line 220
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 221
    :catch_2
    move-exception v0

    .line 222
    const-string/jumbo v3, "ImageUtil"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 220
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 223
    :cond_1
    :goto_3
    throw v3

    .line 221
    :catch_3
    move-exception v0

    .line 222
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v4, "ImageUtil"

    const-string/jumbo v5, "Exception"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 218
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 215
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
