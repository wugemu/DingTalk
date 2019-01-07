.class public Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# instance fields
.field private final a:Lpb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 33
    new-instance v0, Lpa;

    invoke-direct {v0}, Lpa;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelper;->a:Lpb;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelperBase;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelperBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelper;->a:Lpb;

    goto :goto_0
.end method
