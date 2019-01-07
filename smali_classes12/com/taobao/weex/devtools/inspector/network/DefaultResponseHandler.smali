.class public Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;
.super Ljava/lang/Object;
.source "DefaultResponseHandler.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;


# instance fields
.field private mBytesRead:I

.field private mDecodedBytesRead:I

.field private final mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventReporter"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mBytesRead:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    .line 26
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 27
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mRequestId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private reportDataReceived()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mRequestId:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mBytesRead:I

    iget v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->dataReceived(Ljava/lang/String;II)V

    .line 58
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mBytesRead:I

    goto :goto_0
.end method


# virtual methods
.method public onEOF()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->reportDataReceived()V

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->responseReadFinished(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onError(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->reportDataReceived()V

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mRequestId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onRead(I)V
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 32
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mBytesRead:I

    .line 33
    return-void
.end method

.method public onReadDecoded(I)V
    .locals 2
    .param p1, "numBytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    .line 40
    :cond_0
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;->mDecodedBytesRead:I

    .line 41
    return-void
.end method
