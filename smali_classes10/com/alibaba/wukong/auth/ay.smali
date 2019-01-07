.class public Lcom/alibaba/wukong/auth/ay;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "SyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/auth/af;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "sync"

    const-class v1, Lcom/alibaba/wukong/auth/af;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 2
    .param p1, "t"    # Lcom/alibaba/wukong/auth/af;
    .param p2, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Receive SyncPushModel type="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alibaba/wukong/auth/af;->aw:Lcom/alibaba/wukong/auth/ad;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/auth/af;->aw:Lcom/alibaba/wukong/auth/ad;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/ad;->ad:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wukong/sync/SyncService;->startDownSync(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 42
    return-void

    .line 40
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/wukong/auth/af;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/ay;->a(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    return-void
.end method
