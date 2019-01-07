.class public Lcom/alipay/mobile/security/bio/utils/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2BytesEx(Landroid/graphics/Bitmap;)[B
    .locals 9
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 70
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 71
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 72
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1089
    array-length v0, v1

    .line 1091
    mul-int v4, v3, v7

    mul-int/lit8 v4, v4, 0x4

    new-array v8, v4, [B

    .line 1095
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_1

    .line 1097
    sub-int v0, v4, v3

    add-int/lit8 v0, v0, 0x1

    .line 1098
    :goto_1
    if-gt v0, v4, :cond_0

    .line 1099
    aget v5, v1, v0

    shr-int/lit8 v5, v5, 0x0

    int-to-byte v5, v5

    aput-byte v5, v8, v2

    .line 1100
    add-int/lit8 v5, v2, 0x1

    aget v6, v1, v0

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v8, v5

    .line 1101
    add-int/lit8 v5, v2, 0x2

    aget v6, v1, v0

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v8, v5

    .line 1102
    add-int/lit8 v5, v2, 0x3

    aget v6, v1, v0

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v8, v5

    .line 1103
    add-int/lit8 v2, v2, 0x4

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1095
    :cond_0
    sub-int v0, v4, v3

    move v4, v0

    goto :goto_0

    .line 76
    .local v8, "rgb":[B
    :cond_1
    return-object v8
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 19
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compress(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "newBmp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 142
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 144
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 146
    .local v8, "scaleWidth":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 149
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 151
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "scaleWidth":F
    :cond_0
    return-object v7
.end method

.method public static compress(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "newBmp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 119
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 121
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 122
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 124
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 127
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 130
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "scaleHeight":F
    .end local v9    # "scaleWidth":F
    :cond_0
    return-object v7
.end method

.method public static getBitmap([BII)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "fullFace"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    .line 178
    :cond_0
    array-length v7, p0

    div-int/lit8 v4, v7, 0x3

    .line 179
    .local v4, "nrOfPixels":I
    new-array v5, v4, [I

    .line 180
    .local v5, "pixels":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 181
    mul-int/lit8 v7, v3, 0x3

    aget-byte v6, p0, v7

    .line 182
    .local v6, "r":I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, p0, v7

    .line 183
    .local v2, "g":I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v0, p0, v7

    .line 184
    .local v0, "b":I
    if-gez v6, :cond_1

    add-int/lit16 v6, v6, 0x100

    .line 185
    :cond_1
    if-gez v2, :cond_2

    add-int/lit16 v2, v2, 0x100

    .line 186
    :cond_2
    if-gez v0, :cond_3

    add-int/lit16 v0, v0, 0x100

    .line 187
    :cond_3
    invoke-static {v6, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v5, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "b":I
    .end local v2    # "g":I
    .end local v6    # "r":I
    :cond_4
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getYUVBitmap([BII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "fullFace"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v10, 0x0

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 198
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 203
    :try_start_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 204
    .local v9, "imageByte":[B
    const/4 v1, 0x0

    array-length v2, v9

    invoke-static {v9, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 210
    .end local v9    # "imageByte":[B
    :goto_0
    return-object v7

    .line 205
    :catch_0
    move-exception v8

    .line 206
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 208
    .local v8, "error":Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getYUVBitmap([BIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "fullFace"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "press"    # I

    .prologue
    const/4 v10, 0x0

    .line 214
    const/4 v7, 0x0

    .line 215
    .local v7, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 216
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, p3, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 218
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 220
    .local v9, "imageByte":[B
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v9

    invoke-static {v9, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 224
    :goto_0
    return-object v7

    .line 221
    :catch_0
    move-exception v8

    .line 222
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x1

    .line 28
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 30
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 34
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 40
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    const-string/jumbo v0, "recycled"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static reverseBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "flag"    # I

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 335
    packed-switch p1, :pswitch_data_0

    .line 341
    new-array v7, v0, [F

    fill-array-data v7, :array_0

    .line 346
    .local v7, "floats":[F
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 348
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 337
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "floats":[F
    :pswitch_0
    new-array v7, v0, [F

    fill-array-data v7, :array_1

    .line 338
    .restart local v7    # "floats":[F
    goto :goto_0

    .line 335
    .line 341
    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static rotateYUV420Degree270([BII)[B
    .locals 12
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 292
    mul-int v7, p1, p2

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 294
    .local v6, "yuv":[B
    const/4 v5, 0x0

    .line 295
    .local v5, "wh":I
    const/4 v4, 0x0

    .line 296
    .local v4, "uvHeight":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 299
    :cond_0
    mul-int v5, p1, p2

    .line 300
    shr-int/lit8 v4, p2, 0x1

    .line 303
    :cond_1
    const/4 v2, 0x0

    .line 304
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, "nPos":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 307
    add-int v7, v3, v0

    aget-byte v7, p0, v7

    aput-byte v7, v6, v2

    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 309
    add-int/2addr v3, p1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "j":I
    .end local v3    # "nPos":I
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    .line 313
    move v3, v5

    .line 314
    .restart local v3    # "nPos":I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v4, :cond_4

    .line 315
    add-int v7, v3, v0

    aget-byte v7, p0, v7

    aput-byte v7, v6, v2

    .line 316
    add-int/lit8 v7, v2, 0x1

    add-int v8, v3, v0

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    aput-byte v8, v6, v7

    .line 317
    add-int/lit8 v2, v2, 0x2

    .line 318
    add-int/2addr v3, p1

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 312
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1274
    .end local v1    # "j":I
    .end local v3    # "nPos":I
    :cond_5
    mul-int v7, p1, p2

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v9, v7, [B

    .line 1276
    const/4 v7, 0x0

    .line 1277
    mul-int v8, p1, p2

    add-int/lit8 v8, v8, -0x1

    :goto_4
    if-ltz v8, :cond_6

    .line 1278
    aget-byte v10, v6, v8

    aput-byte v10, v9, v7

    .line 1279
    add-int/lit8 v7, v7, 0x1

    .line 1277
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 1282
    :cond_6
    mul-int v8, p1, p2

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    :goto_5
    mul-int v10, p1, p2

    if-lt v8, v10, :cond_7

    .line 1284
    add-int/lit8 v10, v7, 0x1

    add-int/lit8 v11, v8, -0x1

    aget-byte v11, v6, v11

    aput-byte v11, v9, v7

    .line 1285
    add-int/lit8 v7, v10, 0x1

    aget-byte v11, v6, v8

    aput-byte v11, v9, v10

    .line 1283
    add-int/lit8 v8, v8, -0x2

    goto :goto_5

    .line 321
    :cond_7
    return-object v9
.end method

.method public static rotateYUVImage([BIIII)[B
    .locals 10
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I
    .param p4, "rate"    # I

    .prologue
    const/4 v8, 0x0

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "convertedData":[B
    const/16 v2, 0x5a

    if-ne p3, v2, :cond_2

    .line 231
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->rotateYUV420Degree270([BII)[B

    move-result-object v1

    .line 237
    :cond_0
    :goto_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v7, "jpeg":Ljava/io/ByteArrayOutputStream;
    if-eqz v1, :cond_1

    .line 239
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 240
    .local v0, "yuv":Landroid/graphics/YuvImage;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, p4, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 243
    .end local v0    # "yuv":Landroid/graphics/YuvImage;
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 232
    .end local v7    # "jpeg":Ljava/io/ByteArrayOutputStream;
    :cond_2
    const/16 v2, 0x10e

    if-ne p3, v2, :cond_0

    .line 1251
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    .end local v1    # "convertedData":[B
    move v4, v8

    move v3, v8

    .line 1254
    :goto_2
    if-ge v4, p1, :cond_4

    .line 1255
    add-int/lit8 v2, p2, -0x1

    :goto_3
    if-ltz v2, :cond_3

    .line 1256
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    aget-byte v5, p0, v5

    aput-byte v5, v1, v3

    .line 1257
    add-int/lit8 v3, v3, 0x1

    .line 1255
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1254
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 1261
    :cond_4
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, -0x1

    .line 1262
    add-int/lit8 v2, p1, -0x1

    move v4, v2

    move v2, v3

    :goto_4
    if-lez v4, :cond_6

    move v3, v2

    move v2, v8

    .line 1263
    :goto_5
    div-int/lit8 v5, p2, 0x2

    if-ge v2, v5, :cond_5

    .line 1264
    mul-int v5, p1, p2

    mul-int v9, v2, p1

    add-int/2addr v5, v9

    add-int/2addr v5, v4

    aget-byte v5, p0, v5

    aput-byte v5, v1, v3

    .line 1265
    add-int/lit8 v3, v3, -0x1

    .line 1266
    mul-int v5, p1, p2

    mul-int v9, v2, p1

    add-int/2addr v5, v9

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v5, v9

    aget-byte v5, p0, v5

    aput-byte v5, v1, v3

    .line 1267
    add-int/lit8 v3, v3, -0x1

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1262
    :cond_5
    add-int/lit8 v2, v4, -0x2

    move v4, v2

    move v2, v3

    goto :goto_4

    .line 233
    .restart local v1    # "convertedData":[B
    :cond_6
    goto/16 :goto_0

    .line 244
    .restart local v7    # "jpeg":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    .line 245
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 46
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 47
    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 49
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 50
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 51
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 52
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method
