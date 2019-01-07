.class public Lcom/alibaba/wukong/auth/bc;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "SyncParaHandler.java"


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
    .line 18
    const-string/jumbo v0, "para"

    const-class v1, Lcom/alibaba/wukong/auth/af;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 1
    .param p1, "t"    # Lcom/alibaba/wukong/auth/af;
    .param p2, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .prologue
    .line 24
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncParaService;->getInstance()Lcom/alibaba/wukong/sync/SyncParaService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wukong/sync/SyncParaService;->startTask(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    .line 25
    return-void
.end method

.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/wukong/auth/af;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/bc;->a(Lcom/alibaba/wukong/auth/af;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    return-void
.end method
