.class Lcom/taobao/taolive/CameraPreview$PreviewView;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/CameraPreview;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/CameraPreview;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    .line 66
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private adapterScreen(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v3, 0x3fe38e39

    .line 122
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v1}, Lcom/taobao/taolive/CameraPreview;->access$400(Lcom/taobao/taolive/CameraPreview;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v1}, Lcom/taobao/taolive/CameraPreview;->access$500(Lcom/taobao/taolive/CameraPreview;)I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 132
    if-le p2, p1, :cond_4

    .line 133
    int-to-float v1, p1

    mul-float/2addr v1, v3

    int-to-float v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 134
    int-to-float v1, p2

    div-float/2addr v1, v3

    float-to-int p1, v1

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/taolive/CameraPreview$PreviewView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 149
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p2, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 152
    :cond_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    invoke-virtual {p0, v0}, Lcom/taobao/taolive/CameraPreview$PreviewView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 136
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    int-to-float v1, p1

    mul-float/2addr v1, v3

    float-to-int p2, v1

    goto :goto_1

    .line 139
    :cond_4
    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 140
    int-to-float v1, p2

    mul-float/2addr v1, v3

    float-to-int p1, v1

    goto :goto_1

    .line 142
    :cond_5
    int-to-float v1, p1

    div-float/2addr v1, v3

    float-to-int p2, v1

    goto :goto_1
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v0}, Lcom/taobao/taolive/CameraPreview;->access$000(Lcom/taobao/taolive/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    const-class v1, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v0}, Lcom/taobao/taolive/CameraPreview;->access$100(Lcom/taobao/taolive/CameraPreview;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/taolive/CameraPreview;->access$102(Lcom/taobao/taolive/CameraPreview;Landroid/view/Surface;)Landroid/view/Surface;

    .line 80
    :cond_1
    const-string/jumbo v0, "CameraPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "local camera view changed, holder:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview;->Start()I

    .line 84
    invoke-direct {p0, p3, p4}, Lcom/taobao/taolive/CameraPreview$PreviewView;->adapterScreen(II)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v1}, Lcom/taobao/taolive/CameraPreview;->access$000(Lcom/taobao/taolive/CameraPreview;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v1, "CameraPreview"

    const-string/jumbo v2, "local camera view surfaceCreated"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-class v2, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v1}, Lcom/taobao/taolive/CameraPreview;->access$200(Lcom/taobao/taolive/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v1}, Lcom/taobao/taolive/CameraPreview;->open_camera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v1}, Lcom/taobao/taolive/CameraPreview;->access$200(Lcom/taobao/taolive/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v1}, Lcom/taobao/taolive/CameraPreview;->access$200(Lcom/taobao/taolive/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v3}, Lcom/taobao/taolive/CameraPreview;->access$300(Lcom/taobao/taolive/CameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "exception":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "CameraPreview"

    const-string/jumbo v3, "IOException caused by setPreviewDisplay()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    invoke-static {v0}, Lcom/taobao/taolive/CameraPreview;->access$000(Lcom/taobao/taolive/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-class v1, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview$PreviewView;->this$0:Lcom/taobao/taolive/CameraPreview;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/taobao/taolive/CameraPreview;->access$102(Lcom/taobao/taolive/CameraPreview;Landroid/view/Surface;)Landroid/view/Surface;

    .line 116
    const-string/jumbo v0, "CameraPreview"

    const-string/jumbo v2, "local camera view destroyed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
