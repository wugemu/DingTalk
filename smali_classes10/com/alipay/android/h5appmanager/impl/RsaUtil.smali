.class public Lcom/alipay/android/h5appmanager/impl/RsaUtil;
.super Ljava/lang/Object;
.source "RsaUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final TAG:Ljava/lang/String; = "RsaUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    const-string/jumbo v5, "RSA"

    invoke-static {v5, p1}, Lcom/alipay/android/h5appmanager/impl/RsaUtil;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 116
    .local v3, "privateKey":Ljava/security/PrivateKey;
    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 117
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 119
    invoke-static {p0}, Lcom/alipay/android/h5appmanager/impl/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 121
    .local v2, "output":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "output":[B
    .end local v3    # "privateKey":Ljava/security/PrivateKey;
    :goto_0
    return-object v4

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    const-string/jumbo v5, "RSA"

    invoke-static {v5, p1}, Lcom/alipay/android/h5appmanager/impl/RsaUtil;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 89
    .local v4, "pubkey":Ljava/security/PublicKey;
    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 90
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 92
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 93
    .local v3, "plaintext":[B
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 95
    .local v2, "output":[B
    invoke-static {v2}, Lcom/alipay/android/h5appmanager/impl/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 99
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "output":[B
    .end local v3    # "plaintext":[B
    .end local v4    # "pubkey":Ljava/security/PublicKey;
    :goto_0
    return-object v5

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 106
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 107
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 108
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 109
    .local v3, "privateKey":Ljava/security/PrivateKey;
    return-object v3
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Lcom/alipay/android/h5appmanager/impl/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    .local v0, "decodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 81
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 82
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "base64Sign"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v13, 0x0

    .line 32
    .local v13, "verified":Z
    const/4 v6, 0x0

    .line 33
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 36
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v15, 0x2

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 37
    .local v4, "decodedKey":[B
    new-instance v14, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v14, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 38
    .local v14, "x509":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v15, "RSA"

    invoke-static {v15}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 39
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v8, v14}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10

    .line 41
    .local v10, "pubKey":Ljava/security/PublicKey;
    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v11

    .line 42
    .local v11, "sigToVerify":[B
    const-string/jumbo v15, "SHA1withRSA"

    invoke-static {v15}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v12

    .line 43
    .local v12, "signature":Ljava/security/Signature;
    invoke-virtual {v12, v10}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 45
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/16 v15, 0x400

    :try_start_2
    new-array v3, v15, [B

    .line 49
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    move-result v15

    if-eqz v15, :cond_2

    .line 50
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .line 51
    .local v9, "len":I
    const/4 v15, 0x0

    invoke-virtual {v12, v3, v15, v9}, Ljava/security/Signature;->update([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 54
    .end local v3    # "buffer":[B
    .end local v9    # "len":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 55
    .end local v4    # "decodedKey":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    .end local v10    # "pubKey":Ljava/security/PublicKey;
    .end local v11    # "sigToVerify":[B
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v15, "RsaUtil"

    const-string/jumbo v16, "verify exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    if-eqz v1, :cond_0

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 64
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 66
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 72
    :cond_1
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "signature verify result "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    return v13

    .line 53
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "decodedKey":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v10    # "pubKey":Ljava/security/PublicKey;
    .restart local v11    # "sigToVerify":[B
    .restart local v12    # "signature":Ljava/security/Signature;
    .restart local v14    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :cond_2
    :try_start_6
    invoke-virtual {v12, v11}, Ljava/security/Signature;->verify([B)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v13

    .line 59
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 66
    :goto_4
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 69
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 60
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 61
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 67
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 68
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 69
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 60
    .end local v3    # "buffer":[B
    .end local v4    # "decodedKey":[B
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    .end local v10    # "pubKey":Ljava/security/PublicKey;
    .end local v11    # "sigToVerify":[B
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    .local v5, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 61
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 68
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 57
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_5
    if-eqz v1, :cond_3

    .line 59
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 64
    :cond_3
    :goto_6
    if-eqz v6, :cond_4

    .line 66
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 69
    :cond_4
    :goto_7
    throw v15

    .line 60
    :catch_5
    move-exception v5

    .line 61
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 67
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 68
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 57
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "decodedKey":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v10    # "pubKey":Ljava/security/PublicKey;
    .restart local v11    # "sigToVerify":[B
    .restart local v12    # "signature":Ljava/security/Signature;
    .restart local v14    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catchall_1
    move-exception v15

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 54
    .end local v4    # "decodedKey":[B
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    .end local v10    # "pubKey":Ljava/security/PublicKey;
    .end local v11    # "sigToVerify":[B
    .end local v12    # "signature":Ljava/security/Signature;
    .end local v14    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catch_7
    move-exception v5

    goto :goto_1

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "decodedKey":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v10    # "pubKey":Ljava/security/PublicKey;
    .restart local v11    # "sigToVerify":[B
    .restart local v12    # "signature":Ljava/security/Signature;
    .restart local v14    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catch_8
    move-exception v5

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
