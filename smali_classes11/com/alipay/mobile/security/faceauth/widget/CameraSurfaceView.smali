.class public Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/SurfaceHolder;

.field c:F

.field d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

.field private e:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->c:F

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1
    .param p1, "deviceSettings"    # [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/alipay/mobile/security/faceauth/util/DeviceSettingUtil;->getPropertyDeviceSetting([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->e:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 47
    return-void
.end method

.method public setSurfaceViewListener(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    .line 115
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    const-string/jumbo v0, "surfaceChanged..."

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->c:F

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->startPreview(Landroid/view/SurfaceHolder;F)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getPreviewWidght()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getPreviewHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;->surfaceChanged(DD)V

    .line 94
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    const-string/jumbo v0, "surfaceCreated..."

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$1;-><init>(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->setListener(Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->e:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->openCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$2;-><init>(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;->surfaceCreated()V

    .line 84
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 100
    const-string/jumbo v0, "surfaceDestroyed..."

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/camera/CameraMgr;->stopCamera()V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;->surfaceDestroyed()V

    .line 107
    :cond_0
    return-void
.end method
