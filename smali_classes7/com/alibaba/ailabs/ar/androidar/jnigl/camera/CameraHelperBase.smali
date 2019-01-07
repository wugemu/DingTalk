.class public Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelperBase;
.super Ljava/lang/Object;
.source "CameraHelperBase.java"

# interfaces
.implements Lpb;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/camera/CameraHelperBase;->a:Landroid/content/Context;

    .line 30
    return-void
.end method
