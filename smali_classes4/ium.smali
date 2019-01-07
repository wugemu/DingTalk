.class public final Lium;
.super Liuk;
.source "AndroidCameraService.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Liuk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 48
    return-void
.end method
