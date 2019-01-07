.class final Lgst$9$1;
.super Lgrw$a;
.source "DidoFaceRemoteRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgst$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgst$9;


# direct methods
.method constructor <init>(Lgst$9;)V
    .locals 0
    .param p1, "this$0"    # Lgst$9;

    .prologue
    .line 408
    iput-object p1, p0, Lgst$9$1;->a:Lgst$9;

    invoke-direct {p0}, Lgrw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "imagePath":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imagePath":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 415
    .restart local v0    # "imagePath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lgst$9$1;->a:Lgst$9;

    iget-object v1, v1, Lgst$9;->a:Landroid/os/Handler;

    iget-object v2, p0, Lgst$9$1;->a:Lgst$9;

    iget-object v2, v2, Lgst$9;->b:Lcma;

    invoke-static {v1, v2, v0}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 425
    iget-object v0, p0, Lgst$9$1;->a:Lgst$9;

    iget-object v0, v0, Lgst$9;->a:Landroid/os/Handler;

    iget-object v1, p0, Lgst$9$1;->a:Lgst$9;

    iget-object v1, v1, Lgst$9;->b:Lcma;

    .line 1039
    invoke-static {v0, v1, p1, p2}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method
