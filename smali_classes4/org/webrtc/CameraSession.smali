.class public interface abstract Lorg/webrtc/CameraSession;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraSession$Events;,
        Lorg/webrtc/CameraSession$CreateSessionCallback;
    }
.end annotation


# virtual methods
.method public abstract checkLightEnable()Z
.end method

.method public abstract enableCameraLight(Z)V
.end method

.method public abstract enableMirror(Z)V
.end method

.method public abstract getBrightness()I
.end method

.method public abstract setBrightness(I)V
.end method

.method public abstract setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
