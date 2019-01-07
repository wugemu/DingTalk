.class Lcom/alibaba/doraemon/impl/request/RequestClient$5;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;->deliver(Lcom/alibaba/doraemon/threadpool/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    .line 354
    .local v0, "instance":Lcom/alibaba/doraemon/impl/request/Volley;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v2

    new-instance v3, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient$5;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/Runnable;)V

    .line 421
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->deliverFinsh(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 422
    return-void
.end method
