.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;
.super Lknd;
.source "FileRequestBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileRequestBody"


# instance fields
.field private mFile:Ljava/io/File;

.field private mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

.field private mUploadLength:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .prologue
    .line 33
    invoke-direct {p0}, Lknd;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mFile:Ljava/io/File;

    .line 35
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .line 36
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
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public contentType()Lkmy;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "application/octet-stream"

    invoke-static {v0}, Lkmy;->b(Ljava/lang/String;)Lkmy;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 12
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x400

    .line 50
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mFile:Ljava/io/File;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 51
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mFile:Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v10, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v0, "bis":Ljava/io/BufferedInputStream;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 54
    .local v6, "total":J
    new-array v8, v2, [B

    .line 57
    .local v8, "buff":[B
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_0
    invoke-virtual {v0, v8, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    .local v9, "count":I
    if-lez v9, :cond_2

    .line 58
    const/4 v1, 0x0

    invoke-interface {p1, v8, v1, v9}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 59
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    if-eqz v1, :cond_0

    .line 60
    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mUploadLength:J

    int-to-long v4, v9

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mUploadLength:J

    .line 61
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mProgressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;->mUploadLength:J

    int-to-long v4, v9

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;->onProgress(JJJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    .end local v9    # "count":I
    :catch_0
    move-exception v11

    .line 65
    .local v11, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "FileRequestBody"

    invoke-static {v1, v11}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 70
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "total":J
    .end local v8    # "buff":[B
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .line 67
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "total":J
    .restart local v8    # "buff":[B
    .restart local v9    # "count":I
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_1

    .end local v9    # "count":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v1
.end method
