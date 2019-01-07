.class public Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter;


# instance fields
.field private mDefaultHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field private mExecutorService:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->mDefaultHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 28
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->mExecutorService:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Lcom/taobao/weex/common/WXRequest;)Lcom/taobao/weex/common/WXResponse;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;
    .param p1, "x1"    # Lcom/taobao/weex/common/WXRequest;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->loadResourceFromHpm(Lcom/taobao/weex/common/WXRequest;)Lcom/taobao/weex/common/WXResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;)Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->mDefaultHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->readInputStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethodCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "code":I
    const-string/jumbo v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const/4 v0, 0x0

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const-string/jumbo v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v1, "PUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const/4 v0, 0x2

    goto :goto_0

    .line 146
    :cond_3
    const-string/jumbo v1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    const/4 v0, 0x3

    goto :goto_0

    .line 149
    :cond_4
    const-string/jumbo v1, "HEAD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    const/4 v0, 0x4

    goto :goto_0

    .line 152
    :cond_5
    const-string/jumbo v1, "OPTIONS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    const/4 v0, 0x5

    goto :goto_0

    .line 155
    :cond_6
    const-string/jumbo v1, "TRACE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    const/4 v0, 0x6

    goto :goto_0

    .line 158
    :cond_7
    const-string/jumbo v1, "HEAD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private loadResourceFromHpm(Lcom/taobao/weex/common/WXRequest;)Lcom/taobao/weex/common/WXResponse;
    .locals 6
    .param p1, "request"    # Lcom/taobao/weex/common/WXRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "response":Lcom/taobao/weex/common/WXResponse;
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v4

    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lhhy;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v3

    .line 64
    .local v3, "webResource":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 65
    new-instance v2, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v2}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    .line 66
    .local v2, "tmpRes":Lcom/taobao/weex/common/WXResponse;
    const-string/jumbo v4, "200"

    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-virtual {v3}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->originalData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    move-object v1, v2

    .line 74
    .end local v2    # "tmpRes":Lcom/taobao/weex/common/WXResponse;
    :cond_0
    :goto_0
    return-object v1

    .line 70
    .restart local v2    # "tmpRes":Lcom/taobao/weex/common/WXResponse;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadResourceFromHttp(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 2
    .param p1, "request"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 80
    .local v0, "httpRequest":Lcom/alibaba/doraemon/request/Request;
    iget-object v1, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->getMethodCode(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setMethod(I)V

    .line 81
    iget-object v1, p1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 82
    iget-object v1, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestBody([B)Lcom/alibaba/doraemon/request/Request;

    .line 83
    iget-object v1, p1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 84
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 85
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 132
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 133
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readInputStreamAsBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 170
    const/4 v3, 0x0

    .line 185
    :goto_0
    return-object v3

    .line 172
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-array v1, v5, [B

    .line 178
    .local v1, "data":[B
    :goto_1
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 179
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method

.method private readInputStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 2
    .param p1, "request"    # Lcom/taobao/weex/common/WXRequest;
    .param p2, "listener"    # Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->mExecutorService:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
