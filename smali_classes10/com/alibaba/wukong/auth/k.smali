.class public Lcom/alibaba/wukong/auth/k;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "ResetDidHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lcom/alibaba/wukong/auth/q;",
        ">;"
    }
.end annotation


# instance fields
.field private R:Lcom/alibaba/wukong/auth/g;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/auth/g;)V
    .locals 2
    .param p1, "provider"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 26
    const/16 v0, 0x2f44

    const-class v1, Lcom/alibaba/wukong/auth/q;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 27
    iput-object p1, p0, Lcom/alibaba/wukong/auth/k;->R:Lcom/alibaba/wukong/auth/g;

    .line 28
    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 6
    .param p2, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/auth/q;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/auth/q;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 33
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/auth/q;

    .line 37
    .local v2, "model":Lcom/alibaba/wukong/auth/q;
    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "curDid":Ljava/lang/String;
    const-string/jumbo v3, "ResetDidHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SYNC] did reset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/wukong/auth/q;->Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v3, v2, Lcom/alibaba/wukong/auth/q;->Z:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alibaba/wukong/auth/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/alibaba/wukong/auth/k;->R:Lcom/alibaba/wukong/auth/g;

    if-eqz v3, :cond_2

    .line 45
    iget-object v3, p0, Lcom/alibaba/wukong/auth/k;->R:Lcom/alibaba/wukong/auth/g;

    iget-object v4, v2, Lcom/alibaba/wukong/auth/q;->aa:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/wukong/auth/g;->a(Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->logout()V

    goto :goto_0
.end method
