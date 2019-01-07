.class public Lorg/webrtc/ali/EglBase14$Context;
.super Lorg/webrtc/ali/EglBase$Context;
.source "EglBase14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/EglBase14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final egl14Context:Landroid/opengl/EGLContext;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "eglContext"    # Landroid/opengl/EGLContext;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/webrtc/ali/EglBase$Context;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/webrtc/ali/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/EglBase14$Context;)Landroid/opengl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/EglBase14$Context;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/webrtc/ali/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    return-object v0
.end method
