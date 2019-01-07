.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 366
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 369
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .line 370
    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    sget v0, Lgrv$f;->dt_camera_open_confirm:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 388
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->o(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 375
    sget v0, Lgrv$f;->dt_camera_configuration_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 380
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->j(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$15;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    goto :goto_0
.end method
