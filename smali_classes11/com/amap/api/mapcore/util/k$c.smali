.class Lcom/amap/api/mapcore/util/k$c;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/k$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/k;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/k;)V
    .locals 1

    .prologue
    .line 658
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k$c;->a:Lcom/amap/api/mapcore/util/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/16 v0, 0x3098

    iput v0, p0, Lcom/amap/api/mapcore/util/k$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/k;Lcom/amap/api/mapcore/util/k$1;)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/k$c;-><init>(Lcom/amap/api/mapcore/util/k;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/k$c;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$c;->a:Lcom/amap/api/mapcore/util/k;

    .line 664
    invoke-static {v2}, Lcom/amap/api/mapcore/util/k;->a(Lcom/amap/api/mapcore/util/k;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 666
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$c;->a:Lcom/amap/api/mapcore/util/k;

    .line 667
    invoke-static {v2}, Lcom/amap/api/mapcore/util/k;->a(Lcom/amap/api/mapcore/util/k;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 672
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    const-string/jumbo v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string/jumbo v0, "eglDestroyContex"

    .line 680
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 679
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/k$h;->a(Ljava/lang/String;I)V

    .line 682
    :cond_0
    return-void
.end method
