.class Lcom/alibaba/doraemon/impl/request/RequestQueue$4;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->cancelRequest(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field final synthetic val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$500(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 161
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$100(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 163
    .local v0, "ready2Run":Lcom/alibaba/doraemon/impl/request/RequestClient;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    if-ne v0, v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$100(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$200(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 167
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 168
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->execute(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    .end local v1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$200(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 172
    .restart local v1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v1, :cond_0

    .line 174
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->bind2Request(Z)V

    goto :goto_0
.end method
