.class final Lcom/alibaba/dingtalk/facebox/common/CameraGLView$1;
.super Ljava/lang/Object;
.source "CameraGLView.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$1;->a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$1;->a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)Lgsm$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$1;->a:Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)Lgsm$b;

    .line 148
    :cond_0
    return-void
.end method
