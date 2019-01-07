.class final Liao$4;
.super Liae;
.source "CategoryServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liao;->moveConversations(Ljava/util/List;JLcom/alibaba/wukong/Callback;)V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Liao;


# direct methods
.method constructor <init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;J)V
    .locals 2
    .param p1, "this$0"    # Liao;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 186
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Liao$4;->c:Liao;

    iput-object p5, p0, Liao$4;->a:Ljava/util/List;

    iput-wide p6, p0, Liao$4;->b:J

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

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
            "Ljava/lang/String;",
            ">;>.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/util/List<Ljava/lang/String;>;>.b;"
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Liae$b;->a:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    iget-object v3, p0, Liao$4;->a:Ljava/util/List;

    iget-object v1, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-wide v4, p0, Liao$4;->b:J

    invoke-virtual {v2, v3, v1, v4, v5}, Liar;->a(Ljava/util/List;Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Liap;->a(Ljava/util/List;)V

    .line 199
    .end local v0    # "localNotExist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 186
    .line 1191
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v0

    iget-object v1, p0, Liao$4;->a:Ljava/util/List;

    iget-wide v2, p0, Liao$4;->b:J

    .line 2090
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2091
    :cond_0
    if-eqz p2, :cond_1

    .line 2092
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR moveConversation param invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    :cond_1
    :goto_0
    return-void

    .line 2097
    :cond_2
    new-instance v4, Lian$3;

    invoke-direct {v4, v0, p2}, Lian$3;-><init>(Lian;Lcom/alibaba/wukong/Callback;)V

    .line 2105
    const-string/jumbo v0, "CategoryRpc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[RPC] moveConversation :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3018
    const-string/jumbo v6, "im"

    invoke-static {v0, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->moveConversation(Ljava/util/List;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
