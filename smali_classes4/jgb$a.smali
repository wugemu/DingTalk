.class public final Ljgb$a;
.super Ljfz$a;
.source "EGLBase14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/opengl/EGLConfig;


# direct methods
.method private constructor <init>(Landroid/opengl/EGLConfig;)V
    .locals 0
    .param p1, "eglConfig"    # Landroid/opengl/EGLConfig;

    .prologue
    .line 71
    invoke-direct {p0}, Ljfz$a;-><init>()V

    .line 72
    iput-object p1, p0, Ljgb$a;->a:Landroid/opengl/EGLConfig;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/EGLConfig;B)V
    .locals 0
    .param p1, "x0"    # Landroid/opengl/EGLConfig;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljgb$a;-><init>(Landroid/opengl/EGLConfig;)V

    return-void
.end method
