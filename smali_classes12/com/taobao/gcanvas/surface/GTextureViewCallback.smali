.class public Lcom/taobao/gcanvas/surface/GTextureViewCallback;
.super Ljava/lang/Object;
.source "GTextureViewCallback.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static f:Z


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/view/Surface;

.field public d:Landroid/graphics/SurfaceTexture;

.field private e:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 31
    sput-boolean v1, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->f:Z

    .line 33
    :try_start_0
    const-string/jumbo v1, "gcanvas"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    const-string/jumbo v1, "freetype"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/taobao/gcanvas/GCanvasJNI;->a()V

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 37
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "GTextureViewCallback"

    const-string/jumbo v2, "error when load library"

    invoke-static {v1, v2, v0}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/TextureView;Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/view/TextureView;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "#ffffff"

    iput-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->b:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->a:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->e:Landroid/view/TextureView;

    .line 46
    return-void
.end method

.method private native onSurfaceChanged(Ljava/lang/String;Landroid/view/Surface;IIILjava/lang/String;)V
.end method

.method private native onSurfaceCreated(Ljava/lang/String;Landroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyed(Ljava/lang/String;Landroid/view/Surface;)V
.end method


# virtual methods
.method public native onRenderExit(Ljava/lang/String;)V
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const-string/jumbo v0, "on surfaceTexture Available."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    .line 71
    iput-object p1, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->b:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->onSurfaceChanged(Ljava/lang/String;Landroid/view/Surface;IIILjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasJNI;->sendEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->e:Landroid/view/TextureView;

    instance-of v0, v0, Ljmi;

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "start to send event in GSurfaceCallback."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->e:Landroid/view/TextureView;

    check-cast v0, Ljmi;

    invoke-virtual {v0}, Ljmi;->a()V

    .line 89
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->e:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 109
    const-string/jumbo v0, "on surfaceTexture destroyed."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 121
    :cond_0
    return v1
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
    .line 92
    const-string/jumbo v0, "on surfaceTexture changed."

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    .line 96
    iput-object p1, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->b:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->onSurfaceChanged(Ljava/lang/String;Landroid/view/Surface;IIILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 126
    return-void
.end method
