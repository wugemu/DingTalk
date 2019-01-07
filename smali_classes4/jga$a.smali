.class public final Ljga$a;
.super Ljfz$a;
.source "EGLBase10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 70
    invoke-direct {p0}, Ljfz$a;-><init>()V

    .line 71
    iput-object p1, p0, Ljga$a;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Ljavax/microedition/khronos/egl/EGLConfig;B)V
    .locals 0
    .param p1, "x0"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljga$a;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method
