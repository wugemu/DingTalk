.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;
.super Lknd;
.source "InputStreamRequestBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputStreamRequestBody"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

.field private mUploadLength:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 36
    invoke-direct {p0}, Lknd;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mUploadLength:J

    .line 37
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .prologue
    .line 40
    invoke-direct {p0}, Lknd;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mUploadLength:J

    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    .line 42
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 55
    :goto_0
    return-wide v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 55
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public contentType()Lkmy;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "application/octet-stream"

    invoke-static {v0}, Lkmy;->b(Ljava/lang/String;)Lkmy;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 10
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/16 v1, 0x400

    :try_start_0
    new-array v0, v1, [B

    .line 67
    .local v0, "buff":[B
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->contentLength()J

    move-result-wide v6

    .line 68
    .local v6, "total":J
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .local v8, "count":I
    if-lez v8, :cond_3

    .line 69
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v8}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 70
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    if-eqz v1, :cond_2

    .line 71
    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mUploadLength:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mUploadLength:J

    .line 72
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mUploadLength:J

    int-to-long v4, v8

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;->onProgress(JJJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 75
    .end local v0    # "buff":[B
    .end local v6    # "total":J
    .end local v8    # "count":I
    :catch_0
    move-exception v9

    .line 76
    .local v9, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "InputStreamRequestBody"

    invoke-static {v1, v9}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 78
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "buff":[B
    .restart local v6    # "total":J
    .restart local v8    # "count":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 78
    .end local v0    # "buff":[B
    .end local v6    # "total":J
    .end local v8    # "count":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    .line 79
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v1
.end method
