.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b()V
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
    .line 1153
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1156
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v2

    invoke-virtual {v2}, Lgsd;->b()Ljava/util/List;

    move-result-object v1

    .line 1160
    .local v1, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string/jumbo v2, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1161
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1164
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->m(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/tp/TPCameraInstance;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1166
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Lgrv$f;->icon_flash_on:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0

    .line 1168
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$8;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->n(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Lgrv$f;->icon_flash_off:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method
