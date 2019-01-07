.class Lcom/amap/api/mapcore/util/k$h;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k$h;->f:Ljava/lang/ref/WeakReference;

    .line 894
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/k$h;->a(Ljava/lang/String;I)V

    .line 1104
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1107
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/k$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1117
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/k$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return-void
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1074
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/k;

    .line 1075
    if-eqz v0, :cond_0

    .line 1076
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->d(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$g;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1079
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1081
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 908
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 913
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 915
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 916
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 923
    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/k;

    .line 927
    if-nez v0, :cond_4

    .line 928
    iput-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 929
    iput-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 941
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 942
    :cond_2
    iput-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 943
    const-string/jumbo v0, "createContext"

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/k$h;->a(Ljava/lang/String;)V

    .line 950
    :cond_3
    iput-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 951
    return-void

    .line 931
    :cond_4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->b(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$e;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore/util/k$e;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 938
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->c(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 967
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 971
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 974
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$h;->g()V

    .line 985
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/k;

    .line 986
    if-eqz v0, :cond_5

    .line 987
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->d(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$g;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/k$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 989
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 988
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/amap/api/mapcore/util/k$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 994
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_6

    .line 995
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 996
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 997
    const-string/jumbo v0, "EglHelper"

    const-string/jumbo v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 1018
    :goto_1
    return v0

    .line 991
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 1007
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1013
    const-string/jumbo v0, "EGLHelper"

    const-string/jumbo v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 1014
    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    .line 1013
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/k$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    .line 1015
    goto :goto_1

    .line 1018
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method c()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1029
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/k;

    .line 1030
    if-eqz v0, :cond_2

    .line 1031
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->e(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$k;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1032
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->e(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$k;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amap/api/mapcore/util/k$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1035
    :cond_0
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->f(Lcom/amap/api/mapcore/util/k;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    .line 1036
    const/4 v2, 0x0

    .line 1037
    const/4 v3, 0x0

    .line 1038
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->f(Lcom/amap/api/mapcore/util/k;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1039
    const/4 v2, 0x1

    .line 1041
    :cond_1
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->f(Lcom/amap/api/mapcore/util/k;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1042
    new-instance v0, Lcom/amap/api/mapcore/util/k$l;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/k$l;-><init>()V

    .line 1044
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1047
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public d()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1059
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k$h;->g()V

    .line 1068
    return-void
.end method

.method public f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1088
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/k;

    .line 1090
    if-eqz v0, :cond_0

    .line 1091
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->c(Lcom/amap/api/mapcore/util/k;)Lcom/amap/api/mapcore/util/k$f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/k$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1094
    :cond_0
    iput-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1098
    iput-object v4, p0, Lcom/amap/api/mapcore/util/k$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1100
    :cond_2
    return-void
.end method
