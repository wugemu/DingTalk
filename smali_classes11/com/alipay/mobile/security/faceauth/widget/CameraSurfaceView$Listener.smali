.class public interface abstract Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;
.super Ljava/lang/Object;
.source "CameraSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPreviewFrame([BLandroid/hardware/Camera;II)V
.end method

.method public abstract onSurfaceError(I)V
.end method

.method public abstract surfaceChanged(DD)V
.end method

.method public abstract surfaceCreated()V
.end method

.method public abstract surfaceDestroyed()V
.end method
