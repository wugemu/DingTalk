.class public final Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;,
        Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:Ljava/util/BitSet;

.field private static final c:Ljava/util/BitSet;

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lkpz;->a:[B

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    .line 40
    const-string/jumbo v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->b:Ljava/util/BitSet;

    .line 42
    const-string/jumbo v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->c:Ljava/util/BitSet;

    .line 51
    const-string/jumbo v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->d:Ljava/util/BitSet;

    .line 53
    const-string/jumbo v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->e:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static a(I)C
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 611
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 112
    .line 1444
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1445
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1446
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1447
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->e:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1448
    const/4 v0, 0x1

    .line 1445
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1449
    :cond_1
    invoke-static {v4}, Lksz;->a(C)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 112
    :cond_2
    if-eqz v0, :cond_3

    .line 117
    .end local p0    # "displayName":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 114
    .restart local p0    # "displayName":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1495
    :cond_4
    const-string/jumbo v0, "[\\\\\"]"

    const-string/jumbo v1, "\\\\$0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "usedCharacters"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "bytes"    # [B

    .prologue
    const/4 v9, 0x0

    .line 501
    .line 2522
    array-length v8, p4

    add-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v2, v8, 0x4

    .line 503
    .local v2, "encodedLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    .line 504
    add-int/lit8 v5, v8, 0x2

    .line 505
    .local v5, "totalLength":I
    rsub-int/lit8 v8, p2, 0x4b

    if-gt v5, v8, :cond_0

    .line 506
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 517
    :goto_0
    return-object v8

    .line 508
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "part1":Ljava/lang/String;
    invoke-static {v3, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 510
    .local v0, "bytes1":[B
    invoke-static {p0, v3, p2, p3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "word1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "part2":Ljava/lang/String;
    invoke-static {v4, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 515
    .local v1, "bytes2":[B
    invoke-static {p0, v4, v9, p3, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 517
    .local v7, "word2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 18
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p3, "usedCharacters"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "bytes"    # [B

    .prologue
    .line 527
    .line 2548
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->b:Ljava/util/BitSet;

    .line 2551
    :goto_0
    const/4 v14, 0x0

    .line 2553
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p5

    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 2554
    aget-byte v5, p5, v4

    and-int/lit16 v5, v5, 0xff

    .line 2555
    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    .line 2557
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2558
    add-int/lit8 v14, v14, 0x3

    .line 2553
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2548
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->c:Ljava/util/BitSet;

    goto :goto_0

    .line 2560
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 529
    .local v14, "encodedLength":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    .line 530
    add-int/lit8 v15, v2, 0x2

    .line 531
    .local v15, "totalLength":I
    rsub-int/lit8 v2, p3, 0x4b

    if-gt v15, v2, :cond_3

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    :goto_3
    return-object v2

    .line 534
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "part1":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .local v7, "bytes1":[B
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 536
    invoke-static/range {v2 .. v7}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v16

    .line 539
    .local v16, "word1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 540
    .local v9, "part2":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 541
    .local v13, "bytes2":[B
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v17

    .line 543
    .local v17, "word2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    const/4 v1, 0x0

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 181
    invoke-static {p0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2280
    invoke-static {p0, p1, v1, v2, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object p0

    .line 184
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "encoding"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .prologue
    .line 309
    if-nez p0, :cond_0

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 311
    :cond_0
    if-ltz p2, :cond_1

    const/16 v1, 0x32

    if-le p2, v1, :cond_2

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 315
    :cond_2
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->c(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 317
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lksz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "mimeCharset":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported charset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_3
    invoke-static {p0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 326
    .local v5, "bytes":[B
    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object p4

    .line 328
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_4

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?B?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {v0, p0, p2, p3, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    .line 332
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?Q?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prefix":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 333
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/16 v6, 0x3d

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 349
    .local v2, "idx":I
    array-length v1, p0

    .line 350
    .local v1, "end":I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_0

    .line 351
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 353
    .local v0, "data":I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 359
    .end local v0    # "data":I
    :cond_0
    add-int/lit8 v4, v1, -0x2

    if-ne v2, v4, :cond_2

    .line 360
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    .line 361
    .restart local v0    # "data":I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    .end local v0    # "data":I
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 366
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1

    .line 367
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x10

    .line 368
    .restart local v0    # "data":I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->a:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    .line 389
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->b:Ljava/util/BitSet;

    .line 392
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 395
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 396
    aget-byte v5, p0, v1

    and-int/lit16 v4, v5, 0xff

    .line 397
    .local v4, "v":I
    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 398
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "end":I
    .end local v1    # "idx":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "v":I
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->c:Ljava/util/BitSet;

    goto :goto_0

    .line 399
    .restart local v0    # "end":I
    .restart local v1    # "idx":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "v":I
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 400
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 404
    :cond_2
    int-to-char v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 408
    .end local v4    # "v":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v6, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    if-nez p0, :cond_1

    .line 203
    const-string/jumbo v4, "EncoderUtil "

    const-string/jumbo v5, "hasToBeEncoded text = null ~~!! "

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "Null pointer"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :cond_0
    :goto_0
    return v3

    .line 206
    :cond_1
    if-ltz p1, :cond_2

    const/16 v5, 0x32

    if-le p1, v5, :cond_3

    .line 207
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 209
    :cond_3
    move v2, p1

    .line 211
    .local v2, "nonWhiteSpaceCount":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 213
    .local v0, "ch":C
    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v6, :cond_6

    .line 214
    :cond_4
    const/4 v2, 0x0

    .line 211
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 217
    const/16 v5, 0x4d

    if-le v2, v5, :cond_7

    move v3, v4

    .line 222
    goto :goto_0

    .line 225
    :cond_7
    if-lt v0, v6, :cond_8

    const/16 v5, 0x7f

    if-lt v0, v5, :cond_5

    :cond_8
    move v3, v4

    .line 227
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 568
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 569
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 570
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 571
    return-object v1
.end method

.method private static b(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4
    .param p0, "specials"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 57
    .local v0, "bs":Ljava/util/BitSet;
    const/16 v1, 0x21

    .local v1, "ch":C
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 57
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method private static b([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    .line 592
    array-length v5, p0

    if-nez v5, :cond_0

    .line 593
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 607
    :goto_0
    return-object v5

    .line 595
    :cond_0
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_2

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->b:Ljava/util/BitSet;

    .line 598
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_1
    const/4 v3, 0x0

    .line 599
    .local v3, "qEncoded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 600
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 601
    .local v4, "v":I
    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 602
    add-int/lit8 v3, v3, 0x1

    .line 599
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 595
    .end local v0    # "i":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "qEncoded":I
    .end local v4    # "v":I
    :cond_2
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->c:Ljava/util/BitSet;

    goto :goto_1

    .line 606
    .restart local v0    # "i":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "qEncoded":I
    :cond_3
    mul-int/lit8 v5, v3, 0x64

    array-length v6, p0

    div-int v1, v5, v6

    .line 607
    .local v1, "percentage":I
    const/16 v5, 0x1e

    if-le v1, v5, :cond_4

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_0

    :cond_4
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 577
    const/4 v0, 0x1

    .line 578
    .local v0, "ascii":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 579
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 580
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 581
    .local v1, "ch":C
    const/16 v4, 0xff

    if-le v1, v4, :cond_0

    .line 582
    sget-object v4, Lksz;->c:Ljava/nio/charset/Charset;

    .line 588
    .end local v1    # "ch":C
    :goto_1
    return-object v4

    .line 584
    .restart local v1    # "ch":C
    :cond_0
    const/16 v4, 0x7f

    if-le v1, v4, :cond_1

    .line 585
    const/4 v0, 0x0

    .line 579
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "ch":C
    :cond_2
    if-eqz v0, :cond_3

    sget-object v4, Lksz;->a:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    sget-object v4, Lksz;->b:Ljava/nio/charset/Charset;

    goto :goto_1
.end method
