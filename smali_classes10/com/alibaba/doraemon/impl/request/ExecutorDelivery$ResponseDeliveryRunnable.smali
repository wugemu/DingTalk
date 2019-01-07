.class Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

.field private final mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "request"    # Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .param p3, "response"    # Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 75
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    .line 76
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 77
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    iget v2, v0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->statusCode:I

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->result:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->length:J

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->headers:Ljava/util/Map;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->deliverResponse(ILjava/lang/Object;JLjava/util/Map;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    iget-boolean v0, v0, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->intermediate:Z

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 101
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error:Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->deliverError(Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->finish(Ljava/lang/String;)V

    goto :goto_1
.end method
