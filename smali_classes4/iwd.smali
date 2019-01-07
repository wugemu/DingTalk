.class public final Liwd;
.super Ljava/lang/Object;
.source "CryptoKit.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Liwd;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/dingtalk/cryptokit/Algorithm;[B)Liwe;
    .locals 4
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;,
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Liwf;

    invoke-direct {v0}, Liwf;-><init>()V

    .line 4022
    .local v0, "builder":Liwf;
    iput-object p0, v0, Liwf;->a:Lcom/dingtalk/cryptokit/Algorithm;

    .line 4030
    iput-object p1, v0, Liwf;->b:[B

    .line 269
    :try_start_0
    invoke-virtual {v0}, Liwf;->a()Liwe;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 279
    .local v1, "cryptor":Liwe;
    return-object v1

    .line 270
    .end local v1    # "cryptor":Liwe;
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v3, v2}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 272
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v3, v2}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static a(Lcom/dingtalk/cryptokit/Algorithm;[BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .param p2, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Liwd;->b(Lcom/dingtalk/cryptokit/Algorithm;[BLjava/lang/String;)[B

    move-result-object v1

    sget-object v2, Liwd;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;[BILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "algo"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .param p2, "keyVersion"    # I
    .param p3, "plain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;,
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0}, Lcom/dingtalk/cryptokit/Algorithm;->getByName(Ljava/lang/String;)Lcom/dingtalk/cryptokit/Algorithm;

    move-result-object v0

    .line 243
    .local v0, "algoId":Lcom/dingtalk/cryptokit/Algorithm;
    sget-object v2, Liwd;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 3027
    invoke-static {v0, p1, v2}, Liwd;->a(Lcom/dingtalk/cryptokit/Algorithm;[B[B)[B

    move-result-object v2

    .line 3028
    if-nez v2, :cond_0

    .line 3029
    const/4 v1, 0x0

    .line 244
    .local v1, "secret":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/dingtalk/cryptokit/Algorithm;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3031
    .end local v1    # "secret":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Liwg;->a([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Lcom/dingtalk/cryptokit/Algorithm;[BILjava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .locals 7
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .param p2, "keyVersion"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "os"    # Ljava/io/OutputStream;
    .param p5, "tempStorage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1}, Liwd;->a(Lcom/dingtalk/cryptokit/Algorithm;[B)Liwe;

    move-result-object v0

    .line 131
    .local v0, "cryptor":Liwe;
    :try_start_0
    invoke-virtual {p0}, Lcom/dingtalk/cryptokit/Algorithm;->getCode()I

    move-result v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Liwe;->a(IILjava/io/InputStream;Ljava/io/OutputStream;[B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 132
    :catch_0
    move-exception v6

    .line 133
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v1, v6}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v6

    .line 135
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v1, v6}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/dingtalk/cryptokit/Algorithm;[BLjava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .locals 3
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;
    .param p4, "tempStorage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;,
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p0, p1}, Liwd;->a(Lcom/dingtalk/cryptokit/Algorithm;[B)Liwe;

    move-result-object v0

    .line 154
    .local v0, "cryptor":Liwe;
    :try_start_0
    invoke-interface {v0, p2, p3, p4}, Liwe;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v2, v1}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 157
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    new-instance v2, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v2, v1}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static a(Lcom/dingtalk/cryptokit/Algorithm;[B[B)[B
    .locals 5
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .param p2, "plain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Liwf;

    invoke-direct {v0}, Liwf;-><init>()V

    .line 1022
    .local v0, "builder":Liwf;
    iput-object p0, v0, Liwf;->a:Lcom/dingtalk/cryptokit/Algorithm;

    .line 1030
    iput-object p1, v0, Liwf;->b:[B

    .line 52
    :try_start_0
    invoke-virtual {v0}, Liwf;->a()Liwe;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 65
    .local v1, "cryptor":Liwe;
    :try_start_1
    invoke-interface {v1, p2}, Liwe;->a([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 71
    .local v3, "secret":[B
    return-object v3

    .line 53
    .end local v1    # "cryptor":Liwe;
    .end local v3    # "secret":[B
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v4, v2}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 55
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v4, v2}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cryptor":Liwe;
    :catch_2
    move-exception v2

    .line 67
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v4, v2}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 68
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v4, v2}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static b(Lcom/dingtalk/cryptokit/Algorithm;[BLjava/lang/String;)[B
    .locals 2
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .param p2, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Liwg;->a([C)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Liwd;->b(Lcom/dingtalk/cryptokit/Algorithm;[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    new-instance v1, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v1, v0}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Lcom/dingtalk/cryptokit/Algorithm;[B[B)[B
    .locals 4
    .param p0, "algo"    # Lcom/dingtalk/cryptokit/Algorithm;
    .param p1, "key"    # [B
    .param p2, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Liwf;

    invoke-direct {v0}, Liwf;-><init>()V

    .line 2022
    .local v0, "builder":Liwf;
    iput-object p0, v0, Liwf;->a:Lcom/dingtalk/cryptokit/Algorithm;

    .line 2030
    iput-object p1, v0, Liwf;->b:[B

    .line 204
    :try_start_0
    invoke-virtual {v0}, Liwf;->a()Liwe;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 216
    .local v1, "cryptor":Liwe;
    :try_start_1
    invoke-interface {v1, p2}, Liwe;->b([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    return-object v3

    .line 205
    .end local v1    # "cryptor":Liwe;
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v3, v2}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 207
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v3, v2}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cryptor":Liwe;
    :catch_2
    move-exception v2

    .line 218
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v3, v2}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 219
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    new-instance v3, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v3, v2}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
