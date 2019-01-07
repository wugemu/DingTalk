.class final Lbbo$67;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbfb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 4733
    iput-object p1, p0, Lbbo$67;->b:Lbbo;

    iput-object p2, p0, Lbbo$67;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4733
    check-cast p1, Lbfb;

    .line 5736
    if-nez p1, :cond_0

    .line 5737
    iget-object v0, p0, Lbbo$67;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const-string/jumbo v1, "[DingDataCenter] listDingSyncDataTooLong2 unreadCountObject is null. ack success."

    invoke-static {v0, v1}, Lbjf;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 5744
    :goto_0
    return-void

    .line 5741
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] listDingSyncDataTooLong2 onSuccess unreadCountObject="

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5742
    iget-object v0, p0, Lbbo$67;->b:Lbbo;

    new-array v1, v3, [Lbfb;

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6139
    invoke-virtual {v0, v1}, Lbbo;->c(Ljava/util/List;)Z

    move-result v0

    .line 5743
    if-eqz v0, :cond_1

    .line 5744
    iget-object v0, p0, Lbbo$67;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const-string/jumbo v1, "[DingDataCenter] save unreadCountObject success, ack success."

    invoke-static {v0, v1}, Lbjf;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    goto :goto_0

    .line 5746
    :cond_1
    iget-object v0, p0, Lbbo$67;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const-string/jumbo v1, "[DingDataCenter] save unreadCountObject failed, ack failed."

    invoke-static {v0, v1}, Lbjf;->b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 4757
    iget-object v0, p0, Lbbo$67;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingDataCenter] listDingSyncDataTooLong2 code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbjf;->b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 4758
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4753
    return-void
.end method
