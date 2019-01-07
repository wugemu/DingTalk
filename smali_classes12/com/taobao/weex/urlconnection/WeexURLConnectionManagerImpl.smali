.class Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;
.super Ljava/lang/Object;
.source "WeexURLConnectionManagerImpl.java"


# static fields
.field private static final sSequenceNumberGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;

.field private mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

.field private final mFriendlyName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mInspectorRequest:Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestId:I

.field private mRequestIdString:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->sSequenceNumberGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "friendlyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->sSequenceNumberGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestId:I

    .line 48
    iput-object p1, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mFriendlyName:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterManager;->get()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterManager;->newEmptyReporter()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 53
    :cond_0
    return-void
.end method

.method private throwIfConnection()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must not call preConnect twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method private throwIfNoConnection()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call preConnect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public getReporter()Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestIdString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    iget v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestIdString:Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestIdString:Ljava/lang/String;

    return-object v0
.end method

.method public httpExchangeFailed(Ljava/io/IOException;)V
    .locals 3
    .param p1, "ex"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->throwIfNoConnection()V

    .line 100
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->isInspectorActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .param p1, "responseStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->throwIfNoConnection()V

    .line 110
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->isInspectorActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 117
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "Content-Type"

    .line 118
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "Content-Encoding"

    .line 119
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;

    iget-object v4, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 121
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/taobao/weex/devtools/inspector/network/DefaultResponseHandler;-><init>(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    move-object v4, p1

    .line 116
    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;)Ljava/io/InputStream;

    move-result-object p1

    .line 123
    :cond_0
    return-object p1
.end method

.method public isInspectorActive()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public postConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->throwIfNoConnection()V

    .line 84
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->isInspectorActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->reportDataSent()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    new-instance v1, Lcom/taobao/weex/urlconnection/URLConnectionInspectorResponse;

    .line 90
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorResponse;-><init>(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 88
    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->responseHeadersReceived(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorResponse;)V

    .line 93
    :cond_1
    return-void
.end method

.method public preConnect(Ljava/net/HttpURLConnection;Lcom/taobao/weex/urlconnection/SimpleRequestEntity;)V
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requestEntity"    # Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->throwIfConnection()V

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mConnection:Ljava/net/HttpURLConnection;

    .line 67
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->isInspectorActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    iget-object v1, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;-><init>(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    .line 69
    new-instance v0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;

    .line 70
    invoke-virtual {p0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mFriendlyName:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/taobao/weex/urlconnection/SimpleRequestEntity;Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;)V

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mInspectorRequest:Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    iget-object v1, p0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManagerImpl;->mInspectorRequest:Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->requestWillBeSent(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;)V

    .line 77
    :cond_0
    return-void
.end method
