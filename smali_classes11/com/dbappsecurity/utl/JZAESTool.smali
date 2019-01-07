.class public Lcom/dbappsecurity/utl/JZAESTool;
.super Ljava/lang/Object;
.source "JZAESTool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field public static keyBytes_unit_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x8

    sput v0, Lcom/dbappsecurity/utl/JZAESTool;->keyBytes_unit_length:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "keyString"    # Ljava/lang/String;
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "keyBytes_unit_length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 102
    sput p2, Lcom/dbappsecurity/utl/JZAESTool;->keyBytes_unit_length:I

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    if-nez p0, :cond_1

    .line 105
    :cond_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "Please give Password"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    if-nez p1, :cond_3

    .line 109
    :cond_2
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "Please give text"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 113
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZAESTool;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v7

    .line 116
    .local v7, "key":Ljavax/crypto/SecretKey;
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 117
    .local v5, "iv":[B
    const/4 v8, 0x0

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 118
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 120
    .local v6, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x0

    invoke-static {p1, v8}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 122
    .local v4, "encrypedPwdBytes":[B
    const-string/jumbo v8, "AES/CBC/PKCS7Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 123
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 124
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 126
    .local v2, "decrypedValueBytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6

    .line 145
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "decrypedValueBytes":[B
    .end local v4    # "encrypedPwdBytes":[B
    .end local v5    # "iv":[B
    .end local v6    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v7    # "key":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 145
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :goto_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 132
    :catch_1
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v3

    .line 135
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v3

    .line 137
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v3

    .line 139
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v3

    .line 141
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v3}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6
    move-exception v3

    .line 143
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "keyString"    # Ljava/lang/String;
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "keyBytes_unit_length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 45
    sput p2, Lcom/dbappsecurity/utl/JZAESTool;->keyBytes_unit_length:I

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez p0, :cond_1

    .line 48
    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "Please give Password"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    if-nez p1, :cond_3

    .line 52
    :cond_2
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "Please give text"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 56
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/dbappsecurity/utl/JZAESTool;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    .line 57
    .local v6, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v7, "UTF8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 60
    .local v1, "clearText":[B
    const/16 v7, 0x10

    new-array v4, v7, [B

    .line 61
    .local v4, "iv":[B
    const/4 v7, 0x0

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 62
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 65
    .local v5, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string/jumbo v7, "AES/CBC/PKCS7Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 66
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "encrypedValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Encrypted: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6

    .line 87
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "clearText":[B
    .end local v3    # "encrypedValue":Ljava/lang/String;
    .end local v4    # "iv":[B
    .end local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v6    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 87
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_1
    const-string/jumbo v3, ""

    goto :goto_0

    .line 74
    :catch_1
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 77
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v2

    .line 79
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v2

    .line 81
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v2

    .line 83
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6
    move-exception v2

    .line 85
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 158
    const/16 v4, 0x100

    sget v5, Lcom/dbappsecurity/utl/JZAESTool;->keyBytes_unit_length:I

    div-int/2addr v4, v5

    new-array v1, v4, [B

    .line 160
    .local v1, "keyBytes":[B
    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 164
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 165
    .local v3, "passwordBytes":[B
    array-length v4, v3

    array-length v5, v1

    if-ge v4, v5, :cond_0

    array-length v2, v3

    .line 166
    .local v2, "length":I
    :goto_0
    invoke-static {v3, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v0, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v0

    .line 165
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "length":I
    :cond_0
    array-length v2, v1

    goto :goto_0
.end method
