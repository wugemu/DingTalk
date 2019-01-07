.class public Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;
.super Ljava/lang/Object;
.source "GeneralEventReporter.java"


# static fields
.field private static sInstance:Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;


# instance fields
.field private mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterManager;->get()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->sInstance:Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->sInstance:Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;

    .line 24
    :cond_0
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->sInstance:Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private read(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 99
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 103
    .local v3, "result":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 104
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 105
    return-object v3
.end method


# virtual methods
.method public dataReceived(Ljava/lang/String;II)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->dataReceived(Ljava/lang/String;II)V

    .line 93
    :cond_0
    return-void
.end method

.method public dataSent(Ljava/lang/String;II)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->dataSent(Ljava/lang/String;II)V

    .line 87
    :cond_0
    return-void
.end method

.method public httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .param p4, "stream"    # Ljava/io/InputStream;
    .param p5, "continueRead"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v5, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-direct {v5, v0, p1}, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;-><init>(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    .line 52
    .local v5, "defaultHandler":Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;)Ljava/io/InputStream;

    move-result-object v7

    .line 53
    .local v7, "wrappedStream":Ljava/io/InputStream;
    if-nez p5, :cond_1

    .line 55
    :try_start_0
    invoke-direct {p0, v7}, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->read(Ljava/io/InputStream;)[B

    .line 56
    if-eqz v7, :cond_0

    .line 57
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "defaultHandler":Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;
    .end local v7    # "wrappedStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    move-object v7, p4

    .line 68
    :goto_1
    return-object v7

    .line 59
    .restart local v5    # "defaultHandler":Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;
    .restart local v7    # "wrappedStream":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 60
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v7, :cond_0

    goto :goto_1
.end method

.method public requestWillBeSent(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    .local p1, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/utils/RequestConverter;->convertFrom(Ljava/util/Map;)Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->requestWillBeSent(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;)V

    .line 35
    :cond_0
    return-void
.end method

.method public responseHeadersReceived(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/utils/ResponseConverter;->convertFrom(Ljava/util/Map;)Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->responseHeadersReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;)V

    .line 41
    :cond_0
    return-void
.end method

.method public responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public responseReadFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/GeneralEventReporter;->mReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->responseReadFinished(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
