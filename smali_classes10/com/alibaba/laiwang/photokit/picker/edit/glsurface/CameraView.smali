.class public Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/hardware/Camera;

.field private e:Landroid/view/SurfaceHolder;

.field private f:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

.field private g:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0x280

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->a:I

    .line 21
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->b:I

    .line 24
    iput v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->c:I

    .line 25
    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    .line 29
    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->f:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    .line 30
    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->g:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    .line 36
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 38
    iput v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->c:I

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->e:Landroid/view/SurfaceHolder;

    .line 46
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->e:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->e:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 48
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->c:I

    goto :goto_0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 134
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 135
    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    .line 138
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "cameraIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 78
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 86
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "continuous-picture"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string/jumbo v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 94
    :cond_0
    const/16 v2, 0x11

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 95
    iget v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->a:I

    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 96
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 98
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 99
    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 100
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :goto_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 116
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 117
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->d:Landroid/hardware/Camera;

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 119
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_2
    return-void

    .line 110
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 82
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->f:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->f:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;->a([BI)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->g:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->g:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;->a([BI)V

    .line 149
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDarwYUVFrameCallback(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;)V
    .locals 0
    .param p1, "saveFrameCallback"    # Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->g:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    .line 163
    return-void
.end method

.method public setSaveFrameCallback(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;)V
    .locals 0
    .param p1, "saveFrameCallback"    # Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->f:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;

    .line 159
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 62
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->a()V

    .line 54
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->c:I

    .line 1124
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->a(I)V

    .line 55
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView;->a()V

    .line 68
    return-void
.end method
