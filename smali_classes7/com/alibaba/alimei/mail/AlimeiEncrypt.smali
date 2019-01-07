.class public Lcom/alibaba/alimei/mail/AlimeiEncrypt;
.super Lzg;
.source "AlimeiEncrypt.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lzg;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/security/Key;
    .locals 4
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 58
    .local v0, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 59
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 60
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    return-object v2
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    sget-object v2, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a:Ljava/lang/String;

    .line 108
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 98
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 100
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    sget-object v2, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string/jumbo v2, "defdeviceid"

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_1
    sget-object v2, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 113
    invoke-static {}, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->c()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const-string/jumbo v4, "pFf7vK2uYc4="

    .line 127
    :goto_0
    return-object v4

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 118
    .local v0, "bytes":[B
    new-array v3, v5, [B

    .line 119
    .local v3, "targetBytes":[B
    array-length v4, v0

    if-ge v4, v5, :cond_2

    .line 120
    array-length v4, v0

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    :cond_1
    invoke-static {v3}, Lyw;->a([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 122
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 123
    aget-byte v4, v0, v2

    aput-byte v4, v3, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    :try_start_0
    invoke-static {p2}, Lyw;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a([B)Ljava/security/Key;

    move-result-object v2

    .line 67
    .local v2, "k":Ljava/security/Key;
    const-string/jumbo v3, "DES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 68
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v3, "alimei12"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 69
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lyw;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 75
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "k":Ljava/security/Key;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "pFf7vK2uYc4="

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    :try_start_0
    invoke-static {p2}, Lyw;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/alimei/mail/AlimeiEncrypt;->a([B)Ljava/security/Key;

    move-result-object v2

    .line 82
    .local v2, "k":Ljava/security/Key;
    const-string/jumbo v3, "DES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 83
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v3, "alimei12"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 84
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Lyw;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "k":Ljava/security/Key;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method
