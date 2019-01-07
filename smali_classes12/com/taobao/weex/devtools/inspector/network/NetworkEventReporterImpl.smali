.class public Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;
.super Ljava/lang/Object;
.source "NetworkEventReporterImpl.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;


# static fields
.field private static enabled:Z

.field private static sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;


# instance fields
.field private final mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mResourceTypeHelper:Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    return-void
.end method

.method private static convertFrame(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;
    .locals 2
    .param p0, "in"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;

    .prologue
    .line 440
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;-><init>()V

    .line 441
    .local v0, "out":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;->opcode()I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;->opcode:I

    .line 442
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;->mask()Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;->mask:Z

    .line 443
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;->payloadData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;->payloadData:Ljava/lang/String;

    .line 444
    return-object v0
.end method

.method static createPrettyPrinterForResponse(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
    .locals 6
    .param p0, "response"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;
    .param p1, "registry"    # Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    if-eqz p1, :cond_1

    .line 218
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->headerCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 219
    invoke-interface {p0, v3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->headerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;->lookup(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterFactory;

    move-result-object v2

    .line 220
    .local v2, "factory":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterFactory;
    if-eqz v2, :cond_0

    .line 222
    invoke-interface {p0, v3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->headerName(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-interface {p0, v3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->headerValue(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-interface {v2, v4, v5}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;

    move-result-object v0

    .line 228
    .end local v1    # "count":I
    .end local v2    # "factory":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterFactory;
    .end local v3    # "i":I
    :goto_1
    return-object v0

    .line 218
    .restart local v1    # "count":I
    .restart local v2    # "factory":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterFactory;
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "count":I
    .end local v2    # "factory":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterFactory;
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createTimingFrom(Lcom/taobao/weex/devtools/inspector/network/Timing;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;
    .locals 4
    .param p1, "timing"    # Lcom/taobao/weex/devtools/inspector/network/Timing;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 491
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;-><init>()V

    .line 492
    .local v0, "resourceTiming":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectEnd:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->connectEnd:D

    .line 493
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->connectStart:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->connectStart:D

    .line 494
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->dnsEnd:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->dnsEnd:D

    .line 495
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->dnsStart:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->dnsStart:D

    .line 496
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->proxyEnd:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->proxyEnd:D

    .line 497
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->proxyStart:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->proxyStart:D

    .line 498
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sslEnd:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->sslEnd:D

    .line 499
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sslStart:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->sslStart:D

    .line 500
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendEnd:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->sendEnd:D

    .line 501
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->sendStart:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->sendStart:D

    .line 502
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->requestTime:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->requestTime:D

    .line 503
    iget-wide v2, p1, Lcom/taobao/weex/devtools/inspector/network/Timing;->receiveHeadersEnd:D

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;->receiveHeadersEnd:D

    .line 504
    return-object v0
.end method

.method private static determineResourceType(Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;Ljava/lang/String;Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    .locals 2
    .param p0, "asyncPrettyPrinter"    # Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "resourceTypeHelper"    # Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "determineResourceType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    if-eqz p0, :cond_0

    .line 204
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;->getPrettifiedType()Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->getResourceType()Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p2, p1}, Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;->determineResourceType(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->OTHER:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    goto :goto_0
.end method

.method private static formatHeadersAsJSON(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "headers"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;

    .prologue
    .line 460
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 461
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;->headerCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 462
    invoke-interface {p0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;->headerName(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;->headerValue(I)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 475
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static declared-synchronized get()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 62
    :cond_0
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getContentType(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Ljava/lang/String;
    .locals 1
    .param p1, "headers"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 352
    const-string/jumbo v0, "Content-Type"

    invoke-interface {p1, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;->firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->getInstanceOrNull()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v0

    .line 74
    .local v0, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->hasRegisteredPeers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    .end local v0    # "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    :goto_0
    return-object v0

    .restart local v0    # "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResourceTypeHelper()Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->mResourceTypeHelper:Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->mResourceTypeHelper:Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->mResourceTypeHelper:Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    return-object v0
.end method

.method private static initAsyncPrettyPrinterForResponse(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
    .locals 4
    .param p0, "response"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;
    .param p1, "peerManager"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->getAsyncPrettyPrinterRegistry()Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    move-result-object v1

    .line 189
    .local v1, "registry":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;
    invoke-static {p0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->createPrettyPrinterForResponse(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;

    move-result-object v0

    .line 190
    .local v0, "asyncPrettyPrinter":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->getResponseBodyFileManager()Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    move-result-object v2

    .line 192
    invoke-interface {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->requestId()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;->associateAsyncPrettyPrinterWithId(Ljava/lang/String;Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;)V

    .line 195
    :cond_0
    return-object v0
.end method

.method private loadingFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 306
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 307
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;-><init>()V

    .line 308
    .local v0, "failedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;->requestId:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;->timestamp:D

    .line 310
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;->errorText:Ljava/lang/String;

    .line 311
    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->OTHER:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 312
    const-string/jumbo v2, "Network.loadingFailed"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .end local v0    # "failedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFailedParams;
    :cond_0
    return-void
.end method

.method private loadingFinished(Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 291
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;-><init>()V

    .line 293
    .local v0, "finishedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;->requestId:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;->timestamp:D

    .line 295
    const-string/jumbo v2, "Network.loadingFinished"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .end local v0    # "finishedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$LoadingFinishedParams;
    :cond_0
    return-void
.end method

.method private static readBodyAsString(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;)Ljava/lang/String;
    .locals 6
    .param p0, "peerManager"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    .param p1, "request"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->body()[B

    move-result-object v0

    .line 129
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 130
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/devtools/common/Utf8Charset;->INSTANCE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "body":[B
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->WARNING:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    sget-object v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->NETWORK:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not reproduce POST body: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    .line 139
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->enabled:Z

    .line 52
    return-void
.end method

.method private static stethoNow()J
    .locals 2

    .prologue
    .line 487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public dataReceived(Ljava/lang/String;II)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 333
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 334
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;-><init>()V

    .line 335
    .local v0, "dataReceivedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;->requestId:Ljava/lang/String;

    .line 336
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;->timestamp:D

    .line 337
    iput p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;->dataLength:I

    .line 338
    iput p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;->encodedDataLength:I

    .line 339
    const-string/jumbo v2, "Network.dataReceived"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    .end local v0    # "dataReceivedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$DataReceivedParams;
    :cond_0
    return-void
.end method

.method public dataSent(Ljava/lang/String;II)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->dataReceived(Ljava/lang/String;II)V

    .line 325
    return-void
.end method

.method public httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->loadingFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;)Ljava/io/InputStream;
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "contentEncoding"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "availableInputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "responseHandler"    # Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v0

    .line 239
    .local v0, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v0, :cond_0

    .line 240
    if-nez p4, :cond_1

    .line 241
    invoke-interface {p5}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;->onEOF()V

    move-object p4, v1

    .line 276
    .end local p4    # "availableInputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p4

    .line 244
    .restart local p4    # "availableInputStream":Ljava/io/InputStream;
    :cond_1
    if-eqz p2, :cond_3

    .line 246
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getResourceTypeHelper()Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;->determineResourceType(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    move-result-object v7

    .line 251
    .local v7, "resourceType":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    :goto_1
    const/4 v6, 0x0

    .line 252
    .local v6, "base64Encode":Z
    if-eqz v7, :cond_2

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->IMAGE:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    if-ne v7, v1, :cond_2

    .line 253
    const/4 v6, 0x1

    .line 258
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->getResponseBodyFileManager()Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    move-result-object v1

    invoke-virtual {v1, p1, v6}, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;->openResponseBodyFile(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3

    .local v3, "fileOutputStream":Ljava/io/OutputStream;
    move-object v1, p1

    move-object v2, p4

    move-object v4, p3

    move-object v5, p5

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/network/DecompressionHelper;->teeInputWithDecompression(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .end local v3    # "fileOutputStream":Ljava/io/OutputStream;
    .end local v6    # "base64Encode":Z
    .end local v7    # "resourceType":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    :cond_3
    move-object v7, v1

    .line 246
    goto :goto_1

    .line 269
    .restart local v6    # "base64Encode":Z
    .restart local v7    # "resourceType":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->ERROR:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->NETWORK:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error writing response body data for request #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v0

    .line 68
    .local v0, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    sget-boolean v1, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->enabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestWillBeSent(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;)V
    .locals 10
    .param p1, "request"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 82
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v2

    .line 83
    .local v2, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v2, :cond_0

    .line 84
    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;

    invoke-direct {v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;-><init>()V

    .line 85
    .local v4, "requestJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->url()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;->url:Ljava/lang/String;

    .line 86
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->method()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;->method:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->formatHeadersAsJSON(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;->headers:Lorg/json/JSONObject;

    .line 88
    invoke-static {v2, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->readBodyAsString(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;->postData:Ljava/lang/String;

    .line 92
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->friendlyName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "requestFriendlyName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->friendlyNameExtra()Ljava/lang/Integer;

    move-result-object v5

    .line 94
    .local v5, "requestPriority":Ljava/lang/Integer;
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;-><init>()V

    .line 95
    .local v0, "initiatorJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;
    const-string/jumbo v6, "parser"

    iput-object v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;->type:Ljava/lang/String;

    .line 96
    iput-object v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;->url:Ljava/lang/String;

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;->stack:Ljava/util/List;

    .line 98
    iget-object v8, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;->stack:Ljava/util/List;

    new-instance v9, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$CallFrame;

    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_0
    invoke-direct {v9, v3, v3, v6, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$CallFrame;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 98
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;-><init>()V

    .line 104
    .local v1, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->id()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->requestId:Ljava/lang/String;

    .line 105
    const-string/jumbo v6, "1"

    iput-object v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->frameId:Ljava/lang/String;

    .line 106
    const-string/jumbo v6, "1"

    iput-object v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->loaderId:Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;->url()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->documentURL:Ljava/lang/String;

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "params.documentURL "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->documentURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iput-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->request:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;

    .line 110
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    iput-wide v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->timestamp:D

    .line 111
    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->initiator:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;

    .line 112
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->redirectResponse:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;

    .line 117
    sget-object v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->OTHER:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    iput-object v6, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 119
    const-string/jumbo v6, "Network.requestWillBeSent"

    invoke-virtual {v2, v6, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .end local v0    # "initiatorJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;
    .end local v1    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$RequestWillBeSentParams;
    .end local v3    # "requestFriendlyName":Ljava/lang/String;
    .end local v4    # "requestJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;
    .end local v5    # "requestPriority":Ljava/lang/Integer;
    :cond_0
    return-void

    .restart local v0    # "initiatorJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Initiator;
    .restart local v3    # "requestFriendlyName":Ljava/lang/String;
    .restart local v4    # "requestJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Request;
    .restart local v5    # "requestPriority":Ljava/lang/Integer;
    :cond_1
    move v6, v7

    .line 100
    goto :goto_0
.end method

.method public responseHeadersReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;)V
    .locals 14
    .param p1, "response"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v4

    .line 145
    .local v4, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v4, :cond_1

    .line 146
    new-instance v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;

    invoke-direct {v6}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;-><init>()V

    .line 147
    .local v6, "responseJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->url()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->url:Ljava/lang/String;

    .line 148
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->statusCode()I

    move-result v9

    iput v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->status:I

    .line 149
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->reasonPhrase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->statusText:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->formatHeadersAsJSON(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->headers:Lorg/json/JSONObject;

    .line 151
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getContentType(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getResourceTypeHelper()Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;->stripContentExtras(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    iput-object v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->mimeType:Ljava/lang/String;

    .line 155
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->connectionReused()Z

    move-result v9

    iput-boolean v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->connectionReused:Z

    .line 156
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->connectionId()I

    move-result v9

    iput v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->connectionId:I

    .line 157
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->fromDiskCache()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->fromDiskCache:Ljava/lang/Boolean;

    .line 160
    :try_start_0
    const-string/jumbo v9, "reportTiming"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterManager;->getParam(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 161
    instance-of v9, p1, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$TimingInspectorResponse;

    if-eqz v9, :cond_0

    .line 162
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$TimingInspectorResponse;

    move-object v9, v0

    invoke-interface {v9}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$TimingInspectorResponse;->resourceTiming()Lcom/taobao/weex/devtools/inspector/network/Timing;

    move-result-object v8

    .line 163
    .local v8, "timing":Lcom/taobao/weex/devtools/inspector/network/Timing;
    invoke-direct {p0, v8}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->createTimingFrom(Lcom/taobao/weex/devtools/inspector/network/Timing;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;

    move-result-object v9

    iput-object v9, v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;->timing:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResourceTiming;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v8    # "timing":Lcom/taobao/weex/devtools/inspector/network/Timing;
    :cond_0
    :goto_1
    new-instance v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;

    invoke-direct {v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;-><init>()V

    .line 171
    .local v5, "receivedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;->requestId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;->requestId:Ljava/lang/String;

    .line 172
    const-string/jumbo v9, "1"

    iput-object v9, v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;->frameId:Ljava/lang/String;

    .line 173
    const-string/jumbo v9, "1"

    iput-object v9, v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;->loaderId:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    iput-wide v10, v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;->timestamp:D

    .line 175
    iput-object v6, v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;->response:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;

    .line 177
    invoke-static {p1, v4}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->initAsyncPrettyPrinterForResponse(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;

    move-result-object v2

    .line 179
    .local v2, "asyncPrettyPrinter":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getResourceTypeHelper()Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->determineResourceType(Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;Ljava/lang/String;Lcom/taobao/weex/devtools/inspector/network/ResourceTypeHelper;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    move-result-object v9

    iput-object v9, v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 180
    const-string/jumbo v9, "Network.responseReceived"

    invoke-virtual {v4, v9, v5}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    .end local v2    # "asyncPrettyPrinter":Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v5    # "receivedParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$ResponseReceivedParams;
    .end local v6    # "responseJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;
    :cond_1
    return-void

    .line 153
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v6    # "responseJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$Response;
    :cond_2
    const-string/jumbo v9, "application/octet-stream"

    goto :goto_0

    .line 166
    :catch_0
    move-exception v7

    .line 167
    .local v7, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->loadingFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public responseReadFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->loadingFinished(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public webSocketClosed(Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 369
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 370
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;-><init>()V

    .line 371
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;->requestId:Ljava/lang/String;

    .line 372
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;->timestamp:D

    .line 373
    const-string/jumbo v2, "Network.webSocketClosed"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketClosedParams;
    :cond_0
    return-void
.end method

.method public webSocketCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 358
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;-><init>()V

    .line 360
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;->requestId:Ljava/lang/String;

    .line 361
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;->url:Ljava/lang/String;

    .line 362
    const-string/jumbo v2, "Network.webSocketCreated"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketCreatedParams;
    :cond_0
    return-void
.end method

.method public webSocketFrameError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 450
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 451
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;-><init>()V

    .line 452
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;->requestId:Ljava/lang/String;

    .line 453
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;->timestamp:D

    .line 454
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;->errorMessage:Ljava/lang/String;

    .line 455
    const-string/jumbo v2, "Network.webSocketFrameError"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameErrorParams;
    :cond_0
    return-void
.end method

.method public webSocketFrameReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)V
    .locals 6
    .param p1, "frame"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 430
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 431
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;-><init>()V

    .line 432
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;->requestId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;->requestId:Ljava/lang/String;

    .line 433
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;->timestamp:D

    .line 434
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->convertFrame(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;->response:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;

    .line 435
    const-string/jumbo v2, "Network.webSocketFrameReceived"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 437
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameReceivedParams;
    :cond_0
    return-void
.end method

.method public webSocketFrameSent(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)V
    .locals 6
    .param p1, "frame"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 418
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 419
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;-><init>()V

    .line 420
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;->requestId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;->requestId:Ljava/lang/String;

    .line 421
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;->timestamp:D

    .line 422
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->convertFrame(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;->response:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrame;

    .line 423
    const-string/jumbo v2, "Network.webSocketFrameSent"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketFrameSentParams;
    :cond_0
    return-void
.end method

.method public webSocketHandshakeResponseReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 395
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 396
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_1

    .line 397
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;-><init>()V

    .line 399
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;->requestId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;->requestId:Ljava/lang/String;

    .line 400
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;->timestamp:D

    .line 401
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;-><init>()V

    .line 402
    .local v2, "responseJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->formatHeadersAsJSON(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;->headers:Lorg/json/JSONObject;

    .line 403
    iput-object v8, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;->headersText:Ljava/lang/String;

    .line 404
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;->requestHeaders()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 405
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;->requestHeaders()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->formatHeadersAsJSON(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;->requestHeaders:Lorg/json/JSONObject;

    .line 406
    iput-object v8, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;->requestHeadersText:Ljava/lang/String;

    .line 408
    :cond_0
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;->statusCode()I

    move-result v3

    iput v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;->status:I

    .line 409
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;->reasonPhrase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;->statusText:Ljava/lang/String;

    .line 410
    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;->response:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;

    .line 411
    const-string/jumbo v3, "Network.webSocketHandshakeResponseReceived"

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketHandshakeResponseReceivedParams;
    .end local v2    # "responseJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketResponse;
    :cond_1
    return-void
.end method

.method public webSocketWillSendHandshakeRequest(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;)V
    .locals 8
    .param p1, "request"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 379
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->getPeerManagerIfEnabled()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    move-result-object v1

    .line 380
    .local v1, "peerManager":Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    if-eqz v1, :cond_0

    .line 381
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;-><init>()V

    .line 383
    .local v0, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;->id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;->requestId:Ljava/lang/String;

    .line 384
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->stethoNow()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;->timestamp:D

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;->wallTime:D

    .line 386
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;-><init>()V

    .line 387
    .local v2, "requestJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->formatHeadersAsJSON(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorHeaders;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;->headers:Lorg/json/JSONObject;

    .line 388
    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;->request:Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;

    .line 389
    const-string/jumbo v3, "Network.webSocketWillSendHandshakeRequest"

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    .end local v0    # "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketWillSendHandshakeRequestParams;
    .end local v2    # "requestJSON":Lcom/taobao/weex/devtools/inspector/protocol/module/Network$WebSocketRequest;
    :cond_0
    return-void
.end method
