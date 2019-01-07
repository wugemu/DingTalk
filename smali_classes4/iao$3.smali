.class final Liao$3;
.super Liae;
.source "CategoryServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liao;->getCategoryById(JLcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:J

.field final synthetic c:Liao;


# direct methods
.method constructor <init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V
    .locals 1
    .param p1, "this$0"    # Liao;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 142
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iput-object p1, p0, Liao$3;->c:Liao;

    iput-wide p5, p0, Liao$3;->b:J

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">.b;)",
            "Liae",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 160
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/category/CategoryObject;>.b;"
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Liao$3;->a:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v1

    iget-object v0, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-virtual {v1, v0}, Liaj;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)Z

    .line 163
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    .line 1149
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v0

    iget-wide v2, p0, Liao$3;->b:J

    invoke-virtual {v0, v2, v3}, Liaj;->b(J)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_1

    .line 1151
    const/4 v1, 0x0

    iput-boolean v1, p0, Liao$3;->a:Z

    .line 1152
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Liao$3;->a:Z

    .line 1155
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v0

    iget-wide v2, p0, Liao$3;->b:J

    .line 1168
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 1169
    if-eqz p2, :cond_0

    .line 1170
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR getCategoryInfo param invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_2
    new-instance v1, Lian$6;

    invoke-direct {v1, v0, p2}, Lian$6;-><init>(Lian;Lcom/alibaba/wukong/Callback;)V

    .line 1186
    const-string/jumbo v0, "CategoryRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] getCategoryInfo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2018
    const-string/jumbo v5, "im"

    invoke-static {v0, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->getCategoryInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
