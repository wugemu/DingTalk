.class Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "DDDefaultWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    new-instance v4, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v4}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    .line 76
    .local v4, "response":Lcom/taobao/weex/common/WXResponse;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->getEventReporterDelegate()Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

    move-result-object v3

    .line 87
    .local v3, "reporter":Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, v7, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lhhy;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v5

    .line 89
    .local v5, "webRes":Lcom/uc/webview/export/WebResourceResponse;
    if-nez v5, :cond_0

    .line 91
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, v7, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-interface {v6, v7}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v1

    .line 92
    .local v1, "info":Lhqy;
    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "User-Agent"

    const-string/jumbo v7, "WEEX-TUNNEL"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v6, "Referer"

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, v7, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v6, "X-Micro-App-Id"

    iget-object v7, v1, Lhqy;->c:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, v7, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v5

    .line 107
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "info":Lhqy;
    :cond_0
    if-eqz v5, :cond_3

    .line 108
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, v7, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v6, "200"

    iput-object v6, v4, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 111
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    const/16 v7, 0xc8

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6, v7, v8}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 114
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->postConnect()V

    .line 116
    invoke-virtual {v5}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    .line 117
    .local v2, "rawStream":Ljava/io/InputStream;
    invoke-interface {v3, v2}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 119
    invoke-static {v2}, Lhpo;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    .line 121
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v6, :cond_2

    .line 122
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v6, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 168
    .end local v2    # "rawStream":Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-void

    .line 130
    :cond_3
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v6, v6, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    invoke-direct {v7, p0, v4, v3}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;Lcom/taobao/weex/common/WXResponse;Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;)V

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil;->wrapperVersionHolderUrl(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/weex/util/UrlPlaceHolderReplaceUtil$UrlPlaceHolderReplaceCallback;)V

    goto :goto_0
.end method
