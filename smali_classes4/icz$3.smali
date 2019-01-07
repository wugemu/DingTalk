.class final Licz$3;
.super Liae;
.source "BlacklistServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Licz;->blacklist(IILcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Licz;


# direct methods
.method constructor <init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Licz;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 132
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;>;"
    iput-object p1, p0, Licz$3;->d:Licz;

    iput p5, p0, Licz$3;->a:I

    iput p6, p0, Licz$3;->b:I

    iput-object p7, p0, Licz$3;->c:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    .line 1135
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getBlacklistCache()Licu;

    move-result-object v0

    iget v1, p0, Licz$3;->a:I

    iget v2, p0, Licz$3;->b:I

    invoke-virtual {v0, v1, v2}, Licu;->a(II)Ljava/util/List;

    move-result-object v1

    .line 1136
    iget-object v2, p0, Licz$3;->c:Lcom/alibaba/wukong/Callback;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 132
    return-void

    .line 1136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
