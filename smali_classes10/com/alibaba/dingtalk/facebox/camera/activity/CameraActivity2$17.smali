.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 421
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->q(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 422
    if-eqz p2, :cond_3

    .line 423
    const-string/jumbo v0, "CameraController.TYPE_OPEN_CAMERA_ERROR_TYPE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 424
    .local v6, "errorType":I
    if-ne v6, v3, :cond_1

    .line 425
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[Camera] receiver open camera error by no permission"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->l(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 456
    .end local v6    # "errorType":I
    :goto_0
    return-void

    .line 430
    .restart local v6    # "errorType":I
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 431
    sget v0, Lgrv$f;->dt_camera_open_confirm:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 432
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "CAMERA"

    const-string/jumbo v4, "21"

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_1
    if-ne v6, v2, :cond_2

    .line 436
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 437
    sget v0, Lgrv$f;->dt_camera_configuration_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 438
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "CAMERA"

    const-string/jumbo v4, "22"

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[Camera] receiver camera configure error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 443
    sget v0, Lgrv$f;->dt_camera_open_confirm:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 444
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "CAMERA"

    const-string/jumbo v4, "23"

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[Camera] receiver camera unknown error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    .end local v6    # "errorType":I
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$17;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 450
    sget v0, Lgrv$f;->dt_camera_open_confirm:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 451
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "CAMERA"

    const-string/jumbo v4, "23"

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[Camera] receiver camera error, intent is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
