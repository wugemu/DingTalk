.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;
.super Lgrw$a;
.source "FaceRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Ljava/lang/String;Lcma;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;ZLcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->a:Z

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->b:Lcma;

    invoke-direct {p0}, Lgrw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    .locals 7
    .param p1, "data"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    const-string/jumbo v3, "FaceRecord"

    const-string/jumbo v4, "FaceRecord"

    const-string/jumbo v5, "[FaceRecord] upload image success"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;

    if-eqz v3, :cond_2

    .line 367
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;

    .line 368
    .local v0, "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    new-instance v2, Lifx;

    invoke-direct {v2}, Lifx;-><init>()V

    .line 370
    .local v2, "uploadResponse":Lifx;
    iget-object v3, v0, Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;->authMediaId:Ljava/lang/String;

    .line 1038
    iput-object v3, v2, Lifx;->b:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    if-eqz v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->a:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "face_box_record_time_track_face_base_uploaded"

    :goto_0
    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b(Ljava/lang/String;)V

    .line 380
    .end local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    :cond_0
    :goto_1
    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$1;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$1;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;Lifx;)V

    .line 387
    .local v1, "resultRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v5, Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-interface {v3, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v4, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void

    .line 373
    .end local v1    # "resultRunnable":Ljava/lang/Runnable;
    .restart local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    :cond_1
    const-string/jumbo v4, "face_box_record_time_track_face_magic_uploaded"

    goto :goto_0

    .line 377
    .end local v0    # "ipcResult":Lcom/alibaba/dingtalk/facebox/model/IpcUploadResponse;
    .end local v2    # "uploadResponse":Lifx;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "uploadResponse":Lifx;
    goto :goto_1
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
    .line 392
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 396
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "FaceRecord"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "[FaceRecord] upload image error, code="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "; msg="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3$2;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .local v0, "resultRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method
