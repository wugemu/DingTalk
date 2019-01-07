.class public Lorg/webrtc/EglBase10$Context;
.super Lorg/webrtc/EglBase$Context;
.source "EglBase10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/EglBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "eglContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/webrtc/EglBase$Context;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/webrtc/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglBase10$Context;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/webrtc/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method
