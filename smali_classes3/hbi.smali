.class public final Lhbi;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 204
    const-string/jumbo v1, "RIFF"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->a:[B

    .line 205
    const-string/jumbo v1, "WEBP"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->b:[B

    .line 210
    const-string/jumbo v1, "VP8 "

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->c:[B

    .line 211
    const-string/jumbo v1, "VP8L"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->d:[B

    .line 212
    const-string/jumbo v1, "VP8X"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->e:[B

    .line 295
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    sput-object v1, Lhbi;->f:[B

    .line 317
    new-array v1, v6, [B

    fill-array-data v1, :array_1

    sput-object v1, Lhbi;->g:[B

    .line 340
    const-string/jumbo v1, "GIF87a"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->h:[B

    .line 341
    const-string/jumbo v1, "GIF89a"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->i:[B

    .line 363
    const-string/jumbo v1, "BM"

    invoke-static {v1}, Lhbi;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lhbi;->j:[B

    .line 388
    new-array v2, v4, [I

    const/16 v1, 0x15

    aput v1, v2, v5

    const/16 v1, 0x14

    aput v1, v2, v0

    const/4 v1, 0x2

    aput v3, v2, v1

    aput v6, v2, v3

    const/4 v1, 0x4

    aput v4, v2, v1

    const/4 v1, 0x5

    sget-object v3, Lhbi;->j:[B

    array-length v3, v3

    aput v3, v2, v1

    .line 4041
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 4042
    aget v1, v2, v5

    move v7, v0

    move v0, v1

    move v1, v7

    .line 4043
    :goto_0
    if-ge v1, v4, :cond_1

    .line 4044
    aget v3, v2, v1

    if-le v3, v0, :cond_0

    .line 4045
    aget v0, v2, v1

    .line 4043
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_1
    sput v0, Lhbi;->k:I

    return-void

    .line 295
    .line 317
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;[B)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "imageHeaderBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    array-length v0, p1

    sget v2, Lhbi;->k:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    sget v0, Lhbi;->k:I

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 88
    const/4 v0, 0x0

    sget v1, Lhbi;->k:I

    invoke-static {p0, p1, v0, v1}, Lhab;->a(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 90
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 93
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0

    .line 93
    :cond_1
    sget v0, Lhbi;->k:I

    invoke-static {p0, p1, v1, v0}, Lhab;->a(Ljava/io/InputStream;[BII)I

    move-result v0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget v4, Lhbi;->k:I

    new-array v1, v4, [B

    .line 110
    .local v1, "imageHeaderBytes":[B
    invoke-static {p0, v1}, Lhbi;->a(Ljava/io/InputStream;[B)I

    move-result v0

    .line 1040
    .local v0, "headerSize":I
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    invoke-static {v1, v0}, Lhbi;->a([BI)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1269
    invoke-static {v1, v0}, Lhbi;->a([BI)Z

    move-result v4

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 2227
    sget-object v4, Lhbi;->c:[B

    invoke-static {v1, v7, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    .line 1270
    if-eqz v4, :cond_0

    .line 1271
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 1059
    :goto_0
    return-object v2

    .line 2231
    :cond_0
    sget-object v4, Lhbi;->d:[B

    invoke-static {v1, v7, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    .line 1274
    if-eqz v4, :cond_1

    .line 1275
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto :goto_0

    .line 2245
    :cond_1
    const/16 v4, 0x15

    if-lt v0, v4, :cond_2

    sget-object v4, Lhbi;->e:[B

    .line 2246
    invoke-static {v1, v7, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    .line 1278
    :goto_1
    if-eqz v4, :cond_9

    .line 3220
    sget-object v4, Lhbi;->e:[B

    invoke-static {v1, v7, v4}, Lhbi;->a([BI[B)Z

    move-result v5

    .line 3222
    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    move v4, v3

    .line 3223
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v4, v3

    .line 1279
    :goto_3
    if-eqz v4, :cond_5

    .line 1280
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto :goto_0

    :cond_2
    move v4, v2

    .line 2246
    goto :goto_1

    :cond_3
    move v4, v2

    .line 3222
    goto :goto_2

    :cond_4
    move v4, v2

    .line 3223
    goto :goto_3

    .line 3235
    :cond_5
    sget-object v4, Lhbi;->e:[B

    invoke-static {v1, v7, v4}, Lhbi;->a([BI[B)Z

    move-result v5

    .line 3237
    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_6

    move v4, v3

    .line 3238
    :goto_4
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 1282
    :goto_5
    if-eqz v3, :cond_8

    .line 1283
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto :goto_0

    :cond_6
    move v4, v2

    .line 3237
    goto :goto_4

    :cond_7
    move v3, v2

    .line 3238
    goto :goto_5

    .line 1285
    :cond_8
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto :goto_0

    .line 1288
    :cond_9
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->UNKNOWN:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto :goto_0

    .line 3309
    :cond_a
    const/4 v4, 0x3

    if-lt v0, v4, :cond_b

    sget-object v4, Lhbi;->f:[B

    invoke-static {v1, v2, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v3

    .line 1046
    :goto_6
    if-eqz v4, :cond_c

    .line 1047
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto :goto_0

    :cond_b
    move v4, v2

    .line 3309
    goto :goto_6

    .line 3332
    :cond_c
    const/16 v4, 0x8

    if-lt v0, v4, :cond_d

    sget-object v4, Lhbi;->g:[B

    invoke-static {v1, v2, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v3

    .line 1050
    :goto_7
    if-eqz v4, :cond_e

    .line 1051
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->PNG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto/16 :goto_0

    :cond_d
    move v4, v2

    .line 3332
    goto :goto_7

    .line 3353
    :cond_e
    const/4 v4, 0x6

    if-lt v0, v4, :cond_10

    .line 3356
    sget-object v4, Lhbi;->h:[B

    invoke-static {v1, v2, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lhbi;->i:[B

    .line 3357
    invoke-static {v1, v2, v4}, Lhbi;->a([BI[B)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1054
    :cond_f
    :goto_8
    if-eqz v3, :cond_11

    .line 1055
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->GIF:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto/16 :goto_0

    :cond_10
    move v3, v2

    .line 3357
    goto :goto_8

    .line 3374
    :cond_11
    sget-object v3, Lhbi;->j:[B

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 1058
    :goto_9
    if-eqz v2, :cond_13

    .line 1059
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->BMP:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto/16 :goto_0

    .line 3377
    :cond_12
    sget-object v3, Lhbi;->j:[B

    invoke-static {v1, v2, v3}, Lhbi;->a([BI[B)Z

    move-result v2

    goto :goto_9

    .line 1062
    :cond_13
    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->UNKNOWN:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    goto/16 :goto_0
.end method

.method private static a([BI)Z
    .locals 3
    .param p0, "imageHeaderBytes"    # [B
    .param p1, "headerSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/16 v1, 0x14

    if-lt p1, v1, :cond_0

    sget-object v1, Lhbi;->a:[B

    .line 261
    invoke-static {p0, v0, v1}, Lhbi;->a([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    sget-object v2, Lhbi;->b:[B

    .line 262
    invoke-static {p0, v1, v2}, Lhbi;->a([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static a([BI[B)Z
    .locals 5
    .param p0, "byteArray"    # [B
    .param p1, "offset"    # I
    .param p2, "pattern"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    if-ltz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 160
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v4, p0

    if-le v1, v4, :cond_2

    .line 170
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v3

    .line 159
    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 165
    add-int v1, v0, p1

    aget-byte v1, p0, v1

    aget-byte v4, p2, v0

    if-ne v1, v4, :cond_0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 170
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :try_start_0
    const-string/jumbo v1, "ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ASCII not found!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/InputStream;)Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    invoke-static {p0}, Lhbi;->a(Ljava/io/InputStream;)Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/alibaba/doraemon/image/utils/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
