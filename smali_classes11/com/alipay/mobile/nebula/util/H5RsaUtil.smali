.class public Lcom/alipay/mobile/nebula/util/H5RsaUtil;
.super Ljava/lang/Object;
.source "H5RsaUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final TAG:Ljava/lang/String; = "RsaUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    const-string/jumbo v5, "RSA"

    invoke-static {v5, p1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 108
    .local v3, "privateKey":Ljava/security/PrivateKey;
    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 109
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 111
    .local v2, "output":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "output":[B
    .end local v3    # "privateKey":Ljava/security/PrivateKey;
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KeyError"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    const-string/jumbo v4, "KeyError"

    goto :goto_0

    .line 117
    :cond_0
    const-string/jumbo v5, "RsaUtil"

    const-string/jumbo v6, "exception detail"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    const-string/jumbo v5, "RSA"

    invoke-static {v5, p1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 77
    .local v4, "pubkey":Ljava/security/PublicKey;
    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 78
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 79
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 80
    .local v3, "plaintext":[B
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 81
    .local v2, "output":[B
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 87
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "output":[B
    .end local v3    # "plaintext":[B
    .end local v4    # "pubkey":Ljava/security/PublicKey;
    :goto_0
    return-object v5

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KeyError"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const-string/jumbo v5, "KeyError"

    goto :goto_0

    .line 86
    :cond_0
    const-string/jumbo v5, "RsaUtil"

    const-string/jumbo v6, "exception detail"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 97
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 98
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 99
    .local v3, "privateKey":Ljava/security/PrivateKey;
    return-object v3

    .line 101
    .end local v0    # "keyBytes":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v3    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "KeyError"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 66
    .local v0, "decodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 67
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 68
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 70
    .end local v0    # "decodedKey":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "KeyError"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "base64Sign"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v11, 0x0

    .line 30
    .local v11, "verified":Z
    const/4 v1, 0x0

    .line 31
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v13, 0x400

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v3

    .line 34
    .local v3, "buffer":[B
    const/4 v13, 0x2

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 35
    .local v4, "decodedKey":[B
    new-instance v12, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v12, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    .local v12, "x509":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v13, "RSA"

    invoke-static {v13}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 37
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 39
    .local v8, "pubKey":Ljava/security/PublicKey;
    const/4 v13, 0x2

    .line 40
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v9

    .line 41
    .local v9, "sigToVerify":[B
    const-string/jumbo v13, "SHA1withRSA"

    invoke-static {v13}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    .line 42
    .local v10, "signature":Ljava/security/Signature;
    invoke-virtual {v10, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 44
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    move-result v13

    if-eqz v13, :cond_0

    .line 47
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 48
    .local v7, "len":I
    const/4 v13, 0x0

    invoke-virtual {v10, v3, v13, v7}, Ljava/security/Signature;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 52
    .end local v7    # "len":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 53
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "decodedKey":[B
    .end local v6    # "keyFactory":Ljava/security/KeyFactory;
    .end local v8    # "pubKey":Ljava/security/PublicKey;
    .end local v9    # "sigToVerify":[B
    .end local v10    # "signature":Ljava/security/Signature;
    .end local v12    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string/jumbo v13, "RsaUtil"

    const-string/jumbo v14, "verify exception"

    invoke-static {v13, v14, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 56
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    const-string/jumbo v13, "RsaUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "signature verify result "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v11

    .line 51
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "decodedKey":[B
    .restart local v6    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v8    # "pubKey":Ljava/security/PublicKey;
    .restart local v9    # "sigToVerify":[B
    .restart local v10    # "signature":Ljava/security/Signature;
    .restart local v12    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :cond_0
    :try_start_3
    invoke-virtual {v10, v9}, Ljava/security/Signature;->verify([B)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v11

    .line 55
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 56
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 57
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 55
    .end local v4    # "decodedKey":[B
    .end local v6    # "keyFactory":Ljava/security/KeyFactory;
    .end local v8    # "pubKey":Ljava/security/PublicKey;
    .end local v9    # "sigToVerify":[B
    .end local v10    # "signature":Ljava/security/Signature;
    .end local v12    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catchall_0
    move-exception v13

    :goto_3
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 56
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v13

    .line 55
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "decodedKey":[B
    .restart local v6    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v8    # "pubKey":Ljava/security/PublicKey;
    .restart local v9    # "sigToVerify":[B
    .restart local v10    # "signature":Ljava/security/Signature;
    .restart local v12    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 52
    .end local v4    # "decodedKey":[B
    .end local v6    # "keyFactory":Ljava/security/KeyFactory;
    .end local v8    # "pubKey":Ljava/security/PublicKey;
    .end local v9    # "sigToVerify":[B
    .end local v10    # "signature":Ljava/security/Signature;
    .end local v12    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
