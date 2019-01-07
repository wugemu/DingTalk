.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->onCreate(Landroid/os/Bundle;)V
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
    .line 218
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 223
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .line 2044
    iget-object v1, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a(II)V

    .line 2045
    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a(II)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setOrientation$2563266(I)V

    .line 229
    :cond_0
    return-void
.end method
