.class final Lidv$1;
.super Liae;
.source "UserServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidv;->updateAvatar(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
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

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

.field final synthetic d:Lidv;


# direct methods
.method constructor <init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/idl/user/models/ProfileModel;)V
    .locals 1
    .param p1, "this$0"    # Lidv;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 81
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lidv$1;->d:Lidv;

    iput-object p5, p0, Lidv$1;->a:Ljava/lang/String;

    iput-object p6, p0, Lidv$1;->b:Lcom/alibaba/wukong/Callback;

    iput-object p7, p0, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

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
    .line 117
    .local p1, "rpcResult":Liae$b;, "Liae<Ljava/lang/Void;Ljava/lang/Void;>.b;"
    iget-boolean v0, p1, Liae$b;->a:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    iget-object v1, p0, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->openId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lidq;->a(JLjava/lang/String;)Z

    .line 120
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    .line 1084
    iget-object v0, p0, Lidv$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lieb;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    iget-object v1, p0, Lidv$1;->a:Ljava/lang/String;

    new-instance v2, Lidv$1$1;

    invoke-direct {v2, p0, p2}, Lidv$1$1;-><init>(Lidv$1;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1, v2}, Lify;->a(Ljava/lang/String;Lifw;)V

    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    iget-object v1, p0, Lidv$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->avatar:Ljava/lang/String;

    .line 1111
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v0

    iget-object v1, p0, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    invoke-virtual {v0, v1, p2}, Lidu;->a(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
