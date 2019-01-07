.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/hardware/Camera$Face;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;[Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->a:[Landroid/hardware/Camera$Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;->a:[Landroid/hardware/Camera$Face;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    goto :goto_0
.end method
