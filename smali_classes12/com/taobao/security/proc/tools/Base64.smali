.class public final Lcom/taobao/security/proc/tools/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final map:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 107
    sput-object v0, Lcom/taobao/security/proc/tools/Base64;->map:[B

    .line 6
    return-void

    .line 108
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "in"    # [B

    .prologue
    .line 11
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/taobao/security/proc/tools/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static decode([BI)[B
    .locals 13
    .param p0, "in"    # [B
    .param p1, "len"    # I

    .prologue
    .line 16
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 17
    :cond_0
    const/4 v10, 0x0

    .line 104
    :goto_0
    return-object v10

    .line 20
    :cond_1
    div-int/lit8 v11, p1, 0x4

    mul-int/lit8 v4, v11, 0x3

    .line 22
    .local v4, "length":I
    if-nez v4, :cond_2

    .line 23
    const/4 v10, 0x0

    goto :goto_0

    .line 26
    :cond_2
    new-array v5, v4, [B

    .line 28
    .local v5, "out":[B
    const/4 v8, 0x0

    .line 33
    .local v8, "pad":I
    :goto_1
    add-int/lit8 v11, p1, -0x1

    aget-byte v1, p0, v11

    .line 35
    .local v1, "chr":B
    const/16 v11, 0xa

    if-eq v1, v11, :cond_3

    const/16 v11, 0xd

    if-eq v1, v11, :cond_3

    .line 36
    const/16 v11, 0x20

    if-eq v1, v11, :cond_3

    const/16 v11, 0x9

    if-eq v1, v11, :cond_3

    .line 39
    const/16 v11, 0x3d

    if-ne v1, v11, :cond_4

    .line 40
    add-int/lit8 v8, v8, 0x1

    .line 32
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 46
    :cond_4
    const/4 v6, 0x0

    .line 48
    .local v6, "outIndex":I
    const/4 v3, 0x0

    .line 52
    .local v3, "inIndex":I
    const/4 v9, 0x0

    .line 53
    .local v9, "quantum":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v7, v6

    .end local v6    # "outIndex":I
    .local v7, "outIndex":I
    :goto_2
    if-lt v2, p1, :cond_7

    .line 92
    if-lez v8, :cond_5

    .line 94
    mul-int/lit8 v11, v8, 0x6

    shl-int/2addr v9, v11

    .line 96
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    shr-int/lit8 v11, v9, 0x10

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 97
    const/4 v11, 0x1

    if-ne v8, v11, :cond_6

    .line 98
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    :cond_5
    move v6, v7

    .line 102
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    :cond_6
    new-array v10, v6, [B

    .line 103
    .local v10, "result":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 54
    .end local v6    # "outIndex":I
    .end local v10    # "result":[B
    .restart local v7    # "outIndex":I
    :cond_7
    aget-byte v1, p0, v2

    .line 56
    const/16 v11, 0xa

    if-eq v1, v11, :cond_e

    const/16 v11, 0xd

    if-eq v1, v11, :cond_e

    .line 57
    const/16 v11, 0x20

    if-eq v1, v11, :cond_e

    const/16 v11, 0x9

    if-eq v1, v11, :cond_e

    .line 60
    const/16 v11, 0x41

    if-lt v1, v11, :cond_8

    const/16 v11, 0x5a

    if-gt v1, v11, :cond_8

    .line 64
    add-int/lit8 v0, v1, -0x41

    .line 83
    .local v0, "bits":I
    :goto_3
    shl-int/lit8 v11, v9, 0x6

    int-to-byte v12, v0

    or-int v9, v11, v12

    .line 84
    rem-int/lit8 v11, v3, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    .line 86
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    shr-int/lit8 v11, v9, 0x10

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 87
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 88
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    int-to-byte v11, v9

    aput-byte v11, v5, v7

    .line 90
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 53
    .end local v0    # "bits":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    goto :goto_2

    .line 65
    :cond_8
    const/16 v11, 0x61

    if-lt v1, v11, :cond_9

    const/16 v11, 0x7a

    if-gt v1, v11, :cond_9

    .line 69
    add-int/lit8 v0, v1, -0x47

    .restart local v0    # "bits":I
    goto :goto_3

    .line 70
    .end local v0    # "bits":I
    :cond_9
    const/16 v11, 0x30

    if-lt v1, v11, :cond_a

    const/16 v11, 0x39

    if-gt v1, v11, :cond_a

    .line 74
    add-int/lit8 v0, v1, 0x4

    .restart local v0    # "bits":I
    goto :goto_3

    .line 75
    .end local v0    # "bits":I
    :cond_a
    const/16 v11, 0x2b

    if-ne v1, v11, :cond_b

    .line 76
    const/16 v0, 0x3e

    .restart local v0    # "bits":I
    goto :goto_3

    .line 77
    .end local v0    # "bits":I
    :cond_b
    const/16 v11, 0x2f

    if-ne v1, v11, :cond_c

    .line 78
    const/16 v0, 0x3f

    .restart local v0    # "bits":I
    goto :goto_3

    .line 80
    .end local v0    # "bits":I
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .restart local v0    # "bits":I
    :cond_d
    move v6, v7

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    goto :goto_4

    .end local v0    # "bits":I
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    :cond_e
    move v6, v7

    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    goto :goto_5
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3d

    .line 115
    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v4, v6, 0x3

    .line 116
    .local v4, "length":I
    new-array v5, v4, [B

    .line 117
    .local v5, "out":[B
    const/4 v2, 0x0

    .local v2, "index":I
    array-length v6, p0

    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    sub-int v0, v6, v7

    .line 118
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 124
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    :goto_1
    move v2, v3

    .line 138
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_2
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "US_ASCII"

    invoke-direct {v6, v5, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v6

    .line 119
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 120
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 121
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 122
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 118
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 126
    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 127
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 128
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-byte v9, v5, v3

    .line 129
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v5, v2

    move v2, v3

    .line 130
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    .line 132
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 133
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    aget-byte v7, p0, v0

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    .line 134
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Lcom/taobao/security/proc/tools/Base64;->map:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 135
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v5, v2

    goto/16 :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
