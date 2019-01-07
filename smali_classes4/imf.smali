.class public Limf;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field private static a:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a([BLjava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v3, 0x75

    const/4 v0, 0x0

    .line 57
    const-class v5, Limf;

    monitor-enter v5

    .line 60
    :try_start_0
    sget-object v1, Limf;->a:Ljavax/crypto/Cipher;

    if-nez v1, :cond_0

    .line 61
    const-string/jumbo v1, "RSA"

    .line 1040
    invoke-static {p1}, Lilt;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 1041
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1042
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 1043
    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 62
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 63
    sput-object v2, Limf;->a:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    :try_start_1
    array-length v1, p0

    if-ge v4, v1, :cond_2

    .line 68
    sget-object v6, Limf;->a:Ljavax/crypto/Cipher;

    array-length v1, p0

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_1

    array-length v1, p0

    sub-int/2addr v1, v4

    :goto_1
    invoke-virtual {v6, p0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    add-int/lit8 v1, v4, 0x75

    move v4, v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 68
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 79
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :cond_3
    :goto_2
    monitor-exit v5

    return-object v0

    .line 73
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 74
    :goto_3
    const/4 v3, 0x0

    :try_start_3
    sput-object v3, Limf;->a:Ljavax/crypto/Cipher;

    .line 75
    const-string/jumbo v3, "LogRSAUtil"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 77
    if-eqz v2, :cond_3

    .line 79
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 82
    :catch_1
    move-exception v1

    goto :goto_2

    .line 77
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 79
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    :cond_4
    :goto_5
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 57
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 82
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    .line 77
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 73
    :catch_4
    move-exception v1

    goto :goto_3
.end method
