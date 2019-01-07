.class public Lcn/com/chinatelecom/gateway/lib/a/c;
.super Ljava/lang/Object;
.source "HMAC_SHA1.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:[I

.field private c:[I

.field private d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcn/com/chinatelecom/gateway/lib/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->b:[I

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    .line 16
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    return-void

    .line 12
    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 104
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 246
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 247
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 250
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x14

    const/4 v3, 0x0

    const/16 v10, 0x40

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/a/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "when getHmacSHA1,the key is null"

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 226
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const/16 v1, 0x40

    :try_start_0
    new-array v4, v1, [B

    .line 198
    const/16 v1, 0x40

    new-array v5, v1, [B

    .line 199
    const/16 v1, 0x40

    new-array v6, v1, [B

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 201
    new-instance v7, Lcn/com/chinatelecom/gateway/lib/a/c;

    invoke-direct {v7}, Lcn/com/chinatelecom/gateway/lib/a/c;-><init>()V

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_1

    .line 203
    invoke-static {p1}, Lcn/com/chinatelecom/gateway/lib/a/e;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v7, v1}, Lcn/com/chinatelecom/gateway/lib/a/c;->b([B)[B

    move-result-object v8

    move v1, v3

    .line 205
    :goto_1
    if-ge v1, v0, :cond_2

    .line 206
    aget-byte v9, v8, v1

    aput-byte v9, v6, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {p1}, Lcn/com/chinatelecom/gateway/lib/a/e;->b(Ljava/lang/String;)[B

    move-result-object v8

    move v0, v3

    .line 210
    :goto_2
    array-length v9, v8

    if-ge v0, v9, :cond_5

    .line 211
    aget-byte v9, v8, v0

    aput-byte v9, v6, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 214
    :cond_2
    :goto_3
    if-ge v0, v10, :cond_3

    .line 215
    const/4 v1, 0x0

    aput-byte v1, v6, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v3

    .line 217
    :goto_4
    if-ge v0, v10, :cond_4

    .line 218
    aget-byte v1, v6, v0

    xor-int/lit8 v1, v1, 0x36

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 219
    aget-byte v1, v6, v0

    xor-int/lit8 v1, v1, 0x5c

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 221
    :cond_4
    invoke-static {p0}, Lcn/com/chinatelecom/gateway/lib/a/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v4, v0}, Lcn/com/chinatelecom/gateway/lib/a/c;->a([B[B)[B

    move-result-object v0

    invoke-direct {v7, v0}, Lcn/com/chinatelecom/gateway/lib/a/c;->b([B)[B

    move-result-object v0

    .line 222
    invoke-static {v5, v0}, Lcn/com/chinatelecom/gateway/lib/a/c;->a([B[B)[B

    move-result-object v0

    invoke-direct {v7, v0}, Lcn/com/chinatelecom/gateway/lib/a/c;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/a/c;->a:Ljava/lang/String;

    const-string/jumbo v3, "getHmacSHA1 error"

    invoke-static {v1, v3, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 226
    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 230
    array-length v1, p1

    add-int/lit8 v1, v1, 0x40

    .line 231
    new-array v2, v1, [B

    move v1, v0

    .line 232
    :goto_0
    const/16 v3, 0x40

    if-ge v1, v3, :cond_0

    .line 233
    aget-byte v3, p0, v1

    aput-byte v3, v2, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 236
    add-int/lit8 v1, v0, 0x40

    aget-byte v3, p1, v0

    aput-byte v3, v2, v1

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_1
    return-object v2
.end method

.method private b([B)[B
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 182
    .line 1020
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->b:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->b:[I

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1044
    array-length v4, p1

    .line 1046
    rem-int/lit8 v0, v4, 0x40

    .line 1048
    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    .line 1049
    rsub-int/lit8 v1, v0, 0x37

    .line 1050
    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x40

    .line 1059
    :goto_0
    new-array v5, v0, [B

    .line 1061
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1065
    add-int/lit8 v2, v4, 0x1

    const/16 v0, -0x80

    aput-byte v0, v5, v4

    .line 1067
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1068
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x0

    aput-byte v6, v5, v2

    .line 1067
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 1051
    :cond_0
    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    .line 1052
    const/16 v1, 0x3f

    .line 1053
    add-int/lit8 v0, v4, 0x8

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 1055
    :cond_1
    rsub-int/lit8 v1, v0, 0x3f

    add-int/lit8 v1, v1, 0x38

    .line 1056
    add-int/lit8 v2, v4, 0x40

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 1071
    :cond_2
    int-to-long v0, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v0, v6

    .line 1072
    const-wide/16 v6, 0xff

    and-long/2addr v6, v0

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 1073
    const/16 v4, 0x8

    shr-long v6, v0, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v4, v6

    int-to-byte v4, v4

    .line 1074
    const/16 v6, 0x10

    shr-long v6, v0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1075
    const/16 v7, 0x18

    shr-long v8, v0, v7

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v7, v8

    int-to-byte v7, v7

    .line 1076
    const/16 v8, 0x20

    shr-long v8, v0, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 1077
    const/16 v9, 0x28

    shr-long v10, v0, v9

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v9, v10

    int-to-byte v9, v9

    .line 1078
    const/16 v10, 0x30

    shr-long v10, v0, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    .line 1079
    const/16 v11, 0x38

    shr-long/2addr v0, v11

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1080
    add-int/lit8 v1, v2, 0x1

    aput-byte v0, v5, v2

    .line 1081
    add-int/lit8 v0, v1, 0x1

    aput-byte v10, v5, v1

    .line 1082
    add-int/lit8 v1, v0, 0x1

    aput-byte v9, v5, v0

    .line 1083
    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v5, v1

    .line 1084
    add-int/lit8 v1, v0, 0x1

    aput-byte v7, v5, v0

    .line 1085
    add-int/lit8 v0, v1, 0x1

    aput-byte v6, v5, v1

    .line 1086
    add-int/lit8 v1, v0, 0x1

    aput-byte v4, v5, v0

    .line 1087
    aput-byte v3, v5, v1

    .line 1024
    array-length v0, v5

    div-int/lit8 v2, v0, 0x40

    .line 1026
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_c

    .line 1028
    const/4 v0, 0x0

    :goto_3
    const/16 v3, 0x10

    if-ge v0, v3, :cond_3

    .line 1029
    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    mul-int/lit8 v4, v1, 0x40

    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v4, v6

    .line 1167
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    .line 1029
    aput v4, v3, v0

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2109
    :cond_3
    const/16 v0, 0x10

    :goto_4
    const/16 v3, 0x4f

    if-gt v0, v3, :cond_4

    .line 2110
    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    iget-object v4, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    add-int/lit8 v6, v0, -0x3

    aget v4, v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    add-int/lit8 v7, v0, -0x8

    aget v6, v6, v7

    xor-int/2addr v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    add-int/lit8 v7, v0, -0xe

    aget v6, v6, v7

    xor-int/2addr v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    add-int/lit8 v7, v0, -0x10

    aget v6, v6, v7

    xor-int/2addr v4, v6

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v4

    aput v4, v3, v0

    .line 2109
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2113
    :cond_4
    const/4 v0, 0x5

    new-array v3, v0, [I

    .line 2114
    const/4 v0, 0x0

    :goto_5
    const/4 v4, 0x5

    if-ge v0, v4, :cond_5

    .line 2115
    iget-object v4, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 2114
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2117
    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/16 v4, 0x13

    if-gt v0, v4, :cond_6

    .line 2118
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    .line 3092
    and-int/2addr v7, v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    .line 2119
    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, 0x5a827999

    add-int/2addr v4, v6

    .line 2121
    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2122
    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2123
    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v7

    aput v7, v3, v6

    .line 2124
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2125
    const/4 v6, 0x0

    aput v4, v3, v6

    .line 2117
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2127
    :cond_6
    const/16 v0, 0x14

    :goto_7
    const/16 v4, 0x27

    if-gt v0, v4, :cond_7

    .line 2128
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    .line 3096
    xor-int/2addr v6, v7

    xor-int/2addr v6, v8

    .line 2129
    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, 0x6ed9eba1

    add-int/2addr v4, v6

    .line 2131
    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2132
    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2133
    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v7

    aput v7, v3, v6

    .line 2134
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2135
    const/4 v6, 0x0

    aput v4, v3, v6

    .line 2127
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2137
    :cond_7
    const/16 v0, 0x28

    :goto_8
    const/16 v4, 0x3b

    if-gt v0, v4, :cond_8

    .line 2138
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    .line 3100
    and-int v9, v6, v7

    and-int/2addr v6, v8

    or-int/2addr v6, v9

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 2139
    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, -0x70e44324

    add-int/2addr v4, v6

    .line 2141
    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2142
    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2143
    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v7

    aput v7, v3, v6

    .line 2144
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2145
    const/4 v6, 0x0

    aput v4, v3, v6

    .line 2137
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2147
    :cond_8
    const/16 v0, 0x3c

    :goto_9
    const/16 v4, 0x4f

    if-gt v0, v4, :cond_9

    .line 2148
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    .line 4096
    xor-int/2addr v6, v7

    xor-int/2addr v6, v8

    .line 2149
    add-int/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    const v6, -0x359d3e2a    # -3715189.5f

    add-int/2addr v4, v6

    .line 2151
    const/4 v6, 0x4

    const/4 v7, 0x3

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2152
    const/4 v6, 0x3

    const/4 v7, 0x2

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2153
    const/4 v6, 0x2

    const/4 v7, 0x1

    aget v7, v3, v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcn/com/chinatelecom/gateway/lib/a/c;->a(II)I

    move-result v7

    aput v7, v3, v6

    .line 2154
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    aput v7, v3, v6

    .line 2155
    const/4 v6, 0x0

    aput v4, v3, v6

    .line 2147
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2157
    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v4, 0x5

    if-ge v0, v4, :cond_a

    .line 2158
    iget-object v4, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    iget-object v6, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    aget v6, v6, v0

    aget v7, v3, v0

    add-int/2addr v6, v7

    aput v6, v4, v0

    .line 2157
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2160
    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 2161
    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->d:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 2160
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1026
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 183
    :cond_c
    const/16 v0, 0x14

    new-array v1, v0, [B

    .line 184
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 185
    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/a/c;->c:[I

    aget v2, v2, v0

    mul-int/lit8 v3, v0, 0x4

    .line 4173
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 4174
    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 4175
    add-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 4176
    add-int/lit8 v3, v3, 0x3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 187
    :cond_d
    return-object v1
.end method
