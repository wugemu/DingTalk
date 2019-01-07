.class final Lidv$13;
.super Liae;
.source "UserServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidv;->updateNickAndAvatar(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic c:Lidv;


# direct methods
.method constructor <init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lidv;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 368
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lidv$13;->c:Lidv;

    iput-object p5, p0, Lidv$13;->a:Ljava/lang/String;

    iput-object p6, p0, Lidv$13;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liae$b;)Liae$b;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 382
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    iget-object v1, p0, Lidv$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lidq;->b(JLjava/lang/String;)Z

    .line 384
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    iget-object v1, p0, Lidv$13;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lidq;->a(JLjava/lang/String;)Z

    .line 386
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 368
    .line 1371
    new-instance v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/user/models/ProfileModel;-><init>()V

    .line 1372
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->openId:Ljava/lang/Long;

    .line 1373
    iget-object v1, p0, Lidv$13;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->nick:Ljava/lang/String;

    .line 1374
    iget-object v1, p0, Lidv$13;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->avatar:Ljava/lang/String;

    .line 1377
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lidu;->a(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Lcom/alibaba/wukong/Callback;)V

    .line 368
    return-void
.end method
