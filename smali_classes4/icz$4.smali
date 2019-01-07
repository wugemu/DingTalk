.class final Licz$4;
.super Liae;
.source "BlacklistServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Licz;->getBlacklistStatus(JLcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Licz;


# direct methods
.method constructor <init>(Licz;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Licz;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 157
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    iput-object p1, p0, Licz$4;->c:Licz;

    iput-wide p5, p0, Licz$4;->a:J

    iput-object p7, p0, Licz$4;->b:Lcom/alibaba/wukong/Callback;

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
    .line 157
    .line 1161
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getBlacklistCache()Licu;

    move-result-object v0

    iget-wide v2, p0, Licz$4;->a:J

    invoke-virtual {v0, v2, v3}, Licu;->a(J)Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    move-result-object v0

    .line 1162
    iget-object v1, p0, Licz$4;->b:Lcom/alibaba/wukong/Callback;

    if-nez v0, :cond_0

    iget-object v0, p0, Licz$4;->c:Licz;

    iget-wide v2, p0, Licz$4;->a:J

    invoke-static {v0, v2, v3}, Licz;->a(Licz;J)Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 157
    return-void
.end method
