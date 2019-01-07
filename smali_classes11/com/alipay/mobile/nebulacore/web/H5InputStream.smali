.class public Lcom/alipay/mobile/nebulacore/web/H5InputStream;
.super Ljava/io/InputStream;
.source "H5InputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5InputStream"


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field private listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

.field public realStream:Ljava/io/InputStream;

.field public statusCode:I

.field private urlString:Ljava/lang/String;

.field private useNetsdk:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->useNetsdk:Z

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->urlString:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    .line 34
    const-string/jumbo v1, "androidFallbackNetwork"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "useNetsdkConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string/jumbo v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->useNetsdk:Z

    .line 42
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->initStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    .line 43
    return-void

    .line 38
    :cond_1
    const-string/jumbo v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->useNetsdk:Z

    goto :goto_0
.end method

.method private initStream()Ljava/io/InputStream;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 125
    const/4 v8, 0x0

    .line 127
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 129
    .local v7, "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->useNetsdk:Z

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    .line 130
    const-string/jumbo v1, "H5InputStream"

    const-string/jumbo v3, "useNetsdk get fallback content"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->urlString:Ljava/lang/String;

    .line 132
    invoke-interface {v7, v1}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v9, "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .line 141
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;->onInputOpen(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V

    .line 159
    .end local v7    # "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    :cond_0
    :goto_1
    return-object v8

    .line 134
    .restart local v7    # "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    :cond_1
    const-string/jumbo v1, "H5InputStream"

    const-string/jumbo v3, "useUrlConnection get fallback content"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v10, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->urlString:Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->conn:Ljava/net/HttpURLConnection;

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    .line 138
    const-string/jumbo v1, "H5InputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "statusCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 144
    .end local v7    # "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 145
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5InputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->urlString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed to init stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 149
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_2

    .line 150
    const-string/jumbo v1, "H5_FallbackException"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8d70fallback\u8bf7\u6c42\u5931\u8d25,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->urlString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed to init stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;->onInputException()V

    goto/16 :goto_1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    const-string/jumbo v0, "H5InputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->conn:Ljava/net/HttpURLConnection;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->listener:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;->onInputClose(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V

    .line 77
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 107
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    goto :goto_0
.end method
