.class public abstract Lorg/webrtc/ali/EglBase;
.super Ljava/lang/Object;
.source "EglBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/EglBase$Context;
    }
.end annotation


# static fields
.field public static final CONFIG_PIXEL_BUFFER:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER:[I

.field public static final CONFIG_PLAIN:[I

.field public static final CONFIG_RECORDABLE:[I

.field public static final CONFIG_RGBA:[I

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/webrtc/ali/EglBase;->lock:Ljava/lang/Object;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_PLAIN:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_RGBA:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 64
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_RECORDABLE:[I

    return-void

    .line 41
    .line 48
    .line 56
    .line 64
    .line 73
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_4
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/webrtc/ali/EglBase;
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    sget-object v1, Lorg/webrtc/ali/EglBase;->CONFIG_PLAIN:[I

    invoke-static {v0, v1}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;[I)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/webrtc/ali/EglBase$Context;)Lorg/webrtc/ali/EglBase;
    .locals 1
    .param p0, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;

    .prologue
    .line 108
    sget-object v0, Lorg/webrtc/ali/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p0, v0}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;[I)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/webrtc/ali/EglBase$Context;[I)Lorg/webrtc/ali/EglBase;
    .locals 1
    .param p0, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;
    .param p1, "configAttributes"    # [I

    .prologue
    .line 89
    invoke-static {}, Lorg/webrtc/ali/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/webrtc/ali/EglBase14$Context;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/webrtc/ali/EglBase14;

    check-cast p0, Lorg/webrtc/ali/EglBase14$Context;

    .end local p0    # "sharedContext":Lorg/webrtc/ali/EglBase$Context;
    invoke-direct {v0, p0, p1}, Lorg/webrtc/ali/EglBase14;-><init>(Lorg/webrtc/ali/EglBase14$Context;[I)V

    :goto_0
    return-object v0

    .restart local p0    # "sharedContext":Lorg/webrtc/ali/EglBase$Context;
    :cond_1
    new-instance v0, Lorg/webrtc/ali/EglBase10;

    check-cast p0, Lorg/webrtc/ali/EglBase10$Context;

    .end local p0    # "sharedContext":Lorg/webrtc/ali/EglBase$Context;
    invoke-direct {v0, p0, p1}, Lorg/webrtc/ali/EglBase10;-><init>(Lorg/webrtc/ali/EglBase10$Context;[I)V

    goto :goto_0
.end method

.method public static createEgl10(Ljavax/microedition/khronos/egl/EGLContext;[I)Lorg/webrtc/ali/EglBase;
    .locals 2
    .param p0, "sharedContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p1, "configAttributes"    # [I

    .prologue
    .line 124
    new-instance v0, Lorg/webrtc/ali/EglBase10;

    new-instance v1, Lorg/webrtc/ali/EglBase10$Context;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-direct {v0, v1, p1}, Lorg/webrtc/ali/EglBase10;-><init>(Lorg/webrtc/ali/EglBase10$Context;[I)V

    return-object v0
.end method

.method public static createEgl10([I)Lorg/webrtc/ali/EglBase;
    .locals 2
    .param p0, "configAttributes"    # [I

    .prologue
    .line 115
    new-instance v0, Lorg/webrtc/ali/EglBase10;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/webrtc/ali/EglBase10;-><init>(Lorg/webrtc/ali/EglBase10$Context;[I)V

    return-object v0
.end method

.method public static createEgl14(Landroid/opengl/EGLContext;[I)Lorg/webrtc/ali/EglBase;
    .locals 2
    .param p0, "sharedContext"    # Landroid/opengl/EGLContext;
    .param p1, "configAttributes"    # [I

    .prologue
    .line 140
    new-instance v0, Lorg/webrtc/ali/EglBase14;

    new-instance v1, Lorg/webrtc/ali/EglBase14$Context;

    invoke-direct {v1, p0}, Lorg/webrtc/ali/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    invoke-direct {v0, v1, p1}, Lorg/webrtc/ali/EglBase14;-><init>(Lorg/webrtc/ali/EglBase14$Context;[I)V

    return-object v0
.end method

.method public static createEgl14([I)Lorg/webrtc/ali/EglBase;
    .locals 2
    .param p0, "configAttributes"    # [I

    .prologue
    .line 131
    new-instance v0, Lorg/webrtc/ali/EglBase14;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/webrtc/ali/EglBase14;-><init>(Lorg/webrtc/ali/EglBase14$Context;[I)V

    return-object v0
.end method


# virtual methods
.method public abstract createDummyPbufferSurface()V
.end method

.method public abstract createPbufferSurface(II)V
.end method

.method public abstract createSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract createSurface(Landroid/view/Surface;)V
.end method

.method public abstract detachCurrent()V
.end method

.method public abstract getEglBaseContext()Lorg/webrtc/ali/EglBase$Context;
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public abstract swapBuffers()V
.end method
