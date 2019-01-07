.class public final Lgst$4;
.super Lgrw$a;
.source "DidoFaceRemoteRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcma;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcma;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lgst$4;->a:Landroid/os/Handler;

    iput-object p2, p0, Lgst$4;->b:Lcma;

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
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "ipcResult":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;
    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;

    .line 152
    .restart local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;
    :cond_0
    iget-object v1, p0, Lgst$4;->a:Landroid/os/Handler;

    iget-object v2, p0, Lgst$4;->b:Lcma;

    invoke-static {v1, v2, v0}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/Object;)V

    .line 153
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
    .line 156
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lgst$4;->a:Landroid/os/Handler;

    iget-object v1, p0, Lgst$4;->b:Lcma;

    .line 1039
    invoke-static {v0, v1, p1, p2}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
