.class public Lcom/amap/api/mapcore/util/fi;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final a:[C

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 19
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/mapcore/util/fi;->a:[C

    .line 70
    new-array v0, v3, [B

    sput-object v0, Lcom/amap/api/mapcore/util/fi;->b:[B

    .line 71
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 72
    sget-object v1, Lcom/amap/api/mapcore/util/fi;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 75
    sget-object v1, Lcom/amap/api/mapcore/util/fi;->b:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 78
    sget-object v1, Lcom/amap/api/mapcore/util/fi;->b:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 81
    sget-object v1, Lcom/amap/api/mapcore/util/fi;->b:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 83
    :cond_3
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->b:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 84
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->b:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 85
    return-void

    .line 19
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fi;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fn;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fi;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "encodeBase64"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([BLjava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 141
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 143
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method static a([B[B)[B
    .locals 3

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fi;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "Encrypt"

    const-string/jumbo v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fi;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/16 v8, 0x3d

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 152
    if-nez p0, :cond_0

    .line 153
    new-array v0, v0, [B

    .line 206
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 156
    array-length v3, v2

    .line 157
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 161
    :goto_1
    if-ge v0, v3, :cond_7

    .line 165
    :goto_2
    sget-object v5, Lcom/amap/api/mapcore/util/fi;->b:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    aget-byte v5, v5, v0

    .line 166
    if-ge v1, v3, :cond_1

    if-eq v5, v7, :cond_b

    .line 167
    :cond_1
    if-eq v5, v7, :cond_7

    .line 173
    :goto_3
    sget-object v6, Lcom/amap/api/mapcore/util/fi;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    aget-byte v6, v6, v1

    .line 174
    if-ge v0, v3, :cond_2

    if-eq v6, v7, :cond_a

    .line 175
    :cond_2
    if-eq v6, v7, :cond_7

    .line 178
    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 182
    :goto_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 183
    if-ne v0, v8, :cond_3

    .line 184
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_3
    sget-object v5, Lcom/amap/api/mapcore/util/fi;->b:[B

    aget-byte v5, v5, v0

    .line 187
    if-ge v1, v3, :cond_4

    if-eq v5, v7, :cond_9

    .line 188
    :cond_4
    if-eq v5, v7, :cond_7

    .line 191
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    :goto_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 196
    if-ne v1, v8, :cond_5

    .line 197
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_5
    sget-object v6, Lcom/amap/api/mapcore/util/fi;->b:[B

    aget-byte v1, v6, v1

    .line 200
    if-ge v0, v3, :cond_6

    if-eq v1, v7, :cond_8

    .line 201
    :cond_6
    if-eq v1, v7, :cond_7

    .line 204
    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 206
    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v1, v0

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_2
.end method

.method private static b([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/mapcore/util/fn;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 112
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 113
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 115
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 122
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 8

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    array-length v2, p0

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    if-ge v0, v2, :cond_0

    .line 217
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 219
    if-ne v3, v2, :cond_1

    .line 220
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->a:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->a:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    const-string/jumbo v0, "=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 226
    if-ne v5, v2, :cond_2

    .line 227
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->a:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->a:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    sget-object v0, Lcom/amap/api/mapcore/util/fi;->a:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    const-string/jumbo v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 234
    :cond_2
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 235
    sget-object v6, Lcom/amap/api/mapcore/util/fi;->a:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    sget-object v6, Lcom/amap/api/mapcore/util/fi;->a:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    sget-object v4, Lcom/amap/api/mapcore/util/fi;->a:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 240
    sget-object v3, Lcom/amap/api/mapcore/util/fi;->a:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
