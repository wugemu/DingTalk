.class Lcom/alibaba/doraemon/impl/request/RequestQueue$9;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->resumeRequestsInGroup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field final synthetic val$groupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->val$groupName:Ljava/lang/String;

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
    .line 311
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$400(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->val$groupName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->val$groupName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 315
    .local v1, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 316
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 317
    .local v0, "request":Lcom/alibaba/doraemon/impl/request/RequestClient;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;->val$groupName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/request/RequestClient;->resumeReqInGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v0    # "request":Lcom/alibaba/doraemon/impl/request/RequestClient;
    :cond_0
    return-void
.end method
