.class Lcom/alibaba/doraemon/impl/request/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->execute(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
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
    .line 39
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

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
    .line 43
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 45
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$000(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 47
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$100(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 49
    .local v1, "ready2Run":Lcom/alibaba/doraemon/impl/request/RequestClient;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isDead()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isHugeDownload()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getPriority()Lcom/alibaba/doraemon/Priority;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getHugeDownloadThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->trigger(Lcom/alibaba/doraemon/threadpool/Thread;)V

    .line 54
    :goto_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$100(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v1    # "ready2Run":Lcom/alibaba/doraemon/impl/request/RequestClient;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 53
    .restart local v1    # "ready2Run":Lcom/alibaba/doraemon/impl/request/RequestClient;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getPriority()Lcom/alibaba/doraemon/Priority;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getRequestThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->trigger(Lcom/alibaba/doraemon/threadpool/Thread;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1    # "ready2Run":Lcom/alibaba/doraemon/impl/request/RequestClient;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ready2Run":Lcom/alibaba/doraemon/impl/request/RequestClient;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$200(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 58
    .local v2, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-nez v2, :cond_5

    .line 59
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .restart local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$200(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_5
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 63
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->bind2Request(Z)V

    goto :goto_1

    .line 65
    :cond_6
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
