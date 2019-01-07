.class public final Lyw;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string/jumbo v0, ""

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lyw;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a([B)Ljava/lang/String;
    .locals 8
    .param p0, "d"    # [B

    .prologue
    const/4 v6, 0x0

    .line 13
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 41
    :goto_0
    return-object v5

    .line 14
    :cond_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 15
    .local v0, "data":[B
    array-length v5, p0

    invoke-static {p0, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    array-length v5, v0

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-array v1, v5, [B

    .line 19
    .local v1, "dest":[B
    const/4 v4, 0x0

    .local v4, "sidx":I
    const/4 v2, 0x0

    .local v2, "didx":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 20
    aget-byte v5, v0, v4

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 21
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v7, v0, v4

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 23
    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v0, v6

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 25
    add-int/lit8 v5, v2, 0x3

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v0, v6

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 19
    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 29
    :cond_1
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_6

    .line 30
    aget-byte v5, v1, v3

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_2

    aget-byte v5, v1, v3

    add-int/lit8 v5, v5, 0x41

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 29
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 31
    :cond_2
    aget-byte v5, v1, v3

    const/16 v6, 0x34

    if-ge v5, v6, :cond_3

    aget-byte v5, v1, v3

    add-int/lit8 v5, v5, 0x61

    add-int/lit8 v5, v5, -0x1a

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    goto :goto_3

    .line 32
    :cond_3
    aget-byte v5, v1, v3

    const/16 v6, 0x3e

    if-ge v5, v6, :cond_4

    aget-byte v5, v1, v3

    add-int/lit8 v5, v5, 0x30

    add-int/lit8 v5, v5, -0x34

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    goto :goto_3

    .line 33
    :cond_4
    aget-byte v5, v1, v3

    const/16 v6, 0x3f

    if-ge v5, v6, :cond_5

    const/16 v5, 0x2b

    aput-byte v5, v1, v3

    goto :goto_3

    .line 34
    :cond_5
    const/16 v5, 0x2f

    aput-byte v5, v1, v3

    goto :goto_3

    .line 38
    :cond_6
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    :goto_4
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    if-le v3, v5, :cond_7

    .line 39
    const/16 v5, 0x3d

    aput-byte v5, v1, v3

    .line 38
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 41
    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0
.end method

.method public static final b(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3d

    const/4 v2, 0x0

    .line 58
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1068
    .local v0, "data":[B
    array-length v1, v0

    .line 1069
    :goto_1
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v0, v3

    if-ne v3, v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1070
    :cond_1
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    new-array v3, v1, [B

    move v1, v2

    .line 1073
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_8

    .line 1074
    aget-byte v4, v0, v1

    if-ne v4, v6, :cond_3

    aput-byte v2, v0, v1

    .line 1073
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1075
    :cond_3
    aget-byte v4, v0, v1

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_4

    const/16 v4, 0x3f

    aput-byte v4, v0, v1

    goto :goto_3

    .line 1076
    :cond_4
    aget-byte v4, v0, v1

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_5

    const/16 v4, 0x3e

    aput-byte v4, v0, v1

    goto :goto_3

    .line 1077
    :cond_5
    aget-byte v4, v0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    aget-byte v4, v0, v1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_6

    .line 1078
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_3

    .line 1079
    :cond_6
    aget-byte v4, v0, v1

    const/16 v5, 0x61

    if-lt v4, v5, :cond_7

    aget-byte v4, v0, v1

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_7

    .line 1080
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x47

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_3

    .line 1081
    :cond_7
    aget-byte v4, v0, v1

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    aget-byte v4, v0, v1

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 1082
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x41

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_3

    :cond_8
    move v1, v2

    .line 1087
    :goto_4
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ge v2, v4, :cond_9

    .line 1088
    aget-byte v4, v0, v1

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v0, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 1090
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1092
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1087
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    goto :goto_4

    .line 1095
    :cond_9
    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 1096
    aget-byte v4, v0, v1

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v0, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 1099
    :cond_a
    add-int/lit8 v2, v2, 0x1

    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 1100
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, v0, v1

    ushr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    :cond_b
    move-object v1, v3

    .line 60
    goto/16 :goto_0
.end method
