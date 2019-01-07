.class public final Ligt;
.super Ligs;
.source "Draft_76.java"


# static fields
.field private static final j:[B


# instance fields
.field private i:Z

.field private final k:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ligt;->j:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ligs;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Ligt;->i:Z

    .line 27
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ligt;->k:Ljava/util/Random;

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x18

    .line 90
    :try_start_0
    const-string/jumbo v6, "[^0-9]"

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    .local v0, "keyNumber":J
    const-string/jumbo v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    int-to-long v2, v6

    .line 92
    .local v2, "keySpace":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 93
    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    const-string/jumbo v7, "invalid Sec-WebSocket-Key (/key2/)"

    invoke-direct {v6, v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "keyNumber":J
    .end local v2    # "keySpace":J
    :catch_0
    move-exception v6

    new-instance v6, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    const-string/jumbo v7, "invalid Sec-WebSocket-Key (/key1/ or /key2/)"

    invoke-direct {v6, v7}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    .restart local v0    # "keyNumber":J
    .restart local v2    # "keySpace":J
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/Long;

    div-long v8, v0, v2

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 96
    .local v4, "part":J
    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    shr-long v8, v4, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x8

    shl-long v8, v4, v8

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x10

    shl-long v8, v4, v8

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x3

    shl-long v8, v4, v10

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 12
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "key2"    # Ljava/lang/String;
    .param p2, "key3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    invoke-static {p0}, Ligt;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 32
    .local v3, "part1":[B
    invoke-static {p1}, Ligt;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 33
    .local v4, "part2":[B
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 34
    .local v0, "challenge":[B
    aget-byte v5, v3, v7

    aput-byte v5, v0, v7

    .line 35
    aget-byte v5, v3, v8

    aput-byte v5, v0, v8

    .line 36
    aget-byte v5, v3, v9

    aput-byte v5, v0, v9

    .line 37
    aget-byte v5, v3, v10

    aput-byte v5, v0, v10

    .line 38
    aget-byte v5, v4, v7

    aput-byte v5, v0, v11

    .line 39
    const/4 v5, 0x5

    aget-byte v6, v4, v8

    aput-byte v6, v0, v5

    .line 40
    const/4 v5, 0x6

    aget-byte v6, v4, v9

    aput-byte v6, v0, v5

    .line 41
    const/4 v5, 0x7

    aget-byte v6, v4, v10

    aput-byte v6, v0, v5

    .line 42
    const/16 v5, 0x8

    aget-byte v6, p2, v7

    aput-byte v6, v0, v5

    .line 43
    const/16 v5, 0x9

    aget-byte v6, p2, v8

    aput-byte v6, v0, v5

    .line 44
    const/16 v5, 0xa

    aget-byte v6, p2, v9

    aput-byte v6, v0, v5

    .line 45
    const/16 v5, 0xb

    aget-byte v6, p2, v10

    aput-byte v6, v0, v5

    .line 46
    const/16 v5, 0xc

    aget-byte v6, p2, v11

    aput-byte v6, v0, v5

    .line 47
    const/16 v5, 0xd

    const/4 v6, 0x5

    aget-byte v6, p2, v6

    aput-byte v6, v0, v5

    .line 48
    const/16 v5, 0xe

    const/4 v6, 0x6

    aget-byte v6, p2, v6

    aput-byte v6, v0, v5

    .line 49
    const/16 v5, 0xf

    const/4 v6, 0x7

    aget-byte v6, p2, v6

    aput-byte v6, v0, v5

    .line 52
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 56
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    return-object v5

    .line 53
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static d()Ljava/lang/String;
    .locals 16

    .prologue
    .line 60
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 62
    .local v8, "r":Ljava/util/Random;
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    int-to-long v10, v12

    .line 63
    .local v10, "spaces":J
    new-instance v12, Ljava/lang/Long;

    const-wide v14, 0xffffffffL

    div-long/2addr v14, v10

    invoke-direct {v12, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 64
    .local v2, "max":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 65
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .line 66
    .local v4, "number":I
    int-to-long v12, v4

    mul-long v6, v12, v10

    .line 67
    .local v6, "product":J
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "key":Ljava/lang/String;
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v3, v12, 0x1

    .line 70
    .local v3, "numChars":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 72
    .local v5, "position":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 73
    const/16 v12, 0x5f

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x21

    int-to-char v9, v12

    .line 75
    .local v9, "randChar":C
    const/16 v12, 0x30

    if-lt v9, v12, :cond_0

    const/16 v12, 0x39

    if-gt v9, v12, :cond_0

    .line 76
    add-int/lit8 v12, v9, -0xf

    int-to-char v9, v12

    .line 78
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v5    # "position":I
    .end local v9    # "randChar":C
    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-long v12, v0

    cmp-long v12, v12, v10

    if-gez v12, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v5, v12, 0x1

    .line 82
    .restart local v5    # "position":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, " "

    invoke-virtual {v12, v5, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v5    # "position":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Ligy;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    const-string/jumbo v0, "Upgrade"

    invoke-interface {p1, v0}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WebSocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Connection"

    invoke-interface {p1, v0}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Sec-WebSocket-Key1"

    invoke-interface {p1, v0}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "Sec-WebSocket-Key2"

    invoke-interface {p1, v0}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Origin"

    invoke-interface {p1, v0}, Ligy;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public final a(Ligy;Lihf;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 5
    .param p1, "request"    # Ligy;
    .param p2, "response"    # Lihf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    :try_start_0
    const-string/jumbo v2, "Sec-WebSocket-Origin"

    invoke-interface {p2, v2}, Lihf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Origin"

    invoke-interface {p1, v3}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Ligt;->a(Lihd;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 119
    :goto_0
    return-object v2

    .line 112
    :cond_1
    invoke-interface {p2}, Lihf;->c()[B

    move-result-object v0

    .line 113
    .local v0, "content":[B
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 114
    :cond_2
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;-><init>()V

    throw v2
    :try_end_0
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "content":[B
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad handshakerequest"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v1    # "e":Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
    .restart local v0    # "content":[B
    :cond_3
    :try_start_1
    const-string/jumbo v2, "Sec-WebSocket-Key1"

    invoke-interface {p1, v2}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Sec-WebSocket-Key2"

    invoke-interface {p1, v3}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ligy;->c()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Ligt;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 119
    :cond_4
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    :try_end_1
    .catch Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Ligz;)Ligz;
    .locals 4
    .param p1, "request"    # Ligz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "WebSocket"

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Upgrade"

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "Sec-WebSocket-Key1"

    invoke-static {}, Ligt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "Sec-WebSocket-Key2"

    invoke-static {}, Ligt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "Origin"

    invoke-interface {p1, v1}, Ligz;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const-string/jumbo v1, "Origin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "random"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ligt;->k:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 145
    .local v0, "key3":[B
    iget-object v1, p0, Ligt;->k:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 146
    invoke-interface {p1, v0}, Ligz;->a([B)V

    .line 147
    return-object p1
.end method

.method public final a(Ligy;Lihg;)Liha;
    .locals 6
    .param p1, "request"    # Ligy;
    .param p2, "response"    # Lihg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    const-string/jumbo v4, "WebSocket Protocol Handshake"

    invoke-interface {p2, v4}, Lihg;->a(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v4, "Upgrade"

    const-string/jumbo v5, "WebSocket"

    invoke-interface {p2, v4, v5}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "Connection"

    invoke-interface {p1, v5}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v4, "Sec-WebSocket-Origin"

    const-string/jumbo v5, "Origin"

    invoke-interface {p1, v5}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ws://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Host"

    invoke-interface {p1, v5}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ligy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "location":Ljava/lang/String;
    const-string/jumbo v4, "Sec-WebSocket-Location"

    invoke-interface {p2, v4, v3}, Lihg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v4, "Sec-WebSocket-Key1"

    invoke-interface {p1, v4}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "key1":Ljava/lang/String;
    const-string/jumbo v4, "Sec-WebSocket-Key2"

    invoke-interface {p1, v4}, Ligy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "key2":Ljava/lang/String;
    invoke-interface {p1}, Ligy;->c()[B

    move-result-object v2

    .line 162
    .local v2, "key3":[B
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v4, v2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 163
    :cond_0
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    const-string/jumbo v5, "Bad keys"

    invoke-direct {v4, v5}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_1
    invoke-static {v0, v1, v2}, Ligt;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-interface {p2, v4}, Lihg;->a([B)V

    .line 166
    return-object p2
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "framedata"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 223
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;->f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->CLOSING:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Ligt;->j:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ligs;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 190
    invoke-super {p0, p1}, Ligs;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    if-nez v0, :cond_4

    .line 192
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 193
    iget-object v0, p0, Ligt;->g:Ljava/util/List;

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, p0, Ligt;->f:Z

    .line 195
    iget-object v2, p0, Ligt;->h:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 196
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Ligt;->h:Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Ligt;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 201
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>()V

    throw v2

    .line 198
    :cond_0
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>()V

    throw v2

    .line 203
    :cond_1
    iget-object v2, p0, Ligt;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v2, p0, Ligt;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    iget-object v2, p0, Ligt;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    sget-object v3, Ligt;->j:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    new-instance v2, Ligv;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Ligv;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 218
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    :goto_0
    return-object v1

    .line 211
    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .restart local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    :cond_2
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;-><init>()V

    throw v2

    .line 214
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Ligt;->g:Ljava/util/List;

    move-object v1, v0

    .line 215
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .restart local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    goto :goto_0

    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .restart local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    :cond_4
    move-object v1, v0

    .line 218
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    .restart local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;>;"
    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;->ONEWAY:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public final b(Ljava/nio/ByteBuffer;)Lihd;
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    iget-object v2, p0, Ligt;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-static {p1, v2}, Ligt;->a(Ljava/nio/ByteBuffer;Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)Liha;

    move-result-object v0

    .line 174
    .local v0, "bui":Liha;
    const-string/jumbo v2, "Sec-WebSocket-Key1"

    invoke-interface {v0, v2}, Liha;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ligt;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v2, v3, :cond_1

    :cond_0
    const-string/jumbo v2, "Sec-WebSocket-Version"

    invoke-interface {v0, v2}, Liha;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Ligt;->d:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x8

    :goto_0
    new-array v1, v2, [B

    .line 177
    .local v1, "key3":[B
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-interface {v0, v1}, Liha;->a([B)V

    .line 184
    .end local v1    # "key3":[B
    :cond_1
    return-object v0

    .line 175
    :cond_2
    const/16 v2, 0x10

    goto :goto_0

    .line 179
    .restart local v1    # "key3":[B
    :catch_0
    move-exception v2

    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v2
.end method

.method public final c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Ligt;

    invoke-direct {v0}, Ligt;-><init>()V

    return-object v0
.end method
