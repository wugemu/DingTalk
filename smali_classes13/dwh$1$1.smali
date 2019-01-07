.class final Ldwh$1$1;
.super Ljava/lang/Object;
.source "TaskDispatchSyncHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldwh$1;->onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
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
        "Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldwh$1;


# direct methods
.method constructor <init>(Ldwh$1;)V
    .locals 0
    .param p1, "this$1"    # Ldwh$1;

    .prologue
    .line 54
    iput-object p1, p0, Ldwh$1$1;->a:Ldwh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    check-cast p1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 1057
    invoke-static {}, Leal;->a()Leal;

    move-result-object v0

    .line 1164
    invoke-static {}, Leal;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    if-eqz p1, :cond_0

    .line 1171
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PushTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onTaskDispatchArrived, item:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v0}, Leal;->d()V

    .line 1173
    invoke-virtual {v0, p1}, Leal;->a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    .line 54
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "im"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 63
    return-void
.end method
