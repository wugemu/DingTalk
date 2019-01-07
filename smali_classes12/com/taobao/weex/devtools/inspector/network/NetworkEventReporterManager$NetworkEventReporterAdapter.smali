.class public Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterManager$NetworkEventReporterAdapter;
.super Ljava/lang/Object;
.source "NetworkEventReporterManager.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkEventReporterAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(Ljava/lang/String;II)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    .line 322
    return-void
.end method

.method public dataSent(Ljava/lang/String;II)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    .line 317
    return-void
.end method

.method public httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 296
    return-void
.end method

.method public interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;)Ljava/io/InputStream;
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "contentEncoding"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "responseHandler"    # Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public nextRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestWillBeSent(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;

    .prologue
    .line 286
    return-void
.end method

.method public responseHeadersReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;

    .prologue
    .line 291
    return-void
.end method

.method public responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

.method public responseReadFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 312
    return-void
.end method

.method public webSocketClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 337
    return-void
.end method

.method public webSocketCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 332
    return-void
.end method

.method public webSocketFrameError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 362
    return-void
.end method

.method public webSocketFrameReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;

    .prologue
    .line 357
    return-void
.end method

.method public webSocketFrameSent(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;

    .prologue
    .line 352
    return-void
.end method

.method public webSocketHandshakeResponseReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketResponse;

    .prologue
    .line 347
    return-void
.end method

.method public webSocketWillSendHandshakeRequest(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorWebSocketRequest;

    .prologue
    .line 342
    return-void
.end method
