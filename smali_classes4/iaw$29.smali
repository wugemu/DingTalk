.class final Liaw$29;
.super Liae;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->listConversationsByCategoryId(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/category/CategoryObject;

.field final synthetic b:Liaw;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1711
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    iput-object p1, p0, Liaw$29;->b:Liaw;

    iput-object p5, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 1714
    const/4 v0, 0x0

    iput-boolean v0, p0, Liaw$29;->d:Z

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1748
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>.b;"
    const/4 v1, 0x0

    .line 1750
    .local v1, "traceResult":Lhzv;
    :try_start_0
    const-string/jumbo v2, "ConversationServiceImpl"

    .line 2014
    const-string/jumbo v3, "im"

    invoke-static {v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 1751
    iget-object v2, p0, Liaw$29;->c:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1752
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Liaw$29;->c:Ljava/util/List;

    .line 1754
    :cond_0
    iget-boolean v2, p1, Liae$b;->a:Z

    if-eqz v2, :cond_3

    .line 1755
    iget-boolean v2, p0, Liaw$29;->d:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1757
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v3

    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v2}, Liar;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1758
    .local v0, "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v0, :cond_1

    .line 1759
    iget-object v2, p0, Liaw$29;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1762
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v2

    iget-object v3, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Liaj;->a(JZ)Z

    .line 1764
    .end local v0    # "allList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Rpc and local listConversationsByCategoryId suc, sz="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    if-nez v2, :cond_4

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 1766
    :cond_3
    iget-object v2, p0, Liaw$29;->c:Ljava/util/List;

    iput-object v2, p1, Liae$b;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1770
    return-object p1

    .line 1764
    :cond_4
    :try_start_1
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1768
    :catchall_0
    move-exception v2

    .line 3030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1768
    throw v2
.end method

.method public final synthetic onBeforeRpc()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1711
    .line 4718
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v0, v2, v3}, Liar;->a(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Liaw$29;->c:Ljava/util/List;

    .line 4719
    invoke-super {p0}, Liae;->onBeforeRpc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    .line 1711
    return-object v0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1711
    .line 3724
    iget-object v0, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-boolean v0, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 3725
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v1

    iget-object v2, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v1, v2, v3}, Liaj;->b(J)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v1

    .line 3726
    if-eqz v1, :cond_0

    .line 3727
    iget-boolean v0, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 3729
    :cond_0
    iget-object v1, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Liap;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 3731
    :cond_1
    iget-object v0, p0, Liaw$29;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 3733
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Liaw$29;->d:Z

    .line 3734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3735
    iget-object v0, p0, Liaw$29;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Liaw$29;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3736
    iget-object v0, p0, Liaw$29;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 3737
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3738
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3742
    :cond_4
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v0

    iget-object v2, p0, Liaw$29;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v0, v2, v3, v1, p2}, Lian;->a(JLjava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
