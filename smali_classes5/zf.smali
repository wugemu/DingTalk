.class public final Lzf;
.super Ljava/lang/Object;
.source "AESEncryptUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 210
    const-string/jumbo v3, ""

    .line 211
    .local v3, "repairPassword":Ljava/lang/String;
    const/4 v2, 0x0

    .line 212
    .local v2, "repairCount":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    const/16 v2, 0x10

    .line 224
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 226
    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, "passLen":I
    if-le v1, v6, :cond_1

    .line 217
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 219
    :cond_1
    rsub-int/lit8 v2, v1, 0x10

    .line 220
    move-object v3, p0

    goto :goto_0

    .line 229
    .end local v1    # "passLen":I
    .restart local v0    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    const-string/jumbo v8, "AESEncryptUtils"

    const-string/jumbo v9, "doEncrypt fail for in or out is null"

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 91
    .local v7, "r":Ljava/security/SecureRandom;
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 92
    .local v2, "iv":[B
    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 93
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 96
    const-string/jumbo v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 97
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string/jumbo v9, "AES"

    invoke-direct {v4, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 98
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 99
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 101
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 102
    .end local p1    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 104
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "numRead":I
    if-ltz v5, :cond_2

    .line 105
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    move-object p1, v6

    .line 109
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "inputFile"    # Ljava/lang/String;
    .param p1, "outputFile"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    const-string/jumbo v4, "AESEncryptUtils"

    const-string/jumbo v5, "encryptFile fail for inputFile is empty"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    const-string/jumbo v4, "AESEncryptUtils"

    const-string/jumbo v5, "encryptFile fail for outputFile is empty"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, "begin":J
    invoke-static {p2}, Lzf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 162
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v2, "is":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    .local v3, "os":Ljava/io/BufferedOutputStream;
    invoke-static {v2, v3, p2}, Lzf;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 168
    sget-boolean v4, Lzb;->b:Z

    if-eqz v4, :cond_0

    .line 169
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "encrypt file cost: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 121
    :cond_0
    const-string/jumbo v7, "AESEncryptUtils"

    const-string/jumbo v8, "doEncrypt fail for in or out is null"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 124
    :cond_1
    const/16 v7, 0x10

    new-array v3, v7, [B

    .line 125
    .local v3, "iv":[B
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 127
    const-string/jumbo v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 128
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v5, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 130
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 132
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 133
    .end local p0    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 135
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "numRead":I
    if-ltz v6, :cond_2

    .line 136
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 137
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    move-object p0, v2

    .line 140
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "inputFile"    # Ljava/lang/String;
    .param p1, "outputFile"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    const-string/jumbo v4, "AESEncryptUtils"

    const-string/jumbo v5, "encryptFile fail for inputFile is empty"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    const-string/jumbo v4, "AESEncryptUtils"

    const-string/jumbo v5, "encryptFile fail for outputFile is empty"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 192
    .local v0, "begin":J
    invoke-static {p2}, Lzf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 193
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 194
    .local v2, "is":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .local v3, "os":Ljava/io/BufferedOutputStream;
    invoke-static {v2, v3, p2}, Lzf;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 197
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 199
    sget-boolean v4, Lzb;->b:Z

    if-eqz v4, :cond_0

    .line 200
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "decrypt file cost: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
