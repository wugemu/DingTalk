.class public final Ljga$c;
.super Ljava/lang/Object;
.source "EGLBase10.java"

# interfaces
.implements Ljfz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljga;

.field private b:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method private constructor <init>(Ljga;II)V
    .locals 2
    .param p1, "eglBase"    # Ljga;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 170
    iput-object p1, p0, Ljga$c;->a:Ljga;

    .line 171
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Ljga$c;->a:Ljga;

    invoke-static {v0, v1, v1}, Ljga;->a(Ljga;II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Ljga$c;->a:Ljga;

    invoke-static {v0, p2, p3}, Ljga;->a(Ljga;II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljga;IIB)V
    .locals 0
    .param p1, "x0"    # Ljga;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Ljga$c;-><init>(Ljga;II)V

    return-void
.end method

.method private constructor <init>(Ljga;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eglBase"    # Ljga;
    .param p2, "surface"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 147
    iput-object p1, p0, Ljga$c;->a:Ljga;

    .line 148
    instance-of v0, p2, Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1275
    const/16 v0, 0x11

    invoke-static {v0}, Ljgf;->a(I)Z

    move-result v0

    .line 148
    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Ljga$c;->a:Ljga;

    new-instance v1, Ljga$d;

    check-cast p2, Landroid/view/Surface;

    .end local p2    # "surface":Ljava/lang/Object;
    invoke-direct {v1, p2}, Ljga$d;-><init>(Landroid/view/Surface;)V

    invoke-static {v0, v1}, Ljga;->a(Ljga;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 156
    :goto_0
    return-void

    .line 152
    .restart local p2    # "surface":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 156
    :cond_1
    iget-object v0, p0, Ljga$c;->a:Ljga;

    invoke-static {v0, p2}, Ljga;->a(Ljga;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljga;Ljava/lang/Object;B)V
    .locals 0
    .param p1, "x0"    # Ljga;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljga$c;-><init>(Ljga;Ljava/lang/Object;)V

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

    .line 184
    iget-object v0, p0, Ljga$c;->a:Ljga;

    iget-object v1, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Ljga;->a(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 185
    iget-object v0, p0, Ljga$c;->a:Ljga;

    .line 1353
    iget v0, v0, Ljga;->b:I

    .line 185
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Ljga$c;->a:Ljga;

    iget-object v1, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Ljga;->b(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v0

    iget-object v1, p0, Ljga$c;->a:Ljga;

    iget-object v2, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v1, v2}, Ljga;->c(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v1

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Ljga$c;->a:Ljga;

    iget-object v1, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Ljga;->b(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I

    move-result v0

    iget-object v1, p0, Ljga$c;->a:Ljga;

    iget-object v2, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v1, v2}, Ljga;->c(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I

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
    .line 197
    iget-object v0, p0, Ljga$c;->a:Ljga;

    iget-object v1, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Ljga;->d(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)I

    .line 198
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 230
    iget-object v0, p0, Ljga$c;->a:Ljga;

    invoke-virtual {v0}, Ljga;->e()V

    .line 231
    iget-object v0, p0, Ljga$c;->a:Ljga;

    iget-object v1, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1}, Ljga;->e(Ljga;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 232
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Ljga$c;->b:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 233
    return-void
.end method
