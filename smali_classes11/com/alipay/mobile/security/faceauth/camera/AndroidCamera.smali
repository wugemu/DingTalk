.class public interface abstract Lcom/alipay/mobile/security/faceauth/camera/AndroidCamera;
.super Ljava/lang/Object;
.source "AndroidCamera.java"


# virtual methods
.method public abstract getCameraViewRotation()I
.end method

.method public abstract openCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
.end method

.method public abstract setListener(Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;)V
.end method

.method public abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract startPreview(Landroid/view/SurfaceHolder;F)V
.end method

.method public abstract stopCamera()V
.end method
