.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

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
    .line 640
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->w(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->e(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$4;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;I)V

    .line 643
    :cond_0
    return-void
.end method
