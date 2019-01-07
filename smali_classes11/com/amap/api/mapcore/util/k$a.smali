.class abstract Lcom/amap/api/mapcore/util/k$a;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/amap/api/mapcore/util/k;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/k;[I)V
    .locals 1

    .prologue
    .line 755
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k$a;->b:Lcom/amap/api/mapcore/util/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/k$a;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k$a;->a:[I

    .line 757
    return-void
.end method

.method private a([I)[I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 790
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$a;->b:Lcom/amap/api/mapcore/util/k;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->a(Lcom/amap/api/mapcore/util/k;)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k$a;->b:Lcom/amap/api/mapcore/util/k;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->a(Lcom/amap/api/mapcore/util/k;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 807
    :goto_0
    return-object p1

    .line 797
    :cond_0
    array-length v1, p1

    .line 798
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 799
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 801
    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$a;->b:Lcom/amap/api/mapcore/util/k;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/k;->a(Lcom/amap/api/mapcore/util/k;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 802
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 806
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 807
    goto :goto_0

    .line 804
    :cond_1
    const/16 v2, 0x40

    aput v2, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 760
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 761
    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$a;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_0
    aget v4, v5, v4

    .line 767
    if-gtz v4, :cond_1

    .line 768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 773
    iget-object v2, p0, Lcom/amap/api/mapcore/util/k$a;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/amap/api/mapcore/util/k$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 778
    if-nez v0, :cond_3

    .line 779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_3
    return-object v0
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
