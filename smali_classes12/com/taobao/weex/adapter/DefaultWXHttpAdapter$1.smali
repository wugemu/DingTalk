.class Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iput-object p2, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    new-instance v5, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v5}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    .line 64
    .local v5, "response":Lcom/taobao/weex/common/WXResponse;
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-virtual {v8}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->getEventReporterDelegate()Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;

    move-result-object v4

    .line 66
    .local v4, "reporter":Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;
    :try_start_0
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iget-object v9, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v10, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v8, v9, v10}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$100(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 67
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v8, v8, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-interface {v4, v0, v8}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 69
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 70
    .local v6, "responseCode":I
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v8, :cond_0

    .line 71
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v8, v6, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 73
    :cond_0
    invoke-interface {v4}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->postConnect()V

    .line 75
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 76
    const/16 v8, 0xc8

    if-lt v6, v8, :cond_2

    const/16 v8, 0x12b

    if-gt v6, v8, :cond_2

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 78
    .local v3, "rawStream":Ljava/io/InputStream;
    invoke-interface {v4, v3}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 79
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iget-object v9, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v8, v3, v9}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$200(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v8

    iput-object v8, v5, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    .line 83
    .end local v3    # "rawStream":Ljava/io/InputStream;
    :goto_0
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v8, :cond_1

    .line 84
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v8, v5}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 102
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "responseCode":I
    :cond_1
    :goto_1
    return-void

    .line 81
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "responseCode":I
    :cond_2
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    iget-object v10, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v8, v9, v10}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$300(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 86
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "responseCode":I
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const-string/jumbo v8, "-1"

    iput-object v8, v5, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 89
    const-string/jumbo v8, "-1"

    iput-object v8, v5, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 91
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v8, :cond_3

    .line 92
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v8, v5}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 94
    :cond_3
    instance-of v8, v1, Ljava/io/IOException;

    if-eqz v8, :cond_1

    .line 96
    :try_start_1
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-interface {v4, v1}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->httpExchangeFailed(Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 97
    :catch_1
    move-exception v7

    .line 98
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    goto :goto_2
.end method
