.class public Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private dispatchResponse(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 61
    return-void
.end method


# virtual methods
.method public postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    .locals 3
    .param p2, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    const-string/jumbo v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v0

    .line 51
    .local v0, "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    new-instance v1, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;->dispatchResponse(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    .local p2, "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;Ljava/lang/Runnable;)V
    .locals 1
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    .local p2, "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->markDelivered()V

    .line 43
    const-string/jumbo v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;->dispatchResponse(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 57
    return-void
.end method
