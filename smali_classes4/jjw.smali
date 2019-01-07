.class public final Ljjw;
.super Ljava/lang/Object;
.source "AESUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x10

    const/4 v9, 0x0

    .line 16
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v9

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v11, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 24
    .local v6, "raw":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v10, "AES"

    invoke-direct {v7, v6, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 25
    .local v7, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v10, "AES/CBC/PKCS5Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 27
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/16 v10, 0x10

    new-array v3, v10, [B

    .line 28
    .local v3, "ivBytes":[B
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 29
    .local v5, "random":Ljava/util/Random;
    invoke-virtual {v5, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 31
    invoke-static {v3}, Ljjw;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "ivString":Ljava/lang/String;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 33
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v7, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 36
    .local v1, "encrypted":[B
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lhv;->c([BI)[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 38
    .local v8, "strBase64":Ljava/lang/String;
    const/16 v10, 0x2f

    const/16 v11, 0x5f

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 39
    const/16 v10, 0x2b

    const/16 v11, 0x2d

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 40
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 42
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "encrypted":[B
    .end local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "ivBytes":[B
    .end local v4    # "ivString":Ljava/lang/String;
    .end local v5    # "random":Ljava/util/Random;
    .end local v6    # "raw":[B
    .end local v7    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "strBase64":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    .line 50
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "stmp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "stmp":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
