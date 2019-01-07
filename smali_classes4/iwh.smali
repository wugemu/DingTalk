.class public final Liwh;
.super Ljava/lang/Object;
.source "SecretWithHeader.java"


# instance fields
.field public a:Lcom/dingtalk/cryptokit/Algorithm;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStreamWithHeader"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 1065
    :cond_0
    new-array v0, v2, [B

    .line 1066
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1067
    if-ge v1, v2, :cond_1

    .line 1068
    new-instance v0, Lcom/dingtalk/cryptokit/CryptoException;

    const-string/jumbo v1, "Invalid bytes or has no correct header"

    invoke-direct {v0, v1}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Liwg;->a([BI)I

    move-result v1

    invoke-static {v1}, Lcom/dingtalk/cryptokit/Algorithm;->getByCode(I)Lcom/dingtalk/cryptokit/Algorithm;

    move-result-object v1

    iput-object v1, p0, Liwh;->a:Lcom/dingtalk/cryptokit/Algorithm;

    .line 1073
    const/4 v1, 0x4

    :try_start_0
    invoke-static {v0, v1}, Liwg;->a([BI)I

    move-result v0

    iput v0, p0, Liwh;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1084
    :cond_2
    :goto_0
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1074
    :catch_1
    move-exception v0

    .line 1075
    :try_start_2
    new-instance v1, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    :catchall_0
    move-exception v0

    .line 1078
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1079
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1083
    :cond_3
    :goto_1
    throw v0

    .line 1081
    :catch_2
    move-exception v1

    .line 1082
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgWithHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    const-string/jumbo v0, "_"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1033
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1034
    new-instance v0, Lcom/dingtalk/cryptokit/CryptoException;

    const-string/jumbo v1, "message forged, split failure"

    invoke-direct {v0, v1}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1037
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/dingtalk/cryptokit/Algorithm;->getByCode(I)Lcom/dingtalk/cryptokit/Algorithm;

    move-result-object v1

    iput-object v1, p0, Liwh;->a:Lcom/dingtalk/cryptokit/Algorithm;

    .line 1039
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Liwh;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Liwh;->c:Ljava/lang/String;

    .line 21
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    new-instance v1, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
