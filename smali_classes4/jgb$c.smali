.class public final Ljgb$c;
.super Ljava/lang/Object;
.source "EGLBase14.java"

# interfaces
.implements Ljfz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljgb;

.field private b:Landroid/opengl/EGLSurface;


# direct methods
.method private constructor <init>(Ljgb;II)V
    .locals 2
    .param p1, "eglBase"    # Ljgb;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    .line 104
    iput-object p1, p0, Ljgb$c;->a:Ljgb;

    .line 105
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 106
    :cond_0
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    invoke-static {v0, v1, v1}, Ljgb;->a(Ljgb;II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    invoke-static {v0, p2, p3}, Ljgb;->a(Ljgb;II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljgb;IIB)V
    .locals 0
    .param p1, "x0"    # Ljgb;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Ljgb$c;-><init>(Ljgb;II)V

    return-void
.end method

.method private constructor <init>(Ljgb;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eglBase"    # Ljgb;
    .param p2, "surface"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    .line 85
    iput-object p1, p0, Ljgb$c;->a:Ljgb;

    .line 86
    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    invoke-static {v0, p2}, Ljgb;->a(Ljgb;Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    return-void

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljgb;Ljava/lang/Object;B)V
    .locals 0
    .param p1, "x0"    # Ljgb;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljgb$c;-><init>(Ljgb;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    iget-object v1, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Ljgb;->a(Ljgb;Landroid/opengl/EGLSurface;)Z

    .line 115
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    .line 1227
    iget v0, v0, Ljgb;->b:I

    .line 115
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    iget-object v1, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Ljgb;->b(Ljgb;Landroid/opengl/EGLSurface;)I

    move-result v0

    iget-object v1, p0, Ljgb$c;->a:Ljgb;

    iget-object v2, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Ljgb;->c(Ljgb;Landroid/opengl/EGLSurface;)I

    move-result v1

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    iget-object v1, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Ljgb;->b(Ljgb;Landroid/opengl/EGLSurface;)I

    move-result v0

    iget-object v1, p0, Ljgb$c;->a:Ljgb;

    iget-object v2, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Ljgb;->c(Ljgb;Landroid/opengl/EGLSurface;)I

    move-result v1

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES10;->glViewport(IIII)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    iget-object v1, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Ljgb;->d(Ljgb;Landroid/opengl/EGLSurface;)I

    .line 125
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    invoke-virtual {v0}, Ljgb;->e()V

    .line 151
    iget-object v0, p0, Ljgb$c;->a:Ljgb;

    iget-object v1, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Ljgb;->e(Ljgb;Landroid/opengl/EGLSurface;)V

    .line 152
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Ljgb$c;->b:Landroid/opengl/EGLSurface;

    .line 153
    return-void
.end method
