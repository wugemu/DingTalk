.class final Lidf$5;
.super Liae;
.source "FollowServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidf;->getStatus(JJLcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/relation/FollowImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lidf;


# direct methods
.method constructor <init>(Lidf;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lidf;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 217
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    iput-object p1, p0, Lidf$5;->c:Lidf;

    iput-wide p5, p0, Lidf$5;->a:J

    iput-object p7, p0, Lidf$5;->b:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x1

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
    .line 217
    .line 1220
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getFollowCache()Lida;

    move-result-object v0

    iget-wide v2, p0, Lidf$5;->a:J

    invoke-virtual {v0, v2, v3}, Lida;->a(J)Lcom/alibaba/wukong/im/relation/FollowImpl;

    move-result-object v0

    .line 1221
    iget-object v1, p0, Lidf$5;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 1222
    iget-object v1, p0, Lidf$5;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 217
    :cond_0
    return-void
.end method
