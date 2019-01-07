.class public final Ldky;
.super Ljava/lang/Object;
.source "DesUtils.java"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ldky;->a:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "decryptString"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "wbl_4_w_024"

    invoke-static {p0, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "decryptString"    # Ljava/lang/String;
    .param p1, "decryptKey"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, v8}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 97
    .local v0, "byteMi":[B
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Ldky;->a:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 99
    .local v7, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 100
    .local v3, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string/jumbo v8, "DES"

    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 101
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v5, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 105
    .local v6, "secretKey":Ljava/security/Key;
    const-string/jumbo v8, "DES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 107
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 109
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 110
    .local v2, "decryptedData":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_6

    .line 126
    .end local v0    # "byteMi":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "decryptedData":[B
    .end local v3    # "dks":Ljavax/crypto/spec/DESKeySpec;
    .end local v5    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "secretKey":Ljava/security/Key;
    .end local v7    # "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-object v8

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 126
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 113
    :catch_1
    move-exception v4

    .line 114
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v4}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v4

    .line 116
    .local v4, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v4}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v4    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v4

    .line 118
    .local v4, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v4

    .line 120
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v4

    .line 122
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6
    move-exception v4

    .line 124
    .local v4, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v4}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1
.end method
