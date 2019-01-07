.class Lcom/alibaba/doraemon/impl/request/RequestQueue$2;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->addRequest2Group(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
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
    .line 94
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$group:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

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
    .line 98
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$group:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 99
    .local v1, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 101
    .restart local v1    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$group:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$400(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$group:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/request/RequestClient;->pauseReqInGroup(Ljava/lang/String;)V

    .line 112
    :goto_0
    const-string/jumbo v2, "default_request_group"

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "default_request_group"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 114
    .local v0, "defaultGroup":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 118
    .end local v0    # "defaultGroup":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    :cond_1
    return-void

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;->val$requestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->resumeRequest()V

    goto :goto_0
.end method
