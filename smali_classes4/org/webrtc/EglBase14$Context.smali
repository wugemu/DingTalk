.class public Lorg/webrtc/EglBase14$Context;
.super Lorg/webrtc/EglBase$Context;
.source "EglBase14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/EglBase14;
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
    .line 55
    invoke-direct {p0}, Lorg/webrtc/EglBase$Context;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/webrtc/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/EglBase14$Context;)Landroid/opengl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglBase14$Context;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/webrtc/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    return-object v0
.end method
