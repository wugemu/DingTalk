.class public Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;
.super Lcom/mybank/android/phone/common/service/api/CipherService;
.source "CipherServiceImpl.java"


# static fields
.field private static d:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/CipherService;-><init>(Landroid/content/Context;)V

    .line 62
    const-string/jumbo v0, "SOFT"

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "HARD"

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->b:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "SOFT"

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    const-string/jumbo v0, "HARD"

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string/jumbo v0, "RSA/ECB/NoPadding"

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mode"    # I
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "desKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 365
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "DES"

    invoke-direct {v2, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 366
    .local v2, "key":Ljava/security/Key;
    const-string/jumbo v5, "DES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 367
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 370
    if-ne p0, v7, :cond_0

    .line 371
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 376
    .local v4, "plaintext":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 378
    .local v3, "output":[B
    if-ne p0, v7, :cond_1

    .line 379
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 386
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljava/security/Key;
    .end local v3    # "output":[B
    .end local v4    # "plaintext":[B
    :goto_1
    return-object v0

    .line 373
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "key":Ljava/security/Key;
    :cond_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .restart local v4    # "plaintext":[B
    goto :goto_0

    .line 381
    .restart local v3    # "output":[B
    :cond_1
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "Ciphertext":Ljava/lang/String;
    goto :goto_1

    .line 386
    .end local v0    # "Ciphertext":Ljava/lang/String;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljava/security/Key;
    .end local v3    # "output":[B
    .end local v4    # "plaintext":[B
    :catch_0
    move-exception v5

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "plaintext"    # [B
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string/jumbo v3, ""

    .line 186
    :goto_0
    return-object v3

    .line 173
    :cond_0
    :try_start_0
    const-string/jumbo v5, "RSA"

    invoke-static {v5, p2}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 174
    .local v2, "pubkey":Ljava/security/PublicKey;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 176
    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 179
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 180
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 181
    .local v1, "output":[B
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lhv;->c([BI)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "output":[B
    .end local v2    # "pubkey":Ljava/security/PublicKey;
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v3, 0x2

    :try_start_0
    invoke-static {p1, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 242
    .local v0, "decodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 243
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 244
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 246
    .end local v0    # "decodedKey":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 4
    .param p0, "strSrc"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 139
    .local v0, "bt":[B
    :try_start_0
    const-string/jumbo v1, "SHA-256"

    .line 140
    .local v1, "encName":Ljava/lang/String;
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 141
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    .end local v1    # "encName":Ljava/lang/String;
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    invoke-static {}, Ljev;->b()Z

    move-result v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx+r6XJa5xOTCEe02rV1bgPP1tZHWIaP1R1t4bPgI3Zpy6uy9dvIe6Mxr4oz+FmO4LZxBYavXm4sOTbokbRPLn55BJveoMWDz8WDwZE+9KI/jAM53GRfLqlTrWEeNPHE5ft+M4DzlaZvXi6304ISpSUJlhLV2X2rPIPzWcmSEe/+l+6tUfl3D6bfzjHcbl8SwfhQIzzJNWywnpKIvrHf1Gf8A9RplaZaC+iBjLZBGzyW8dKtcflZPnVZgli/Y2Rszksi2BRD1QvJFI6AzABsreyMSjGCyPKMvE1fQa+fh0S4rShUWncLeL2/TZUSJekYV6cXlZSxT3ZHYFTYFQX3WxwIDAQAB"

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAieksG5gvYwl4FU2SrV+loQHN9G6BcF4yKSsTMOSuQMJ+FyL2xz5ruYwp2WOyWvVGIBAJTHP3zm2i0KWyVx1U1P5hVuSAat56QSaxX3hT8gXb1hFMLtXkc51EBSvvubhbYW4KZWgdzUrnLz9lCSz2Nk1Qs4C8Goa/n4tTMnuYOdNGse7atAbXA2YRmKaPzFYrd7dyIGwbxcA5KGleEnoFZbTCL4TB/Zzlv/kR22c7SB9Ygcwn1PKbw7ZJP1VcBQdkayzlL4//yOusUEmyoUTcTHdDPRGqJOx7jqIbhyFUHgLi7L2S+rGJoTVtrR6QfwcSWaTCa1xbA+E+oTW6odn4VwIDAQAB"

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2391
    invoke-static {}, Ljev;->b()Z

    move-result v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+u3dJpvadxMqVJH4uEfhmY9+yjJJaplnd9iL9aX4nKty1yuRTSSDUWCaSXMF+RR/LWc1Wkt5lLWbXTZ2Bcv3vUTORrOyfRd5b3IGTJVERrcEDEJVbKN+CdX53CS18hAV3ugCUOHzI53VT4TLWh0P9OtqBXpOkBzsRvCl36Yc+L5whiBy64cTfcp+GAcRBLaUl2ZvVojg6WKwcTBinkEsGIcUdv/whftnXIWAK4jeOX7NddKcaZO7aehEq2XO1IryzgAUnRr9Og515VpRBvBYMxKBvHcXFpCGWfg8xWIalU4BiwY6etKsYyAOz9JOnt8kLMR0POyVVwRWGn20xUOuKwIDAQAB"

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv+8ILqsASxulyk44beo/JJeMs4l1JcrkQI6LAfxBsSVFFm0/RkRGjd9pLT0Y4VcPU/CfKvXesp2PcYOkdj+E74gZ49ePRtohCfvJmeIvNFcwT5etvDLcqxX04+MbwtrQt7gvluQaPmCoRIXXTTAZf9cSvDYoRKQZ9A64Rqrse/YpImurI1yuT8vGw5vf22/7P87C5qTT/lpqsPx9kVdDZ/pY1O72SON25VDrjEK7R5rwRxMQOY9TxCmgPJzj3uUXtYf1ZObZVlbIjpZ20rtPTmh48lyjYSToIWwJa6UzvF0NcwXWMI3DrgKLUVCUpktWqWeYgV7JGc9E8LZmMNLmYwIDAQAB"

    goto :goto_0
.end method


# virtual methods
.method public decrypt_Base64_RSA_ByRSAPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    :try_start_0
    const-string/jumbo v4, "RSA"

    .line 1251
    const/4 v5, 0x2

    invoke-static {p2, v5}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v5

    .line 1252
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 1253
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 1254
    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 220
    .local v2, "privateKey":Ljava/security/PrivateKey;
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 221
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 222
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 224
    .local v1, "output":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "output":[B
    .end local v2    # "privateKey":Ljava/security/PrivateKey;
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public decrypt_DES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "strkey"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string/jumbo v0, ""

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt_DES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "strkey"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string/jumbo v0, ""

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt_Hard_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0x100

    .line 260
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/16 v10, 0x100

    new-array v9, v10, [B

    .line 263
    .local v9, "targetBytes":[B
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 264
    .local v7, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_0

    .line 265
    const/16 v10, 0x80

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x80

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 266
    .local v2, "integer":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    aput-byte v10, v9, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "integer":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 269
    .local v3, "length":I
    const/16 v10, 0xa

    if-ge v3, v10, :cond_1

    .line 270
    const-string/jumbo v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    :goto_1
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 277
    .local v5, "pin":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x2

    invoke-static {v5, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    const-string/jumbo v10, "RSA"

    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v6

    .line 284
    .local v6, "pubkey":Ljava/security/PublicKey;
    if-nez v6, :cond_2

    .line 286
    const/4 v10, 0x0

    .line 296
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v5    # "pin":[B
    .end local v6    # "pubkey":Ljava/security/PublicKey;
    .end local v7    # "random":Ljava/util/Random;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "targetBytes":[B
    :goto_2
    return-object v10

    .line 273
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "targetBytes":[B
    :cond_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v7    # "random":Ljava/util/Random;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "targetBytes":[B
    :catch_0
    move-exception v10

    const-string/jumbo v10, ""

    goto :goto_2

    .line 288
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v5    # "pin":[B
    .restart local v6    # "pubkey":Ljava/security/PublicKey;
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "targetBytes":[B
    :cond_2
    :try_start_1
    const-string/jumbo v10, "RSA/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 290
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 292
    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 293
    .local v4, "output":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v4, v11}, Lhv;->c([BI)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public encrypt_RSA_Base64(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "timeStampFlag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    .line 1115
    const-string/jumbo v2, "HARD"

    iget-object v3, p0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1116
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->c()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "key":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 101
    .local v0, "encryptCurrentPwd":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 102
    if-eqz p2, :cond_0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->encrypt_RSA_Base64_ByRSAPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    return-object v0

    .line 1118
    .end local v0    # "encryptCurrentPwd":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public encrypt_RSA_Base64_ByRSAPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 191
    const-string/jumbo v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    const-string/jumbo v4, ""

    .line 212
    :goto_0
    return-object v4

    .line 196
    :cond_0
    :try_start_0
    const-string/jumbo v6, "RSA"

    invoke-static {v6, p2}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 197
    .local v3, "pubkey":Ljava/security/PublicKey;
    if-nez v3, :cond_1

    move-object v4, v5

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 203
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 205
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 206
    .local v2, "plaintext":[B
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 207
    .local v1, "output":[B
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v1, v6}, Lhv;->c([BI)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .local v4, "s":Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "output":[B
    .end local v2    # "plaintext":[B
    .end local v3    # "pubkey":Ljava/security/PublicKey;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v5

    goto :goto_0
.end method

.method public encrypt_SHA256_RSA_Base64(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "plaintext"    # Ljava/lang/String;
    .param p2, "timeStampFlag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 90
    .local v1, "plaintextByte":[B
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "encryptCurrentPwd":Ljava/lang/String;
    return-object v0
.end method

.method public encrypt_Soft_SHA256_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string/jumbo v0, "SOFT"

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->c:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;->encrypt_SHA256_RSA_Base64(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt_Soft_SM3_SM2_Base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 420
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 424
    return-void
.end method
