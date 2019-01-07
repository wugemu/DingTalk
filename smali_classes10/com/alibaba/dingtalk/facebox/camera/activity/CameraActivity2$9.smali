.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


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
    .line 1176
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1180
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$9;[Landroid/hardware/Camera$Face;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method
