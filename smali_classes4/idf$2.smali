.class final Lidf$2;
.super Liae;
.source "FollowServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidf;->a(ILcom/alibaba/wukong/im/Follow$FollowStatus;ILcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/relation/FollowImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/wukong/im/Follow$FollowStatus;

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Lidf;


# direct methods
.method constructor <init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILcom/alibaba/wukong/im/Follow$FollowStatus;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lidf;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 109
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;>;"
    iput-object p1, p0, Lidf$2;->e:Lidf;

    iput p5, p0, Lidf$2;->a:I

    iput p6, p0, Lidf$2;->b:I

    iput-object p7, p0, Lidf$2;->c:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    iput-object p8, p0, Lidf$2;->d:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    .line 1112
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getFollowCache()Lida;

    move-result-object v0

    iget v1, p0, Lidf$2;->a:I

    iget v2, p0, Lidf$2;->b:I

    iget-object v3, p0, Lidf$2;->c:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual {v0, v1, v2, v3}, Lida;->a(IILcom/alibaba/wukong/im/Follow$FollowStatus;)Ljava/util/List;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Lidf$2;->d:Lcom/alibaba/wukong/Callback;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 109
    return-void

    .line 1113
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
