.class public Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
.super Ljava/lang/Object;
.source "CryptLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;
    }
.end annotation


# static fields
.field public static final MIGREATE_CRYPTLIB_KEY:Ljava/lang/String; = "G`~0zE@twR1/2C4H).^lv-|3ByWU\'hY!"

.field public static final MIGREATE_CRYPTLIB_LV:Ljava/lang/String; = "~Kr*ntApxdYBu{F5"


# instance fields
.field _cx:Ljavax/crypto/Cipher;

.field _iv:[B

.field _key:[B


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_cx:Ljavax/crypto/Cipher;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_key:[B

    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_iv:[B

    .line 58
    return-void
.end method

.method public static SHA256(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 191
    const-string/jumbo v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 193
    .local v2, "md":Ljava/security/MessageDigest;
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 194
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 196
    .local v1, "digest":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v3, "result":Ljava/lang/StringBuilder;
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-byte v0, v1, v5

    .line 198
    .local v0, "b":B
    const-string/jumbo v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "resultStr":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 208
    .end local v4    # "resultStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resultStr":Ljava/lang/String;
    goto :goto_1
.end method

.method private encryptDecrypt(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "_inputText"    # Ljava/lang/String;
    .param p2, "_encryptionKey"    # Ljava/lang/String;
    .param p3, "_mode"    # Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;
    .param p4, "_initVector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 114
    const-string/jumbo v0, ""

    .line 118
    .local v0, "_out":Ljava/lang/String;
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v6, v8

    .line 120
    .local v6, "len":I
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    iget-object v9, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_key:[B

    array-length v9, v9

    if-le v8, v9, :cond_0

    .line 121
    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_key:[B

    array-length v6, v8

    .line 123
    :cond_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v4, v8

    .line 125
    .local v4, "ivlen":I
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    iget-object v9, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_iv:[B

    array-length v9, v9

    if-le v8, v9, :cond_1

    .line 126
    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_iv:[B

    array-length v4, v8

    .line 128
    :cond_1
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_key:[B

    invoke-static {v8, v10, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_iv:[B

    invoke-static {v8, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_key:[B

    const-string/jumbo v9, "AES"

    invoke-direct {v5, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 140
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_iv:[B

    invoke-direct {v3, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 150
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    sget-object v8, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->ENCRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    invoke-virtual {p3, v8}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_cx:Ljavax/crypto/Cipher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_cx:Ljavax/crypto/Cipher;

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 160
    .local v7, "results":[B
    invoke-static {v7, v10}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 165
    .end local v7    # "results":[B
    :cond_2
    sget-object v8, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->DECRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    invoke-virtual {p3, v8}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 166
    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_cx:Ljavax/crypto/Cipher;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v10}, Lhv;->a([BI)[B

    move-result-object v1

    .line 170
    .local v1, "decodedValue":[B
    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->_cx:Ljavax/crypto/Cipher;

    invoke-virtual {v8, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 174
    .local v2, "decryptedVal":[B
    new-instance v0, Ljava/lang/String;

    .end local v0    # "_out":Ljava/lang/String;
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 177
    .end local v1    # "decodedValue":[B
    .end local v2    # "decryptedVal":[B
    .restart local v0    # "_out":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public static generateRandomIV(I)Ljava/lang/String;
    .locals 10
    .param p0, "length"    # I

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x0

    .line 273
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 274
    .local v2, "ranGen":Ljava/security/SecureRandom;
    new-array v0, v9, [B

    .line 275
    .local v0, "aesKey":[B
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "result":Ljava/lang/StringBuilder;
    move v4, v5

    .line 277
    :goto_0
    if-ge v4, v9, :cond_0

    aget-byte v1, v0, v4

    .line 278
    .local v1, "b":B
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le p0, v4, :cond_1

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "inputString"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    const-string/jumbo v6, "MD5"

    .line 71
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 72
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 73
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 76
    .local v5, "messageDigest":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v4, "hexString":Ljava/lang/StringBuilder;
    array-length v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, v5, v6

    .line 78
    .local v0, "aMessageDigest":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "aMessageDigest":B
    .end local v3    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 90
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "hexString":Ljava/lang/StringBuilder;
    .end local v5    # "messageDigest":[B
    :goto_2
    return-object v6

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 90
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    const-string/jumbo v6, ""

    goto :goto_2

    .line 87
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "_encryptedText"    # Ljava/lang/String;
    .param p2, "_key"    # Ljava/lang/String;
    .param p3, "_iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->DECRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->encryptDecrypt(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "_plainText"    # Ljava/lang/String;
    .param p2, "_key"    # Ljava/lang/String;
    .param p3, "_iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 237
    sget-object v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->ENCRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->encryptDecrypt(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
