.class Lcom/alibaba/doraemon/impl/request/RequestClient$3;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;->handleHttpRequest()V
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
    .line 282
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$3;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v6

    .line 286
    .local v6, "volley":Lcom/alibaba/doraemon/impl/request/Volley;
    new-instance v0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$3;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$3;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/Volley;->network()Lcom/alibaba/doraemon/impl/request/Network;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/Volley;->cache()Lcom/alibaba/doraemon/impl/request/Cache;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/RequestClient;Lcom/alibaba/doraemon/impl/request/Network;Lcom/alibaba/doraemon/impl/request/Cache;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->run()V

    .line 287
    return-void
.end method
