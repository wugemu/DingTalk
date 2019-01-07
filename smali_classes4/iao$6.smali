.class final Liao$6;
.super Liae;
.source "CategoryServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liao;->adjustCategoryOrder(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Liao;


# direct methods
.method constructor <init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Liao;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 262
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Liao$6;->b:Liao;

    iput-object p5, p0, Liao$6;->a:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 278
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v0

    iget-object v1, p0, Liao$6;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Liaj;->a(Ljava/util/List;Z)Z

    .line 282
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 262
    .line 1267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    iget-object v0, p0, Liao$6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 1269
    if-eqz v0, :cond_0

    .line 1272
    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1274
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v0

    .line 2143
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2144
    if-eqz p2, :cond_2

    .line 2145
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR adjustCategoryOrder param invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    :cond_2
    :goto_1
    return-void

    .line 2150
    :cond_3
    new-instance v2, Lian$5;

    invoke-direct {v2, v0, p2}, Lian$5;-><init>(Lian;Lcom/alibaba/wukong/Callback;)V

    .line 2158
    const-string/jumbo v0, "CategoryRpc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[RPC] adjustCategoryOrder :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3018
    const-string/jumbo v4, "im"

    invoke-static {v0, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->adjustCategoryOrder(Ljava/util/List;Liyv;)V

    goto :goto_1
.end method
