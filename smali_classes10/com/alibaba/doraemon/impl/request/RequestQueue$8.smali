.class Lcom/alibaba/doraemon/impl/request/RequestQueue$8;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->cancelRequestsInGroup(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field final synthetic val$force:Z

.field final synthetic val$groupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$groupName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$force:Z

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
    .line 285
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$groupName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 287
    .local v0, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 289
    .local v1, "request":Lcom/alibaba/doraemon/impl/request/RequestClient;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$groupName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$force:Z

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->cancelReqInGroup(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 294
    .end local v1    # "request":Lcom/alibaba/doraemon/impl/request/RequestClient;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$groupName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$400(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;->val$groupName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method
