.class final Lbjc;
.super Ljava/lang/Object;
.source "DingDataSyncListener.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# direct methods
.method constructor <init>()V
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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DingDataSyncListener onTooLong2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbp;->a(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 20
    return-void
.end method
