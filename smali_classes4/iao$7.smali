.class final Liao$7;
.super Liae;
.source "CategoryServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liao;->modifyCategory(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/wukong/im/category/CategoryObject;

.field final synthetic b:Liao;


# direct methods
.method constructor <init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 1
    .param p1, "this$0"    # Liao;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 305
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Liao$7;->b:Liao;

    iput-object p5, p0, Liao$7;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    const/4 v0, 0x1

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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 314
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v0

    iget-object v1, p0, Liao$7;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-virtual {v0, v1}, Liaj;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)Z

    .line 317
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 305
    .line 1310
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v0

    iget-object v1, p0, Liao$7;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 2196
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2197
    :cond_0
    if-eqz p2, :cond_1

    .line 2198
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR modifyCategoryInfo param invalid"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    :cond_1
    :goto_0
    return-void

    .line 2203
    :cond_2
    new-instance v2, Lian$7;

    invoke-direct {v2, v0, p2}, Lian$7;-><init>(Lian;Lcom/alibaba/wukong/Callback;)V

    .line 2211
    const-string/jumbo v0, "CategoryRpc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[RPC] modifyCategoryInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3018
    const-string/jumbo v4, "im"

    invoke-static {v0, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/CategoryModel;-><init>()V

    .line 2213
    iget-wide v4, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->id:Ljava/lang/Long;

    .line 2214
    iget-object v0, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->title:Ljava/lang/String;

    .line 2215
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-interface {v0, v3, v2}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->modifyCategoryInfo(Lcom/alibaba/wukong/idl/im/models/CategoryModel;Liyv;)V

    goto :goto_0
.end method
