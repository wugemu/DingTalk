.class public final Lkoz;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final a:[B

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Lkoz;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lkoz;->a:[B

    .line 40
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lkoz;->b:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lkoz;->c:[Ljava/lang/String;

    .line 45
    new-instance v0, Lkoz;

    invoke-direct {v0}, Lkoz;-><init>()V

    sput-object v0, Lkoz;->d:Lkoz;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lkoz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lkoz;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .locals 21
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .prologue
    .line 198
    const/4 v13, 0x0

    .line 199
    .local v13, "low":I
    move-object/from16 v0, p0

    array-length v10, v0

    .line 200
    .local v10, "high":I
    const/4 v14, 0x0

    .line 201
    .local v14, "match":Ljava/lang/String;
    :goto_0
    if-ge v13, v10, :cond_a

    .line 202
    add-int v19, v13, v10

    div-int/lit8 v15, v19, 0x2

    .line 205
    .local v15, "mid":I
    :goto_1
    if-ltz v15, :cond_0

    aget-byte v19, p0, v15

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 206
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 208
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 211
    const/4 v8, 0x1

    .line 212
    .local v8, "end":I
    :goto_2
    add-int v19, v15, v8

    aget-byte v19, p0, v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 215
    :cond_1
    add-int v19, v15, v8

    sub-int v18, v19, v15

    .line 220
    .local v18, "publicSuffixLength":I
    move/from16 v7, p2

    .line 221
    .local v7, "currentLabelIndex":I
    const/4 v6, 0x0

    .line 222
    .local v6, "currentLabelByteIndex":I
    const/16 v16, 0x0

    .line 224
    .local v16, "publicSuffixByteIndex":I
    const/4 v9, 0x0

    .line 227
    .local v9, "expectDot":Z
    :cond_2
    :goto_3
    if-eqz v9, :cond_3

    .line 228
    const/16 v3, 0x2e

    .line 229
    .local v3, "byte0":I
    const/4 v9, 0x0

    .line 234
    :goto_4
    add-int v19, v15, v16

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 236
    .local v4, "byte1":I
    sub-int v5, v3, v4

    .line 237
    .local v5, "compareResult":I
    if-nez v5, :cond_4

    .line 239
    add-int/lit8 v16, v16, 0x1

    .line 240
    add-int/lit8 v6, v6, 0x1

    .line 241
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 243
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_2

    .line 246
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_4

    .line 249
    add-int/lit8 v7, v7, 0x1

    .line 250
    const/4 v6, -0x1

    .line 251
    const/4 v9, 0x1

    goto :goto_3

    .line 231
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    :cond_3
    aget-object v19, p1, v7

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    .restart local v3    # "byte0":I
    goto :goto_4

    .line 256
    .restart local v4    # "byte1":I
    .restart local v5    # "compareResult":I
    :cond_4
    if-gez v5, :cond_5

    .line 257
    add-int/lit8 v10, v15, -0x1

    goto :goto_0

    .line 258
    :cond_5
    if-lez v5, :cond_6

    .line 259
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    .line 262
    :cond_6
    sub-int v17, v18, v16

    .line 263
    .local v17, "publicSuffixBytesLeft":I
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v12, v19, v6

    .line 264
    .local v12, "labelBytesLeft":I
    add-int/lit8 v11, v7, 0x1

    .local v11, "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 265
    aget-object v19, p1, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 264
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 268
    :cond_7
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 269
    add-int/lit8 v10, v15, -0x1

    goto/16 :goto_0

    .line 270
    :cond_8
    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 271
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    .line 274
    :cond_9
    new-instance v14, Ljava/lang/String;

    .end local v14    # "match":Ljava/lang/String;
    sget-object v19, Lknj;->e:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 279
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    .end local v6    # "currentLabelByteIndex":I
    .end local v7    # "currentLabelIndex":I
    .end local v8    # "end":I
    .end local v9    # "expectDot":Z
    .end local v11    # "i":I
    .end local v12    # "labelBytesLeft":I
    .end local v15    # "mid":I
    .end local v16    # "publicSuffixByteIndex":I
    .end local v17    # "publicSuffixBytesLeft":I
    .end local v18    # "publicSuffixLength":I
    .restart local v14    # "match":Ljava/lang/String;
    :cond_a
    return-object v14
.end method

.method public static a()Lkoz;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lkoz;->d:Lkoz;

    return-object v0
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .param p1, "domainLabels"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1288
    const/4 v11, 0x0

    move v12, v11

    .line 1292
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lkoz;->b()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1302
    if-eqz v12, :cond_0

    .line 1303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    .line 121
    :cond_0
    :goto_1
    monitor-enter p0

    .line 122
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->g:[B

    if-nez v11, :cond_3

    .line 123
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 126
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 1295
    :catch_0
    move-exception v11

    const/4 v11, 0x1

    move v12, v11

    .line 1299
    goto :goto_0

    .line 1296
    :catch_1
    move-exception v11

    .line 1297
    :try_start_2
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v13

    const/4 v14, 0x5

    const-string/jumbo v15, "Failed to read public suffix list"

    invoke-virtual {v13, v14, v15, v11}, Lkoy;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1302
    if-eqz v12, :cond_0

    .line 1303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1302
    :catchall_1
    move-exception v11

    if-eqz v12, :cond_1

    .line 1303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v11

    .line 115
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 117
    :catch_2
    move-exception v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 126
    :cond_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    move-object/from16 v0, p1

    array-length v11, v0

    new-array v1, v11, [[B

    .line 130
    .local v1, "domainLabelsUtf8Bytes":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v5, v11, :cond_4

    .line 131
    aget-object v11, p1, v5

    sget-object v12, Lknj;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    aput-object v11, v1, v5

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 136
    :cond_4
    const/4 v2, 0x0

    .line 137
    .local v2, "exactMatch":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_3
    array-length v11, v1

    if-ge v5, v11, :cond_5

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->g:[B

    invoke-static {v11, v1, v5}, Lkoz;->a([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "rule":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 140
    move-object v2, v8

    .line 150
    .end local v8    # "rule":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    .line 151
    .local v9, "wildcardMatch":Ljava/lang/String;
    array-length v11, v1

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 152
    invoke-virtual {v1}, [[B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    .line 153
    .local v7, "labelsWithWildcard":[[B
    const/4 v6, 0x0

    .local v6, "labelIndex":I
    :goto_4
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_6

    .line 154
    sget-object v11, Lkoz;->a:[B

    aput-object v11, v7, v6

    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->g:[B

    invoke-static {v11, v7, v6}, Lkoz;->a([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 156
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 157
    move-object v9, v8

    .line 164
    .end local v6    # "labelIndex":I
    .end local v7    # "labelsWithWildcard":[[B
    .end local v8    # "rule":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .line 165
    .local v4, "exception":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 166
    const/4 v6, 0x0

    .restart local v6    # "labelIndex":I
    :goto_5
    array-length v11, v1

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lkoz;->h:[B

    invoke-static {v11, v1, v6}, Lkoz;->a([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 169
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 170
    move-object v4, v8

    .line 176
    .end local v6    # "labelIndex":I
    .end local v8    # "rule":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_c

    .line 178
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "!"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string/jumbo v11, "\\."

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 193
    :cond_8
    :goto_6
    return-object v3

    .line 137
    .end local v4    # "exception":Ljava/lang/String;
    .end local v9    # "wildcardMatch":Ljava/lang/String;
    .restart local v8    # "rule":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 153
    .restart local v6    # "labelIndex":I
    .restart local v7    # "labelsWithWildcard":[[B
    .restart local v9    # "wildcardMatch":Ljava/lang/String;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 166
    .end local v7    # "labelsWithWildcard":[[B
    .restart local v4    # "exception":Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 180
    .end local v6    # "labelIndex":I
    .end local v8    # "rule":Ljava/lang/String;
    :cond_c
    if-nez v2, :cond_d

    if-nez v9, :cond_d

    .line 181
    sget-object v3, Lkoz;->c:[Ljava/lang/String;

    goto :goto_6

    .line 184
    :cond_d
    if-eqz v2, :cond_e

    .line 185
    const-string/jumbo v11, "\\."

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "exactRuleLabels":[Ljava/lang/String;
    :goto_7
    if-eqz v9, :cond_f

    .line 189
    const-string/jumbo v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "wildcardRuleLabels":[Ljava/lang/String;
    :goto_8
    array-length v11, v3

    array-length v12, v10

    if-gt v11, v12, :cond_8

    move-object v3, v10

    goto :goto_6

    .line 186
    .end local v3    # "exactRuleLabels":[Ljava/lang/String;
    .end local v10    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_e
    sget-object v3, Lkoz;->b:[Ljava/lang/String;

    goto :goto_7

    .line 190
    .restart local v3    # "exactRuleLabels":[Ljava/lang/String;
    :cond_f
    sget-object v10, Lkoz;->b:[Ljava/lang/String;

    goto :goto_8
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 312
    const-class v6, Lkoz;

    const-string/jumbo v7, "publicsuffixes.gz"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 313
    .local v3, "resource":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 334
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v6, Lokio/GzipSource;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v7

    invoke-direct {v6, v7}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 317
    .local v0, "bufferedSource":Lokio/BufferedSource;
    :try_start_0
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 318
    .local v4, "totalBytes":I
    new-array v2, v4, [B

    .line 319
    .local v2, "publicSuffixListBytes":[B
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V

    .line 321
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 322
    .local v5, "totalExceptionBytes":I
    new-array v1, v5, [B

    .line 323
    .local v1, "publicSuffixExceptionListBytes":[B
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {v0}, Lknj;->a(Ljava/io/Closeable;)V

    .line 328
    monitor-enter p0

    .line 329
    :try_start_1
    iput-object v2, p0, Lkoz;->g:[B

    .line 330
    iput-object v1, p0, Lkoz;->h:[B

    .line 331
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    iget-object v6, p0, Lkoz;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 325
    .end local v1    # "publicSuffixExceptionListBytes":[B
    .end local v2    # "publicSuffixListBytes":[B
    .end local v4    # "totalBytes":I
    .end local v5    # "totalExceptionBytes":I
    :catchall_0
    move-exception v6

    invoke-static {v0}, Lknj;->a(Ljava/io/Closeable;)V

    throw v6

    .line 331
    .restart local v1    # "publicSuffixExceptionListBytes":[B
    .restart local v2    # "publicSuffixListBytes":[B
    .restart local v4    # "totalBytes":I
    .restart local v5    # "totalExceptionBytes":I
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 80
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "domain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_0
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "unicodeDomain":Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lkoz;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "rule":[Ljava/lang/String;
    array-length v7, v0

    array-length v8, v5

    if-ne v7, v8, :cond_1

    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1

    .line 88
    const/4 v7, 0x0

    .line 107
    :goto_0
    return-object v7

    .line 92
    :cond_1
    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_2

    .line 94
    array-length v7, v0

    array-length v8, v5

    sub-int v2, v7, v8

    .line 100
    .local v2, "firstLabelOffset":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "punycodeLabels":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 103
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    .end local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .end local v2    # "firstLabelOffset":I
    .end local v3    # "i":I
    .end local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_2
    array-length v7, v0

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    sub-int v2, v7, v8

    .restart local v2    # "firstLabelOffset":I
    goto :goto_1

    .line 105
    .restart local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
