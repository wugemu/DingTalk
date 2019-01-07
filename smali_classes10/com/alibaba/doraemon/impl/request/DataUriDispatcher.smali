.class public Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;
.super Ljava/lang/Object;
.source "DataUriDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

.field private final mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V
    .locals 1
    .param p2, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "DataUriDispatcher"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 29
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    if-nez v5, :cond_1

    .line 37
    :cond_0
    const-string/jumbo v5, "DataUriDispatcher"

    const-string/jumbo v6, "mRequest or mDelivery is invalid"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v7, Lcom/alibaba/doraemon/impl/request/VolleyError;

    new-instance v8, Ljava/lang/Exception;

    const-string/jumbo v9, "dataUrl is empty"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "data:"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 46
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v7, Lcom/alibaba/doraemon/impl/request/VolleyError;

    new-instance v8, Ljava/lang/Exception;

    const-string/jumbo v9, "dataUrl url format error"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0

    .line 49
    :cond_3
    const/4 v2, 0x0

    .line 51
    .local v2, "parser":Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    :try_start_0
    new-instance v5, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    invoke-direct {v5, v4}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parse()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :goto_1
    const/4 v0, 0x0

    .line 63
    .local v0, "bytes":[B
    if-eqz v2, :cond_4

    .line 65
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getData()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 77
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 78
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v7, Lcom/alibaba/doraemon/impl/request/VolleyError;

    new-instance v8, Ljava/lang/Exception;

    const-string/jumbo v9, "cannot parse bytes from dataUrl"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0

    .line 52
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 55
    .local v3, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "parse uri exception,url:"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 56
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 57
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 58
    const-string/jumbo v5, "exception:"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 60
    const-string/jumbo v5, "DataUriDispatcher"

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v0    # "bytes":[B
    :catch_1
    move-exception v1

    .line 67
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 69
    .restart local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "parse uri getData exception error,url:"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 70
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 71
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 72
    const-string/jumbo v5, "exception:"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 74
    const-string/jumbo v5, "DataUriDispatcher"

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    const/16 v7, 0xc8

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromBytes([B)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v8

    array-length v9, v0

    int-to-long v10, v9

    const/4 v9, 0x0

    invoke-static {v7, v8, v10, v11, v9}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    goto/16 :goto_0
.end method
