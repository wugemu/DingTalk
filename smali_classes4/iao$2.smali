.class final Liao$2;
.super Liae;
.source "CategoryServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liao;->deleteCategory(JLcom/alibaba/wukong/Callback;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Liao;


# direct methods
.method constructor <init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V
    .locals 1
    .param p1, "this$0"    # Liao;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 105
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Liao$2;->b:Liao;

    iput-wide p5, p0, Liao$2;->a:J

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
            "Ljava/lang/Void;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Liae$b;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Liae$b;->a:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "130032"

    iget-object v1, p1, Liae$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-wide v2, p0, Liao$2;->a:J

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Liar;->a(JJ)Z

    .line 117
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v0

    iget-wide v2, p0, Liao$2;->a:J

    invoke-virtual {v0, v2, v3}, Liaj;->a(J)Z

    .line 119
    :cond_1
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    .line 1110
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v0

    iget-wide v2, p0, Liao$2;->a:J

    .line 2064
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 2065
    if-eqz p2, :cond_0

    .line 2066
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR categoryId invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    new-instance v1, Lian$2;

    invoke-direct {v1, v0, p2}, Lian$2;-><init>(Lian;Lcom/alibaba/wukong/Callback;)V

    .line 2079
    const-string/jumbo v0, "CategoryRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] delCategory :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3018
    const-string/jumbo v5, "im"

    invoke-static {v0, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->delCategory(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
