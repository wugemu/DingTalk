.class final Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$2;
.super Ljava/lang/Object;
.source "CameraTextureView.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$2;->a:Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$2;->a:Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;)Lgsm$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$2;->a:Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;)Lgsm$b;

    .line 242
    :cond_0
    return-void
.end method
