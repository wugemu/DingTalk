.class final Liao$1;
.super Liae;
.source "CategoryServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liao;->createCategory(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liao;


# direct methods
.method constructor <init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Liao;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 63
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iput-object p1, p0, Liao$1;->b:Liao;

    iput-object p5, p0, Liao$1;->a:Ljava/lang/String;

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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Lcom/alibaba/wukong/im/category/CategoryObject;>.b;"
    if-eqz p1, :cond_0

    iget-boolean v2, p1, Liae$b;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 75
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 76
    .local v0, "createTime":J
    :goto_0
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-wide v0, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->createAt:J

    .line 77
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-wide v0, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->modifiedAt:J

    .line 78
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->tooLong2Sync:Z

    .line 79
    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v3

    invoke-virtual {v3}, Liaj;->a()I

    move-result v3

    iput v3, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    .line 80
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v3

    iget-object v2, p1, Liae$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-virtual {v3, v2}, Liaj;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)Z

    .line 82
    .end local v0    # "createTime":J
    :cond_0
    return-object p1

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    .line 1068
    new-instance v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>()V

    .line 1069
    iget-object v1, p0, Liao$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 1070
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryRpc()Lian;

    move-result-object v1

    .line 2035
    iget-object v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2036
    if-eqz p2, :cond_0

    .line 2037
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR category is null or title empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    new-instance v2, Lian$1;

    invoke-direct {v2, v1, p2, v0}, Lian$1;-><init>(Lian;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 2051
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/CategoryModel;-><init>()V

    .line 2052
    iget-object v3, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/CategoryModel;->title:Ljava/lang/String;

    .line 2054
    const-string/jumbo v3, "CategoryRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] createCategory title:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3018
    const-string/jumbo v4, "im"

    invoke-static {v3, v0, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-class v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/idl/im/client/IDLCategoryService;->createCategory(Lcom/alibaba/wukong/idl/im/models/CategoryModel;Liyv;)V

    goto :goto_0
.end method
