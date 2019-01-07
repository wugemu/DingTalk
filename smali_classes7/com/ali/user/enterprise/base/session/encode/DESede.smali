.class public Lcom/ali/user/enterprise/base/session/encode/DESede;
.super Ljava/lang/Object;
.source "DESede.java"


# static fields
.field private static final Algorithm:Ljava/lang/String; = "DESede"

.field public static final ISO88591:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptMode([B[B)[B
    .locals 9
    .param p0, "key"    # [B
    .param p1, "data"    # [B

    .prologue
    const/16 v7, 0x18

    .line 57
    const/16 v6, 0x18

    :try_start_0
    new-array v2, v6, [B

    .line 58
    .local v2, "k":[B
    array-length v6, p0

    if-lt v6, v7, :cond_0

    .line 59
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static {p0, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    :goto_0
    new-instance v4, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 64
    .local v4, "ks":Ljava/security/spec/KeySpec;
    const-string/jumbo v6, "DESede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 65
    .local v3, "kf":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 67
    .local v5, "ky":Ljavax/crypto/SecretKey;
    const-string/jumbo v6, "DESede/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 68
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 69
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 72
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "k":[B
    .end local v3    # "kf":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "ks":Ljava/security/spec/KeySpec;
    .end local v5    # "ky":Ljavax/crypto/SecretKey;
    :goto_1
    return-object v6

    .line 61
    .restart local v2    # "k":[B
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, p0

    invoke-static {p0, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v2    # "k":[B
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static encryptMode([B[B)[B
    .locals 9
    .param p0, "key"    # [B
    .param p1, "data"    # [B

    .prologue
    const/16 v7, 0x18

    .line 26
    const/16 v6, 0x18

    :try_start_0
    new-array v2, v6, [B

    .line 28
    .local v2, "k":[B
    array-length v6, p0

    if-lt v6, v7, :cond_0

    .line 29
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static {p0, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :goto_0
    new-instance v4, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 35
    .local v4, "ks":Ljava/security/spec/KeySpec;
    const-string/jumbo v6, "DESede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 36
    .local v3, "kf":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 38
    .local v5, "ky":Ljavax/crypto/SecretKey;
    const-string/jumbo v6, "DESede/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 40
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 43
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "k":[B
    .end local v3    # "kf":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "ks":Ljava/security/spec/KeySpec;
    .end local v5    # "ky":Ljavax/crypto/SecretKey;
    :goto_1
    return-object v6

    .line 31
    .restart local v2    # "k":[B
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, p0

    invoke-static {p0, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v2    # "k":[B
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v6, 0x0

    goto :goto_1
.end method
