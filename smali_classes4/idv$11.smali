.class final Lidv$11;
.super Liae;
.source "UserServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidv;->updateExtension(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lidv;


# direct methods
.method constructor <init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lidv;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 265
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lidv$11;->d:Lidv;

    iput-object p5, p0, Lidv$11;->a:Ljava/lang/String;

    iput-object p6, p0, Lidv$11;->b:Ljava/lang/String;

    iput-object p7, p0, Lidv$11;->c:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 292
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    iget-object v1, p0, Lidv$11;->a:Ljava/lang/String;

    iget-object v4, p0, Lidv$11;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lidq;->b(JLjava/lang/String;Ljava/lang/String;)Z

    .line 295
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 265
    .line 1268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1269
    iget-object v1, p0, Lidv$11;->a:Ljava/lang/String;

    iget-object v2, p0, Lidv$11;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v1

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v1

    .line 1272
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1273
    iget-object v1, v1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1277
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/user/models/ProfileModel;-><init>()V

    .line 1278
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->openId:Ljava/lang/Long;

    .line 1279
    invoke-static {v0}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->extension:Ljava/lang/String;

    .line 1281
    iget-object v0, v1, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1002

    if-le v0, v2, :cond_1

    .line 1282
    iget-object v0, p0, Lidv$11;->c:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR extension out of size!"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :goto_0
    return-void

    .line 1287
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lidu;->a(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
