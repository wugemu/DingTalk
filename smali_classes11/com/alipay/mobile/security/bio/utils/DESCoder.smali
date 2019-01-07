.class public abstract Lcom/alipay/mobile/security/bio/utils/DESCoder;
.super Ljava/lang/Object;
.source "DESCoder.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "DESede"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 5
    .param p0, "keyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x0

    .line 205
    new-array v0, v4, [B

    .line 206
    .local v0, "key":[B
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 208
    .local v1, "temp":[B
    array-length v2, v1

    if-le v4, v2, :cond_0

    .line 209
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static decryptBASE64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "cipher"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptMode([BLjava/lang/String;)[B
    .locals 7
    .param p0, "src"    # [B
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 182
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->a(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "DESede"

    invoke-direct {v1, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string/jumbo v5, "DESede"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 184
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 185
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 193
    .end local v0    # "c1":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v5

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 193
    .end local v2    # "e1":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v3

    .line 189
    .local v3, "e2":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v3    # "e2":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v4

    .line 191
    .local v4, "e3":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static encryptBASE64([B)Ljava/lang/String;
    .locals 1
    .param p0, "encoded"    # [B

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMode([BLjava/lang/String;)[B
    .locals 7
    .param p0, "src"    # [B
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 158
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->a(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "DESede"

    invoke-direct {v1, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 160
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string/jumbo v5, "DESede"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 161
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 162
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 170
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v5

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 170
    .end local v2    # "e1":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 165
    :catch_1
    move-exception v3

    .line 166
    .local v3, "e2":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    .end local v3    # "e2":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v4

    .line 168
    .local v4, "e3":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
