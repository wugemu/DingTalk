.class public final Lesk;
.super Ljava/lang/Object;
.source "RecommendSyncListener.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 3
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 20
    const-string/jumbo v0, "onTooLong2"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lesd;->a()Lesd;

    move-result-object v0

    invoke-virtual {v0}, Lesd;->c()V

    .line 22
    return-void
.end method
