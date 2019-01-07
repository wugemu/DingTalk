.class Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;
.super Ljava/lang/Object;
.source "DDDefaultWXHttpAdapter.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventReportDelegate"
.end annotation


# instance fields
.field manager:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;->manager:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public httpExchangeFailed(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;->manager:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->httpExchangeFailed(Ljava/io/IOException;)V

    .line 455
    return-void
.end method

.method public interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;->manager:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public postConnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;->manager:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;

    invoke-virtual {v1}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->postConnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "body"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "requestEntity":Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
    if-eqz p2, :cond_0

    .line 431
    new-instance v0, Lcom/taobao/weex/urlconnection/ByteArrayRequestEntity;

    .end local v0    # "requestEntity":Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/urlconnection/ByteArrayRequestEntity;-><init>([B)V

    .line 435
    .restart local v0    # "requestEntity":Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$EventReportDelegate;->manager:Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;

    invoke-virtual {v1, p1, v0}, Lcom/taobao/weex/urlconnection/WeexURLConnectionManager;->preConnect(Ljava/net/HttpURLConnection;Lcom/taobao/weex/urlconnection/SimpleRequestEntity;)V

    .line 436
    return-void
.end method
