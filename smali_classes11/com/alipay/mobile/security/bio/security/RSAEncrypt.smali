.class public Lcom/alipay/mobile/security/bio/security/RSAEncrypt;
.super Ljava/lang/Object;
.source "RSAEncrypt.java"


# static fields
.field private static final a:[C

.field public static final privateKeyName:Ljava/lang/String; = "privateKey.keystore"

.field public static final publickKeyName:Ljava/lang/String; = "publicKey.keystore"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->a:[C

    return-void

    :array_0
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/security/interfaces/RSAPrivateKey;[B)[B
    .locals 5
    .param p0, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p1, "cipherData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    if-nez p0, :cond_0

    .line 355
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u89e3\u5bc6\u79c1\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_0
    :try_start_0
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 365
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 366
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 372
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 369
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u89e3\u5bc6\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :catch_1
    move-exception v1

    .line 371
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 372
    const/4 v2, 0x0

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u89e3\u5bc6\u79c1\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :catch_3
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u5bc6\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 378
    :catch_4
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u5bc6\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encrypt(Ljava/security/interfaces/RSAPrivateKey;[B)[B
    .locals 5
    .param p0, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p1, "plainTextData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    if-nez p0, :cond_0

    .line 319
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u52a0\u5bc6\u79c1\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 325
    :cond_0
    :try_start_0
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 327
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 328
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 334
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 331
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u52a0\u5bc6\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :catch_1
    move-exception v1

    .line 333
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x0

    goto :goto_0

    .line 336
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u52a0\u5bc6\u79c1\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :catch_3
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u660e\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :catch_4
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u660e\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
    .locals 5
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "plainTextData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u52a0\u5bc6\u516c\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :cond_0
    :try_start_0
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 291
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 292
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 298
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 295
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u52a0\u5bc6\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    :catch_1
    move-exception v1

    .line 297
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    goto :goto_0

    .line 300
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u52a0\u5bc6\u516c\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :catch_3
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u660e\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :catch_4
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u660e\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static genKeyPair(Ljava/lang/String;)V
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "keyPairGen":Ljava/security/KeyPairGenerator;
    :try_start_0
    const-string/jumbo v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    :goto_0
    const/16 v11, 0x800

    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 67
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 69
    .local v1, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPrivateKey;

    .line 71
    .local v5, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v9

    check-cast v9, Ljava/security/interfaces/RSAPublicKey;

    .line 75
    .local v9, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_1
    invoke-interface {v9}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v11

    const/4 v12, 0x0

    .line 74
    invoke-static {v11, v12}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "publicKeyString":Ljava/lang/String;
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v11

    const/4 v12, 0x0

    .line 77
    invoke-static {v11, v12}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "privateKeyString":Ljava/lang/String;
    new-instance v8, Ljava/io/FileWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/publicKey.keystore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v8, "pubfw":Ljava/io/FileWriter;
    new-instance v4, Ljava/io/FileWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/privateKey.keystore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "prifw":Ljava/io/FileWriter;
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 83
    .local v7, "pubbw":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    .local v3, "pribw":Ljava/io/BufferedWriter;
    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 87
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 88
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 90
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 91
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v3    # "pribw":Ljava/io/BufferedWriter;
    .end local v4    # "prifw":Ljava/io/FileWriter;
    .end local v6    # "privateKeyString":Ljava/lang/String;
    .end local v7    # "pubbw":Ljava/io/BufferedWriter;
    .end local v8    # "pubfw":Ljava/io/FileWriter;
    .end local v10    # "publicKeyString":Ljava/lang/String;
    :goto_1
    return-void

    .line 59
    .end local v1    # "keyPair":Ljava/security/KeyPair;
    .end local v5    # "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    .end local v9    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "keyPair":Ljava/security/KeyPair;
    .restart local v5    # "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    .restart local v9    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static loadPrivateKey(Ljava/io/InputStream;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v3, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "readLine":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 207
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    .line 210
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 216
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "readLine":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u79c1\u94a5\u6570\u636e\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "readLine":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->loadPrivateKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 220
    .local v1, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    return-object v1

    .line 218
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    .end local v2    # "readLine":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u79c1\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static loadPrivateKeyByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/privateKey.keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 235
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v2, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "readLine":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 237
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 247
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "readLine":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u6570\u636e\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "readLine":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 249
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "readLine":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static loadPrivateKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 5
    .param p0, "privateKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 257
    .local v0, "buffer":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 258
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 260
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v3

    .line 262
    .end local v0    # "buffer":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static loadPublicKey(Ljava/io/InputStream;)Ljava/security/interfaces/RSAPublicKey;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v3, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "readLine":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 110
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "readLine":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u516c\u94a5\u6570\u636e\u6d41\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "readLine":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 123
    .local v1, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    return-object v1

    .line 121
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v2    # "readLine":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u516c\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static loadPublicKeyByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/publicKey.keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v2, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "readLine":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "readLine":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u6570\u636e\u6d41\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "readLine":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 152
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "readLine":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 11
    .param p0, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\n"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "keyStrs":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v5, v3, v6

    .line 171
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_0

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 182
    .local v0, "buffer":[B
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 183
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 184
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v6

    .line 186
    .end local v0    # "buffer":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v6

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :catch_1
    move-exception v6

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 190
    :catch_2
    move-exception v6

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method
