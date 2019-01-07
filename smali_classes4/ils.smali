.class public Lils;
.super Ljava/lang/Object;
.source "AESUtil.java"


# static fields
.field private static a:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 3

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 71
    :try_start_1
    const-string/jumbo v0, "SHA1PRNG"

    const-string/jumbo v2, "Crypto"

    invoke-static {v0, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 79
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 80
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 86
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 76
    :cond_0
    const-string/jumbo v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    const-string/jumbo v1, "LogAESUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized a([B[BII)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 30
    const-class v2, Lils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lils;->a:Ljavax/crypto/Cipher;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v1, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    const-string/jumbo v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 33
    sput-object v3, Lils;->a:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    :cond_0
    sget-object v1, Lils;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 40
    :goto_0
    monitor-exit v2

    return-object v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    const/4 v3, 0x0

    :try_start_1
    sput-object v3, Lils;->a:Ljavax/crypto/Cipher;

    .line 39
    const-string/jumbo v3, "LogAESUtil"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
