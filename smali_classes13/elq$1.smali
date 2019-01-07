.class final Lelq$1;
.super Ljava/lang/Object;
.source "OAUndoSyncaHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelq;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelq;


# direct methods
.method constructor <init>(Lelq;)V
    .locals 0
    .param p1, "this$0"    # Lelq;

    .prologue
    .line 37
    iput-object p1, p0, Lelq$1;->a:Lelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 6
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 44
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "oa"

    const-string/jumbo v2, "oa_undo_model_toolong2"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 45
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v0

    invoke-virtual {v0}, Lelp;->d()V

    .line 46
    return-void
.end method
