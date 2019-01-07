.class public final Lfvt;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "UpstreamSMSHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lfqr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x13bb

    const-class v2, Lfqr;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 3
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfqr;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lfqr;>;"
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 33
    const-string/jumbo v1, "UpstreamSMSHandler has received data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_upstream_sms_arrive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method
