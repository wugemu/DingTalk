.class public final Lfun;
.super Ljava/lang/Object;
.source "AESUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfun$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static a(I)Lfun$a;
    .locals 4
    .param p0, "length"    # I

    .prologue
    const/16 v3, 0x80

    .line 66
    invoke-static {v3}, Lfun;->b(I)[B

    move-result-object v0

    .line 67
    .local v0, "aesKey":[B
    invoke-static {v3}, Lfun;->b(I)[B

    move-result-object v1

    .line 68
    .local v1, "ivParameter":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    if-eqz v1, :cond_0

    array-length v3, v1

    if-gtz v3, :cond_1

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 74
    :goto_0
    return-object v2

    .line 71
    :cond_1
    new-instance v2, Lfun$a;

    invoke-direct {v2}, Lfun$a;-><init>()V

    .line 72
    .local v2, "randomAESInfo":Lfun$a;
    iput-object v0, v2, Lfun$a;->a:[B

    .line 73
    iput-object v1, v2, Lfun$a;->b:[B

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B[B)Z
    .locals 14
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "aesKeys"    # [B
    .param p3, "ivParameter"    # [B

    .prologue
    .line 96
    invoke-static {p0}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v9, v0

    if-lez v9, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v9, v0

    if-lez v9, :cond_1

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 103
    .local v4, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    invoke-static {p1}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    invoke-static {p1}, Lfuu;->b(Ljava/lang/String;)V

    .line 106
    :cond_0
    const-string/jumbo v9, "AES/CBC/PKCS5PADDING"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 107
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v9, "AES"

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 108
    .local v8, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 109
    .local v7, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 110
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .end local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .local v5, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :try_start_2
    invoke-static {v2, v5}, Lcom/laiwang/protocol/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    invoke-static {v2}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 119
    invoke-static {v5}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 v9, 0x1

    .line 122
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .end local v7    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v8    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return v9

    .line 114
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :catch_0
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string/jumbo v9, "outverify"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "[encryptFile] exception:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    invoke-static {v1}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 119
    invoke-static {v4}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 122
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 118
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v1}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 119
    invoke-static {v4}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v9

    .line 118
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v7    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .restart local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 114
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .restart local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private static b(I)[B
    .locals 9
    .param p0, "length"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 43
    :try_start_0
    const-string/jumbo v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    :try_start_1
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 51
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 52
    .local v2, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 57
    .end local v1    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v2    # "sk":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 46
    const-string/jumbo v4, "outverify"

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[genRandomAESKey] getInstance exception:"

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "kg":Ljavax/crypto/KeyGenerator;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string/jumbo v4, "outverify"

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[genRandomAESKey] init exception:"

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
