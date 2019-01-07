.class Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->loadResourceFromHttp(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 5
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v3, :cond_0

    .line 89
    if-eqz p2, :cond_2

    .line 92
    new-instance v2, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v2}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    .line 93
    .local v2, "wxResponse":Lcom/taobao/weex/common/WXResponse;
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v1

    .line 94
    .local v1, "statusCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 97
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_1

    const/16 v3, 0x12b

    if-gt v1, v3, :cond_1

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->access$200(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/common/WXResponse;->originalData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 115
    .end local v1    # "statusCode":I
    .end local v2    # "wxResponse":Lcom/taobao/weex/common/WXResponse;
    :cond_0
    :goto_1
    return-void

    .line 101
    .restart local v1    # "statusCode":I
    .restart local v2    # "wxResponse":Lcom/taobao/weex/common/WXResponse;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->access$300(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    const-string/jumbo v3, "-1"

    iput-object v3, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 106
    const-string/jumbo v3, "-1"

    iput-object v3, v2, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "statusCode":I
    .end local v2    # "wxResponse":Lcom/taobao/weex/common/WXResponse;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    goto :goto_1
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$3;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v0}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 122
    :cond_0
    return-void
.end method
