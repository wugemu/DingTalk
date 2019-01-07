.class final Ldwh$1;
.super Ljava/lang/Object;
.source "TaskDispatchSyncHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldwh;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldwh;


# direct methods
.method constructor <init>(Ldwh;)V
    .locals 0
    .param p1, "this$0"    # Ldwh;

    .prologue
    .line 44
    iput-object p1, p0, Ldwh$1;->a:Ldwh;

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
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 51
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "TaskDispatchSyncHandler"

    const-string/jumbo v3, "guide_TaskCenter_toolong2"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 52
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "TaskDispatchSyncHandler"

    const-string/jumbo v3, "TaskDispatchSyncHandler, guide_TaskCenter_toolong2"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ldwh$1$1;

    invoke-direct {v0, p0}, Ldwh$1$1;-><init>(Ldwh$1;)V

    .line 70
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;>;"
    invoke-static {}, Ldyp;->a()Ldyo;

    move-result-object v1

    invoke-interface {v1, v0}, Ldyo;->a(Lcma;)V

    .line 71
    return-void
.end method
