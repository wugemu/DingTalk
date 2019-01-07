.class public Lcom/alibaba/wukong/auth/at;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "SyncDeviceHandler.java"


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
    .line 22
    const-string/jumbo v0, "syncDev"

    const-class v1, Lcom/alibaba/wukong/auth/af;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
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
    .line 27
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/wukong/sync/SyncService;->startDownSync(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 29
    return-void
.end method

.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/alibaba/wukong/auth/af;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/at;->a(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    return-void
.end method
