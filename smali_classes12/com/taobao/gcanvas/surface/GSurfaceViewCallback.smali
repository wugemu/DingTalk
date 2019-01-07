.class public Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;
.super Ljava/lang/Object;
.source "GSurfaceViewCallback.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/Surface;

.field private d:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lcom/taobao/gcanvas/GCanvasJNI;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native onRenderExit(Ljava/lang/String;)V
.end method

.method private native onSurfaceChanged(Ljava/lang/String;Landroid/view/Surface;IIILjava/lang/String;)V
.end method

.method private native onSurfaceCreated(Ljava/lang/String;Landroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyed(Ljava/lang/String;Landroid/view/Surface;)V
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "on surfaceTexture Available."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->d:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->c:Landroid/view/Surface;

    .line 78
    iput-object p1, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->d:Landroid/graphics/SurfaceTexture;

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->c:Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->b:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->onSurfaceChanged(Ljava/lang/String;Landroid/view/Surface;IIILjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->sendEvent(Ljava/lang/String;)Z

    .line 91
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 106
    const-string/jumbo v0, "on surfaceTexture destroyed."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->d:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->c:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v0, "on surfaceTexture changed."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->c:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->c:Landroid/view/Surface;

    .line 98
    iput-object p1, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->d:Landroid/graphics/SurfaceTexture;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->c:Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->b:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/taobao/gcanvas/surface/GSurfaceViewCallback;->onSurfaceChanged(Ljava/lang/String;Landroid/view/Surface;IIILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 127
    return-void
.end method
