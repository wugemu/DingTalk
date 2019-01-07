.class public final Lcom;
.super Ljava/lang/Object;
.source "EncyptSmallSecretUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 26
    if-nez p0, :cond_1

    .line 27
    const/4 p0, 0x0

    .line 42
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 30
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDADi5gpOfapEB+3aLYTuXSXpSX\nkmPBe7wDvhuwR69Ipcy8kqHgQepI0fOyI4db6u1h56i9VRjp4DmaHwFfkAw07GEq\n2/YPeqNdJbPVY3/cEuAyp7eI7JupiAOt7ndibwBdMjan3UrCVfIvQv7q2aQzrsPw\nsVJqpU2dKqkKmpGqWwIDAQAB"

    .line 1054
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 1055
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 1056
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1057
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 32
    .local v2, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom;->a([BLjava/security/PublicKey;)[B

    move-result-object v1

    .line 34
    .local v1, "encryptByte":[B
    if-eqz v1, :cond_0

    .line 35
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 38
    .end local v1    # "encryptByte":[B
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a([BLjava/security/PublicKey;)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 70
    :try_start_0
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 72
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 74
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const/4 v2, 0x0

    goto :goto_0
.end method
