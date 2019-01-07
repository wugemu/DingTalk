.class Lcom/alibaba/doraemon/impl/request/RequestQueue$3;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->removeRequestFromGroup(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->val$group:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->val$group:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    .local v0, "groupRequest":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v0, :cond_0

    .line 131
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getGroups()Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    const-string/jumbo v4, "default_request_group"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->addRequest2Group(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    .line 136
    :cond_2
    return-void
.end method
