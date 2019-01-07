.class public final Lalv;
.super Ljava/lang/Object;
.source "BizRequest.java"


# static fields
.field public static final a:Lalo;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static d:J

.field private static e:Z

.field private static f:Ljava/lang/Class;

.field private static g:I

.field private static final h:Ljava/lang/String;

.field private static i:Ljava/util/zip/GZIPOutputStream;

.field private static j:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lalv;->a:Lalo;

    .line 36
    sput-object v2, Lalv;->b:Ljava/lang/String;

    .line 37
    sput-object v2, Lalv;->c:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lalv;->d:J

    .line 50
    sput-boolean v3, Lalv;->e:Z

    .line 51
    sput-object v2, Lalv;->f:Ljava/lang/Class;

    .line 52
    sput v3, Lalv;->g:I

    .line 54
    const-string/jumbo v0, "\u0001"

    sput-object v0, Lalv;->h:Ljava/lang/String;

    .line 56
    sput-object v2, Lalv;->i:Ljava/util/zip/GZIPOutputStream;

    .line 57
    sput-object v2, Lalv;->j:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([B)I
    .locals 12
    .param p0, "result"    # [B

    .prologue
    const/16 v10, 0xc

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 331
    if-eqz p0, :cond_0

    array-length v8, p0

    if-ge v8, v10, :cond_5

    .line 332
    :cond_0
    const/4 v0, -0x1

    .line 333
    .local v0, "errCode":I
    const-string/jumbo v8, ""

    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "recv errCode UNKNOWN_ERROR"

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :goto_0
    const/16 v8, 0x6b

    if-ne v8, v0, :cond_1

    .line 365
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    invoke-virtual {v8, v11}, Lajw;->a(Z)V

    .line 367
    :cond_1
    const/16 v8, 0x6d

    if-ne v8, v0, :cond_2

    .line 368
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    .line 4155
    iput-boolean v11, v8, Lajw;->r:Z

    .line 370
    :cond_2
    const/16 v8, 0x73

    if-ne v8, v0, :cond_3

    .line 371
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    invoke-virtual {v8, v11}, Lajw;->c(Z)V

    .line 373
    :cond_3
    const/16 v8, 0x74

    if-ne v8, v0, :cond_4

    .line 374
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    invoke-virtual {v8, v11}, Lajw;->b(Z)V

    .line 376
    :cond_4
    const-string/jumbo v8, ""

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "errCode"

    aput-object v10, v9, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    return v0

    .line 335
    .end local v0    # "errCode":I
    :cond_5
    array-length v8, p0

    int-to-long v8, v8

    sput-wide v8, Lalv;->d:J

    .line 336
    const/4 v8, 0x3

    invoke-static {p0, v11, v8}, Lamo;->a([BII)I

    move-result v4

    .line 337
    .local v4, "len":I
    add-int/lit8 v8, v4, 0x8

    array-length v9, p0

    if-eq v8, v9, :cond_6

    .line 339
    const/4 v0, -0x1

    .line 340
    .restart local v0    # "errCode":I
    const-string/jumbo v8, ""

    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "recv len error"

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    .end local v0    # "errCode":I
    :cond_6
    const/4 v8, 0x5

    aget-byte v1, p0, v8

    .line 343
    .local v1, "flags":B
    const/4 v2, 0x0

    .line 344
    .local v2, "gzip":Z
    and-int/lit8 v8, v1, 0x1

    if-ne v11, v8, :cond_7

    .line 345
    const/4 v2, 0x1

    .line 347
    :cond_7
    const/16 v8, 0x8

    const/4 v9, 0x4

    invoke-static {p0, v8, v9}, Lamo;->a([BII)I

    move-result v0

    .line 348
    .restart local v0    # "errCode":I
    array-length v8, p0

    add-int/lit8 v8, v8, -0xc

    if-ltz v8, :cond_8

    array-length v8, p0

    add-int/lit8 v3, v8, -0xc

    .line 349
    .local v3, "leftLen":I
    :goto_1
    if-lez v3, :cond_a

    .line 350
    if-eqz v2, :cond_9

    .line 351
    new-array v5, v3, [B

    .line 352
    .local v5, "rawData":[B
    invoke-static {p0, v10, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    invoke-static {v5}, Lamq;->b([B)[B

    move-result-object v6

    .line 354
    .local v6, "unGzipData":[B
    new-instance v8, Ljava/lang/String;

    array-length v9, v6

    invoke-direct {v8, v6, v7, v9}, Ljava/lang/String;-><init>([BII)V

    sput-object v8, Lalv;->b:Ljava/lang/String;

    goto/16 :goto_0

    .end local v3    # "leftLen":I
    .end local v5    # "rawData":[B
    .end local v6    # "unGzipData":[B
    :cond_8
    move v3, v7

    .line 348
    goto :goto_1

    .line 356
    .restart local v3    # "leftLen":I
    :cond_9
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p0, v10, v3}, Ljava/lang/String;-><init>([BII)V

    sput-object v8, Lalv;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 359
    :cond_a
    const/4 v8, 0x0

    sput-object v8, Lalv;->b:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 285
    invoke-static {}, Lalv;->b()V

    .line 286
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lalv;->j:Ljava/io/ByteArrayOutputStream;

    .line 288
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    sget-object v1, Lalv;->j:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lalv;->i:Ljava/util/zip/GZIPOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(J)V
    .locals 8
    .param p0, "sendBytes"    # J

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 4305
    iget-object v0, v2, Lajw;->c:Landroid/content/Context;

    .line 384
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 385
    sget-boolean v2, Lalv;->e:Z

    if-nez v2, :cond_0

    sget-object v2, Lalv;->f:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 386
    const-string/jumbo v2, "com.taobao.analysis.FlowCenter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lalv;->f:Ljava/lang/Class;

    .line 387
    const/4 v2, 0x1

    sput-boolean v2, Lalv;->e:Z

    .line 389
    :cond_0
    sget-object v2, Lalv;->f:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 390
    sget-object v2, Lalv;->f:Ljava/lang/Class;

    const-string/jumbo v3, "getInstance"

    invoke-static {v2, v3}, Lanc;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 391
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 392
    const-string/jumbo v2, ""

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "sendBytes"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "mReceivedDataLen"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-wide v6, Lalv;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    const-string/jumbo v2, "commitFlow"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ut"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "ut"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-wide v6, Lalv;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanc;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .end local v1    # "object":Ljava/lang/Object;
    :cond_1
    const-wide/16 v2, 0x0

    sput-wide v2, Lalv;->d:J

    .line 401
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v2

    const-wide/16 v2, 0x0

    sput-wide v2, Lalv;->d:J

    goto :goto_0

    :catchall_0
    move-exception v2

    const-wide/16 v4, 0x0

    sput-wide v4, Lalv;->d:J

    throw v2
.end method

.method private static a(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 301
    if-eqz p0, :cond_0

    .line 303
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lalv;->a(Ljava/util/Map;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;I)[B
    .locals 14
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 72
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    .line 1151
    iget-boolean v8, v8, Lajw;->r:Z

    .line 72
    if-nez v8, :cond_0

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    invoke-virtual {v8}, Lajw;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    :cond_0
    invoke-static {p0}, Lalv;->c(Ljava/util/Map;)[B

    move-result-object v8

    invoke-static {v8}, Lamq;->a([B)[B

    move-result-object v5

    .line 74
    .local v5, "payload":[B
    const/4 v4, 0x1

    .line 75
    .local v4, "flags":B
    const/4 v6, 0x1

    .line 93
    .local v6, "version":B
    :goto_0
    if-nez v5, :cond_3

    move-object v1, v7

    .line 126
    :goto_1
    return-object v1

    .line 77
    .end local v4    # "flags":B
    .end local v5    # "payload":[B
    .end local v6    # "version":B
    :cond_1
    invoke-static {}, Lamb;->a()V

    .line 78
    sget-object v8, Lalv;->i:Ljava/util/zip/GZIPOutputStream;

    if-eqz v8, :cond_2

    .line 80
    sget-object v8, Lalv;->i:Ljava/util/zip/GZIPOutputStream;

    invoke-static {p0}, Lalv;->d(Ljava/util/Map;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 81
    sget-object v8, Lalv;->i:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 82
    sget-object v8, Lalv;->j:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 83
    .restart local v5    # "payload":[B
    sget-object v8, Lalv;->j:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    const/4 v4, 0x2

    .line 90
    .restart local v4    # "flags":B
    :goto_2
    const/4 v6, 0x2

    .restart local v6    # "version":B
    goto :goto_0

    .line 87
    .end local v4    # "flags":B
    .end local v5    # "payload":[B
    .end local v6    # "version":B
    :cond_2
    invoke-static {p0}, Lalv;->d(Ljava/util/Map;)[B

    move-result-object v8

    invoke-static {v8}, Lamq;->a([B)[B

    move-result-object v5

    .line 88
    .restart local v5    # "payload":[B
    const/4 v4, 0x1

    .restart local v4    # "flags":B
    goto :goto_2

    .line 95
    .restart local v6    # "version":B
    :cond_3
    array-length v8, v5

    const/high16 v9, 0x1000000

    if-lt v8, v9, :cond_5

    .line 96
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    .line 2123
    iget-boolean v8, v8, Lajw;->s:Z

    .line 96
    if-eqz v8, :cond_4

    .line 97
    sget-object v8, Lalv;->a:Lalo;

    sget v9, Laln;->k:I

    array-length v10, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v9, v10, v11}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v9

    invoke-virtual {v8, v9}, Lalo;->a(Laln;)V

    :cond_4
    move-object v1, v7

    .line 100
    goto :goto_1

    .line 103
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, "baosRequest":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    array-length v8, v5

    .line 3086
    const/4 v9, 0x3

    new-array v2, v9, [B

    .line 3087
    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v11

    .line 3088
    const/4 v9, 0x1

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 3089
    const/4 v9, 0x2

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v9

    .line 106
    .local v2, "bytelen":[B
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    or-int/lit8 v8, v4, 0x8

    int-to-byte v4, v8

    .line 109
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    invoke-virtual {v8}, Lajw;->j()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 110
    or-int/lit8 v8, v4, 0x10

    int-to-byte v4, v8

    .line 113
    :cond_6
    or-int/lit8 v8, v4, 0x20

    int-to-byte v4, v8

    .line 115
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 122
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 123
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/io/IOException;
    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "aLogContent"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x21

    .line 312
    const/16 v4, 0x22

    new-array v3, v4, [Ljava/lang/String;

    .line 313
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 314
    .local v2, "lastIndexPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 315
    const-string/jumbo v4, "||"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "findIndexPos":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 317
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 324
    .end local v0    # "findIndexPos":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 325
    return-object v3

    .line 320
    .restart local v0    # "findIndexPos":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 322
    add-int/lit8 v2, v0, 0x2

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lalv;->i:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v0}, Lalv;->a(Ljava/io/OutputStream;)V

    .line 297
    sget-object v0, Lalv;->j:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lalv;->a(Ljava/io/OutputStream;)V

    .line 298
    return-void
.end method

.method static b(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lalv;->a(Ljava/util/Map;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 15

    .prologue
    .line 214
    invoke-static {}, Laml;->b()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "appkey":Ljava/lang/String;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v10

    .line 3305
    iget-object v5, v10, Lajw;->c:Landroid/content/Context;

    .line 217
    .local v5, "context":Landroid/content/Context;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v10

    invoke-virtual {v10}, Lajw;->e()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "appVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 219
    const-string/jumbo v0, ""

    .line 222
    :cond_0
    const-string/jumbo v1, ""

    .line 223
    .local v1, "appVersionSys":Ljava/lang/String;
    invoke-static {v5}, Lamp;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 224
    .local v6, "deviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 225
    sget-object v10, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v10}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "appVersionSys":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 226
    .restart local v1    # "appVersionSys":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 227
    const-string/jumbo v1, ""

    .line 231
    :cond_1
    invoke-static {}, Laml;->a()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "channel":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 233
    const-string/jumbo v4, ""

    .line 235
    :cond_2
    const-string/jumbo v9, ""

    .line 236
    .local v9, "utdid":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 237
    sget-object v10, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v10}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "utdid":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 239
    .restart local v9    # "utdid":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "sdkVersion":Ljava/lang/String;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v10

    invoke-virtual {v10}, Lajw;->j()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 243
    const-string/jumbo v10, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s&dk=%s"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    const/4 v12, 0x4

    aput-object v9, v11, v12

    const/4 v12, 0x5

    aput-object v8, v11, v12

    const/4 v12, 0x6

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v13

    invoke-virtual {v13}, Lajw;->i()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "head":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v10

    invoke-virtual {v10}, Lajw;->b()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 252
    sget v10, Lalv;->g:I

    if-nez v10, :cond_4

    .line 253
    invoke-static {}, Lanj;->a()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lalv;->c:Ljava/lang/String;

    .line 255
    :cond_4
    sget v10, Lalv;->g:I

    add-int/lit8 v10, v10, 0x1

    .line 256
    sput v10, Lalv;->g:I

    const/16 v11, 0x32

    if-le v10, v11, :cond_5

    .line 257
    const/4 v10, 0x0

    sput v10, Lalv;->g:I

    .line 262
    :cond_5
    :goto_1
    sget-object v10, Lalv;->c:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 263
    const-string/jumbo v10, "&wua="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lalv;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_6
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ut_sample="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "ut_sample"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "utap_system="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "utap_system"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ap_stat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "ap_stat"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ap_alarm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "ap_alarm"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ap_counter="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "ap_counter"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ut_bussiness="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "ut_bussiness"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo v10, "&_"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ut_realtime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lakm;->a()Lakm;

    const-string/jumbo v11, "ut_realtime"

    invoke-static {v11}, Lakm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    const-string/jumbo v10, "PostData"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "send url :"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    return-object v7

    .line 245
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "head":Ljava/lang/String;
    :cond_7
    const-string/jumbo v10, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    const/4 v12, 0x4

    aput-object v9, v11, v12

    const/4 v12, 0x5

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "head":Ljava/lang/String;
    goto/16 :goto_0

    .line 260
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {}, Lamb;->b()V

    goto/16 :goto_1
.end method

.method private static c(Ljava/util/Map;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 130
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    .local v0, "baosPayload":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lalv;->c()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "head":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Lamo;->a(I)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 140
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    .local v7, "key":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 142
    .local v3, "eventId":I
    invoke-static {v3}, Lamo;->b(I)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 143
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    .local v4, "eventLogs":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v8, v10

    .line 146
    .local v8, "logLength":I
    invoke-static {v8}, Lamo;->b(I)[B

    move-result-object v9

    .line 147
    .local v9, "logLengthByte":[B
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 136
    .end local v3    # "eventId":I
    .end local v4    # "eventLogs":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "logLength":I
    .end local v9    # "logLengthByte":[B
    :cond_0
    invoke-static {v11}, Lamo;->a(I)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 150
    .restart local v3    # "eventId":I
    .restart local v4    # "eventLogs":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {v11}, Lamo;->b(I)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 155
    .end local v3    # "eventId":I
    .end local v4    # "eventLogs":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 157
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_2
    return-object v1

    .line 158
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static d(Ljava/util/Map;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 167
    .local v4, "baosPayload":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lalv;->c()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lank;->a(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 169
    if-eqz p0, :cond_5

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 170
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v3, "baosLogs":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 172
    .local v14, "key":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 173
    .local v7, "eventId":I
    invoke-static {v7}, Lank;->a(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 174
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 175
    .local v8, "eventLogs":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 176
    sget-object v18, Lalv;->h:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 177
    .local v17, "logs":[Ljava/lang/String;
    move-object/from16 v1, v17

    .local v1, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v15, v0

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v13, v12

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_2

    aget-object v16, v1, v13

    .line 178
    .local v16, "log":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 179
    invoke-static/range {v16 .. v16}, Lalv;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "fields":[Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 181
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    const/4 v12, 0x0

    .end local v13    # "i$":I
    .restart local v12    # "i$":I
    :goto_2
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ge v12, v0, :cond_0

    aget-object v9, v2, v12

    .line 182
    .local v9, "field":Ljava/lang/String;
    invoke-static {v9}, Lank;->b(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 184
    .end local v9    # "field":Ljava/lang/String;
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v10    # "fields":[Ljava/lang/String;
    .end local v12    # "i$":I
    :cond_1
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_1

    .line 188
    .end local v16    # "log":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lank;->a(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 190
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0

    .line 192
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "logs":[Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 196
    .end local v7    # "eventId":I
    .end local v8    # "eventLogs":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v3    # "baosLogs":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 205
    .local v5, "buf":[B
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :goto_4
    return-object v5

    .line 197
    .end local v5    # "buf":[B
    .restart local v3    # "baosLogs":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    .line 199
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 206
    .end local v3    # "baosLogs":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "buf":[B
    :catch_1
    move-exception v6

    .line 208
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
