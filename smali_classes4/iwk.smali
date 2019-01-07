.class public Liwk;
.super Ljava/lang/Object;
.source "AESCBCBase.java"


# instance fields
.field a:I

.field b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Liwk;->c:Ljava/lang/String;

    .line 26
    iput v1, p0, Liwk;->a:I

    .line 27
    iput v1, p0, Liwk;->b:I

    .line 30
    return-void
.end method

.method private a()Ljavax/crypto/Cipher;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 81
    iget-object v6, p0, Liwk;->c:Ljava/lang/String;

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 82
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Liwk;->e:[B

    iget-object v7, p0, Liwk;->d:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 83
    .local v2, "encryptKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v0, v8, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    if-nez v6, :cond_0

    .line 86
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "set SecureRandom"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v8, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    if-nez v6, :cond_1

    .line 91
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "new SecureRandom"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 93
    .local v5, "random":Ljava/security/SecureRandom;
    iget v6, p0, Liwk;->b:I

    new-array v3, v6, [B

    .line 94
    .local v3, "iv":[B
    invoke-virtual {v5, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 95
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 97
    .local v4, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0, v6, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v3    # "iv":[B
    .end local v4    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "random":Ljava/security/SecureRandom;
    :cond_1
    :goto_0
    return-object v0

    .line 98
    .restart local v3    # "iv":[B
    .restart local v4    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v5    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .locals 6
    .param p1, "algoCode"    # I
    .param p2, "keyVersion"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "os"    # Ljava/io/OutputStream;
    .param p5, "tempStorage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0x2000

    .line 134
    invoke-direct {p0}, Liwk;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 136
    .local v0, "cipher":Ljavax/crypto/Cipher;
    if-eqz p5, :cond_0

    array-length v4, p5

    if-ge v4, v5, :cond_1

    .line 137
    :cond_0
    new-array p5, v5, [B

    .line 141
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 146
    :cond_2
    invoke-static {p1}, Liwg;->a(I)[B

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 147
    invoke-static {p2}, Liwg;->a(I)[B

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 149
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p4, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 152
    .local v1, "cos":Ljavax/crypto/CipherOutputStream;
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-virtual {p3, p5, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "read":I
    if-ltz v3, :cond_4

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v1, p5, v4, v3}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v1    # "cos":Ljavax/crypto/CipherOutputStream;
    .end local v3    # "read":I
    :catchall_0
    move-exception v4

    .line 160
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    invoke-virtual {p3}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :cond_3
    :goto_1
    throw v4

    .line 155
    .restart local v1    # "cos":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "read":I
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    invoke-virtual {p3}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 165
    :cond_5
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v1    # "cos":Ljavax/crypto/CipherOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "read":I
    :catch_1
    move-exception v2

    .line 164
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "tempStorage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dingtalk/cryptokit/InvalidIvException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v10, 0x2000

    .line 170
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 172
    const-wide/16 v8, 0x8

    invoke-virtual {p1, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 175
    :cond_0
    iget v7, p0, Liwk;->b:I

    new-array v4, v7, [B

    .line 176
    .local v4, "iv":[B
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 177
    .local v6, "read":I
    iget v7, p0, Liwk;->b:I

    if-ge v6, v7, :cond_1

    .line 178
    new-instance v7, Lcom/dingtalk/cryptokit/InvalidIvException;

    invoke-direct {v7}, Lcom/dingtalk/cryptokit/InvalidIvException;-><init>()V

    throw v7

    .line 181
    :cond_1
    iget-object v7, p0, Liwk;->c:Ljava/lang/String;

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 182
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, p0, Liwk;->e:[B

    iget-object v8, p0, Liwk;->d:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    .local v2, "decryptKey":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 184
    .local v5, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 185
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 187
    .local v1, "cos":Ljavax/crypto/CipherOutputStream;
    if-eqz p3, :cond_2

    array-length v7, p3

    if-ge v7, v10, :cond_3

    .line 188
    :cond_2
    new-array p3, v10, [B

    .line 192
    :cond_3
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x2000

    :try_start_0
    invoke-virtual {p1, p3, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_5

    .line 193
    const/4 v7, 0x0

    invoke-virtual {v1, p3, v7, v6}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v7

    .line 198
    :try_start_1
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 199
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 200
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :cond_4
    :goto_1
    throw v7

    .line 198
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 199
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 200
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :cond_6
    :goto_2
    const/4 v7, 0x1

    return v7

    .line 202
    :catch_0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 203
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a([B)[B
    .locals 7
    .param p1, "plainBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/KeyNotSetException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-direct {p0}, Liwk;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 63
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 64
    .local v1, "iv":[B
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 66
    .local v3, "secret":[B
    array-length v4, v1

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 67
    .local v2, "result":[B
    array-length v4, v1

    invoke-static {v1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    array-length v4, v1

    array-length v5, v3

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    return-object v2
.end method

.method public final b([B)[B
    .locals 5
    .param p1, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/KeyNotSetException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Lcom/dingtalk/cryptokit/InvalidIvException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    array-length v3, p1

    iget v4, p0, Liwk;->b:I

    if-ge v3, v4, :cond_0

    .line 122
    new-instance v3, Lcom/dingtalk/cryptokit/InvalidIvException;

    invoke-direct {v3}, Lcom/dingtalk/cryptokit/InvalidIvException;-><init>()V

    throw v3

    .line 124
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget v3, p0, Liwk;->b:I

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 126
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v3, p0, Liwk;->c:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 127
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Liwk;->e:[B

    iget-object v4, p0, Liwk;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    .local v1, "decryptKey":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 130
    const/16 v3, 0x10

    array-length v4, p1

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public final c([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    const-string/jumbo v0, "AES"

    .line 1053
    array-length v1, p1

    .line 2033
    iget v2, p0, Liwk;->a:I

    .line 1053
    if-eq v1, v2, :cond_0

    .line 1054
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    throw v0

    .line 1056
    :cond_0
    iput-object p1, p0, Liwk;->e:[B

    .line 1057
    iput-object v0, p0, Liwk;->d:Ljava/lang/String;

    .line 50
    return-void
.end method
