.class public Lcom/alipay/android/app/safepaybase/encrypt/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 129
    .local v4, "decryptData":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v12, 0x2

    .line 130
    invoke-static {p1, v12}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 131
    .local v10, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 132
    .local v8, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v8, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v11

    .line 134
    .local v11, "privateKey":Ljava/security/PrivateKey;
    const-string/jumbo v12, "RSA/ECB/PKCS1Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 135
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 137
    const/4 v12, 0x2

    invoke-static {p0, v12}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v9

    .line 139
    .local v9, "plaintext":[B
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 140
    .local v0, "blockSize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_1
    array-length v12, v9

    if-ge v7, v12, :cond_1

    .line 143
    array-length v12, v9

    sub-int/2addr v12, v7

    if-ge v12, v0, :cond_0

    array-length v12, v9

    sub-int/2addr v12, v7

    :goto_1
    invoke-virtual {v3, v9, v7, v12}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 142
    add-int/2addr v7, v0

    goto :goto_0

    :cond_0
    move v12, v0

    .line 143
    goto :goto_1

    .line 148
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .end local v4    # "decryptData":Ljava/lang/String;
    .local v5, "decryptData":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v5    # "decryptData":Ljava/lang/String;
    .restart local v4    # "decryptData":Ljava/lang/String;
    move-object v1, v2

    .line 162
    .end local v0    # "blockSize":I
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "i":I
    .end local v8    # "keyf":Ljava/security/KeyFactory;
    .end local v9    # "plaintext":[B
    .end local v10    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v11    # "privateKey":Ljava/security/PrivateKey;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_2
    return-object v4

    .line 155
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "decryptData":Ljava/lang/String;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v5    # "decryptData":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "keyf":Ljava/security/KeyFactory;
    .restart local v9    # "plaintext":[B
    .restart local v10    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .restart local v11    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    move-object v4, v5

    .end local v5    # "decryptData":Ljava/lang/String;
    .restart local v4    # "decryptData":Ljava/lang/String;
    move-object v1, v2

    .line 158
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 149
    .end local v0    # "blockSize":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v8    # "keyf":Ljava/security/KeyFactory;
    .end local v9    # "plaintext":[B
    .end local v10    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v11    # "privateKey":Ljava/security/PrivateKey;
    :catch_1
    move-exception v6

    .line 150
    .local v6, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz v1, :cond_2

    .line 154
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 155
    :catch_2
    move-exception v6

    .line 156
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_4
    if-eqz v1, :cond_3

    .line 154
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 158
    :cond_3
    :goto_5
    throw v12

    .line 155
    :catch_3
    move-exception v6

    .line 156
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 152
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v7    # "i":I
    .restart local v8    # "keyf":Ljava/security/KeyFactory;
    .restart local v9    # "plaintext":[B
    .restart local v10    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .restart local v11    # "privateKey":Ljava/security/PrivateKey;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 149
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "sign"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 193
    :try_start_0
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 194
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    const/4 v6, 0x2

    invoke-static {p2, v6}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v2

    .line 195
    .local v2, "encodedKey":[B
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 196
    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 198
    .local v4, "pubKey":Ljava/security/PublicKey;
    const-string/jumbo v6, "SHA1WithRSA"

    .line 199
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 201
    .local v5, "signature":Ljava/security/Signature;
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 202
    const-string/jumbo v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 204
    const/4 v6, 0x2

    invoke-static {p1, v6}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    .end local v2    # "encodedKey":[B
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "pubKey":Ljava/security/PublicKey;
    .end local v5    # "signature":Ljava/security/Signature;
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v5, 0x0

    .line 44
    .local v5, "encryptData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 45
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    const-string/jumbo v10, "Rsa.encrypt"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "key:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    const-string/jumbo v9, "RSA"

    invoke-static {v9, p1}, Lcom/alipay/android/app/safepaybase/encrypt/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v8

    .line 49
    .local v8, "pubkey":Ljava/security/PublicKey;
    const-string/jumbo v9, "RSA/ECB/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 50
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 54
    .local v7, "plaintext":[B
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 55
    .local v0, "blockSize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_1
    array-length v9, v7

    if-ge v6, v9, :cond_1

    .line 58
    array-length v9, v7

    sub-int/2addr v9, v6

    if-ge v9, v0, :cond_0

    array-length v9, v7

    sub-int/2addr v9, v6

    :goto_1
    invoke-virtual {v3, v7, v6, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    add-int/2addr v6, v0

    goto :goto_0

    :cond_0
    move v9, v0

    .line 58
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 70
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 78
    .end local v0    # "blockSize":I
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "i":I
    .end local v7    # "plaintext":[B
    .end local v8    # "pubkey":Ljava/security/PublicKey;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_2
    return-object v5

    .line 71
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "i":I
    .restart local v7    # "plaintext":[B
    .restart local v8    # "pubkey":Ljava/security/PublicKey;
    :catch_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 74
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 65
    .end local v0    # "blockSize":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "i":I
    .end local v7    # "plaintext":[B
    .end local v8    # "pubkey":Ljava/security/PublicKey;
    :catch_1
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    if-eqz v1, :cond_2

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 71
    :catch_2
    move-exception v4

    .line 72
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 68
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v1, :cond_3

    .line 70
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 74
    :cond_3
    :goto_5
    throw v9

    .line 71
    :catch_3
    move-exception v4

    .line 72
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 68
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "i":I
    .restart local v7    # "plaintext":[B
    .restart local v8    # "pubkey":Ljava/security/PublicKey;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 65
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static encryptToByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "encryptData":[B
    const/4 v1, 0x0

    .line 88
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v9, "RSA"

    invoke-static {v9, p1}, Lcom/alipay/android/app/safepaybase/encrypt/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v8

    .line 90
    .local v8, "pubkey":Ljava/security/PublicKey;
    const-string/jumbo v9, "RSA/ECB/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 91
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 93
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 95
    .local v7, "plaintext":[B
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 96
    .local v0, "blockSize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_1
    array-length v9, v7

    if-ge v6, v9, :cond_1

    .line 99
    array-length v9, v7

    sub-int/2addr v9, v6

    if-ge v9, v0, :cond_0

    array-length v9, v7

    sub-int/2addr v9, v6

    :goto_1
    invoke-virtual {v3, v7, v6, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    add-int/2addr v6, v0

    goto :goto_0

    :cond_0
    move v9, v0

    .line 99
    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 111
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 119
    .end local v0    # "blockSize":I
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "i":I
    .end local v7    # "plaintext":[B
    .end local v8    # "pubkey":Ljava/security/PublicKey;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_2
    return-object v5

    .line 112
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "i":I
    .restart local v7    # "plaintext":[B
    .restart local v8    # "pubkey":Ljava/security/PublicKey;
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 115
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 106
    .end local v0    # "blockSize":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "i":I
    .end local v7    # "plaintext":[B
    .end local v8    # "pubkey":Ljava/security/PublicKey;
    :catch_1
    move-exception v4

    .line 107
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    if-eqz v1, :cond_2

    .line 111
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 112
    :catch_2
    move-exception v4

    .line 113
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 109
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v1, :cond_3

    .line 111
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :cond_3
    :goto_5
    throw v9

    .line 112
    :catch_3
    move-exception v4

    .line 113
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 109
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "i":I
    .restart local v7    # "plaintext":[B
    .restart local v8    # "pubkey":Ljava/security/PublicKey;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 106
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 36
    .local v0, "decodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 38
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 39
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string/jumbo v0, "utf-8"

    .line 170
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v7, 0x2

    .line 171
    invoke-static {p1, v7}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 172
    .local v4, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 173
    .local v2, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 175
    .local v3, "priKey":Ljava/security/PrivateKey;
    const-string/jumbo v7, "SHA1WithRSA"

    .line 176
    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 178
    .local v5, "signature":Ljava/security/Signature;
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    .line 181
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 183
    .local v6, "signed":[B
    const/4 v7, 0x2

    invoke-static {v6, v7}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 188
    .end local v2    # "keyf":Ljava/security/KeyFactory;
    .end local v3    # "priKey":Ljava/security/PrivateKey;
    .end local v4    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v5    # "signature":Ljava/security/Signature;
    .end local v6    # "signed":[B
    :goto_0
    return-object v7

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 188
    const/4 v7, 0x0

    goto :goto_0
.end method
