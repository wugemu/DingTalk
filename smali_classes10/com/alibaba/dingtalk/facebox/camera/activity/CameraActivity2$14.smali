.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;
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
    .line 347
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

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
    .line 350
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    const-string/jumbo v1, "torch"

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    sget v2, Lgrv$f;->icon_flash_on:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 354
    sget v1, Lgrv$f;->dt_facebox_flashlight_on:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    const-string/jumbo v1, "off"

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$14;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    sget v2, Lgrv$f;->icon_flash_off:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 359
    sget v1, Lgrv$f;->dt_facebox_flashlight_off:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method
