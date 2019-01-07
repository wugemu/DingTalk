.class public Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;
.super Lorg/apache/http/entity/mime/content/FileBody;
.source "ProgressFileBody.java"


# instance fields
.field private hasUpload:J

.field private progressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

.field private totalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .prologue
    const-wide/16 v2, 0x0

    .line 23
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 24
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->progressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->totalSize:J

    .line 26
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->hasUpload:J

    .line 27
    return-void

    :cond_0
    move-wide v0, v2

    .line 25
    goto :goto_0
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 34
    .local v0, "in":Ljava/io/InputStream;
    const/16 v1, 0x1000

    :try_start_0
    new-array v9, v1, [B

    .line 36
    .local v9, "tmp":[B
    :cond_0
    :goto_0
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "l":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_1

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p1, v9, v1, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 38
    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->hasUpload:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->hasUpload:J

    .line 39
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->progressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->progressListener:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->hasUpload:J

    int-to-long v4, v8

    iget-wide v6, p0, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;->totalSize:J

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;->onProgress(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    .end local v8    # "l":I
    .end local v9    # "tmp":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    .line 44
    .restart local v8    # "l":I
    .restart local v9    # "tmp":[B
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 47
    return-void
.end method
