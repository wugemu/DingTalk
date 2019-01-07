.class Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;
.super Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;
.source "URLConnectionInspectorRequest.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter$InspectorRequest;


# instance fields
.field private final mFriendlyName:Ljava/lang/String;

.field private final mMethod:Ljava/lang/String;

.field private final mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

.field private final mRequestEntity:Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestId:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/taobao/weex/urlconnection/SimpleRequestEntity;Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "configuredRequest"    # Ljava/net/HttpURLConnection;
    .param p4, "requestEntity"    # Lcom/taobao/weex/urlconnection/SimpleRequestEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "requestBodyHelper"    # Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    .prologue
    .line 39
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/urlconnection/Util;->convertHeaders(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorHeaders;-><init>(Ljava/util/ArrayList;)V

    .line 40
    iput-object p1, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mFriendlyName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestEntity:Lcom/taobao/weex/urlconnection/SimpleRequestEntity;

    .line 43
    iput-object p5, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    .line 44
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mUrl:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mMethod:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public body()[B
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestEntity:Lcom/taobao/weex/urlconnection/SimpleRequestEntity;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    const-string/jumbo v2, "Content-Encoding"

    invoke-virtual {p0, v2}, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->createBodySink(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 79
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestEntity:Lcom/taobao/weex/urlconnection/SimpleRequestEntity;

    invoke-interface {v1, v0}, Lcom/taobao/weex/urlconnection/SimpleRequestEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 83
    iget-object v1, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestBodyHelper:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->getDisplayBody()[B

    move-result-object v1

    .line 85
    .end local v0    # "out":Ljava/io/OutputStream;
    :goto_0
    return-object v1

    .line 81
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1

    .line 85
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public friendlyNameExtra()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/URLConnectionInspectorRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method
