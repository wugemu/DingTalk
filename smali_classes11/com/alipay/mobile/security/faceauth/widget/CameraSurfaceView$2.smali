.class final Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;
.super Ljava/lang/Object;
.source "CameraSurfaceView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "yuv"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getCameraViewRotation()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iget-object v2, v2, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getCameraNumber()I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;->onPreviewFrame([BLandroid/hardware/Camera;II)V

    .line 77
    :cond_0
    return-void
.end method
