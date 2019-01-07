.class public final Lixh;
.super Ljava/lang/Object;
.source "libwebp.java"


# static fields
.field static a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 33
    :try_start_0
    const-class v2, Landroid/graphics/Bitmap;

    const-string/jumbo v3, "mBuffer"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lixh;->a:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v2, "webp"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 47
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e1":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v1    # "e1":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e1":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v1    # "e1":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PhotoKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Error;
    const-string/jumbo v2, "PhotoKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BJ[I[I[I)I
    .locals 1
    .param p0, "paramArrayOfByte"    # [B
    .param p1, "paramLong"    # J
    .param p3, "paramArrayOfInt1"    # [I
    .param p4, "paramArrayOfInt2"    # [I
    .param p5, "paramArrayOfInt3"    # [I

    .prologue
    .line 60
    invoke-static/range {p0 .. p5}, Lcom/google/webp/libwebpJNI;->WebPGetFeatures([BJ[I[I[I)I

    move-result v0

    return v0
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 101
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    new-array v4, v1, [I

    aput v7, v4, v7

    .line 105
    .local v4, "width":[I
    new-array v5, v1, [I

    aput v7, v5, v7

    .line 106
    .local v5, "height":[I
    new-array v6, v1, [I

    aput v7, v6, v7

    .line 107
    .local v6, "hasAlpha":[I
    array-length v1, p0

    int-to-long v2, v1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lixh;->a([BJ[I[I[I)I

    .line 109
    aget v1, v4, v7

    if-lez v1, :cond_0

    aget v1, v5, v7

    if-lez v1, :cond_0

    .line 114
    aget v1, v6, v7

    if-nez v1, :cond_3

    .line 115
    aget v1, v4, v7

    aget v2, v5, v7

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lixh;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    .line 117
    .local v12, "buffer":[B
    if-nez v12, :cond_2

    .line 118
    aget v1, v4, v7

    aget v2, v5, v7

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v12, v1, [B

    .line 119
    array-length v1, p0

    int-to-long v8, v1

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/webp/libwebpJNI;->WebPDecodeRGB565Fast([BJ[I[I[B)I

    .line 121
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 123
    :cond_2
    array-length v1, p0

    int-to-long v8, v1

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/webp/libwebpJNI;->WebPDecodeRGB565Fast([BJ[I[I[B)I

    goto :goto_0

    .line 128
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "buffer":[B
    :cond_3
    aget v1, v4, v7

    aget v2, v5, v7

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lixh;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    .line 130
    .restart local v12    # "buffer":[B
    if-nez v12, :cond_4

    .line 131
    aget v1, v4, v7

    aget v2, v5, v7

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    new-array v12, v1, [B

    .line 132
    array-length v1, p0

    int-to-long v8, v1

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/webp/libwebpJNI;->WebPDecodeARGBFast([BJ[I[I[B)I

    .line 134
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 136
    :cond_4
    array-length v1, p0

    int-to-long v8, v1

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/webp/libwebpJNI;->WebPDecodeARGBFast([BJ[I[I[B)I

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/google/webp/libwebpJNI;->testLibraryLoaded()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 180
    :try_start_0
    sget-object v1, Lixh;->a:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 186
    :goto_0
    return-object v1

    .line 182
    :cond_0
    sget-object v1, Lixh;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WebpBitmap"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 186
    goto :goto_0
.end method

.method public static b([B)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-array v4, v1, [I

    aput v7, v4, v7

    .line 158
    .local v4, "width":[I
    new-array v5, v1, [I

    aput v7, v5, v7

    .line 159
    .local v5, "height":[I
    new-array v6, v1, [I

    aput v7, v6, v7

    .line 160
    .local v6, "hasAlpha":[I
    array-length v1, p0

    int-to-long v2, v1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lixh;->a([BJ[I[I[I)I

    .line 163
    aget v1, v4, v7

    aget v2, v5, v7

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lixh;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    .line 165
    .local v12, "buffer":[B
    if-nez v12, :cond_1

    .line 166
    aget v1, v4, v7

    aget v2, v5, v7

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    new-array v12, v1, [B

    .line 167
    array-length v1, p0

    int-to-long v8, v1

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/webp/libwebpJNI;->WebPDecodeARGBFast([BJ[I[I[B)I

    .line 169
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 171
    :cond_1
    array-length v1, p0

    int-to-long v8, v1

    move-object v7, p0

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/google/webp/libwebpJNI;->WebPDecodeARGBFast([BJ[I[I[B)I

    goto :goto_0
.end method
