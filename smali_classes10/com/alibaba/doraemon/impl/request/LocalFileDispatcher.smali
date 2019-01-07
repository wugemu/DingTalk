.class public Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;
.super Ljava/lang/Object;
.source "LocalFileDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
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
    .locals 0
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
    .line 25
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 27
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    const/16 v4, 0xc8

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromLocalFile(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v4, Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-direct {v4, v0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0
.end method
