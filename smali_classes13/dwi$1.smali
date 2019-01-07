.class final Ldwi$1;
.super Ljava/lang/Object;
.source "TaskListSyncHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldwi;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldwi;


# direct methods
.method constructor <init>(Ldwi;)V
    .locals 0
    .param p1, "this$0"    # Ldwi;

    .prologue
    .line 43
    iput-object p1, p0, Ldwi$1;->a:Ldwi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 4
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 49
    :cond_0
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "TaskListSyncHandler"

    const-string/jumbo v3, "TaskListSyncHandler, guide_TaskCenter_toolong2"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ldwi$1$1;

    invoke-direct {v0, p0}, Ldwi$1$1;-><init>(Ldwi$1;)V

    .line 66
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;>;"
    invoke-static {}, Ldyp;->a()Ldyo;

    move-result-object v1

    invoke-interface {v1, v0}, Ldyo;->b(Lcma;)V

    .line 67
    return-void
.end method
