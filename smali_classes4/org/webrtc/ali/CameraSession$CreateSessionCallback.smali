.class public interface abstract Lorg/webrtc/ali/CameraSession$CreateSessionCallback;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateSessionCallback"
.end annotation


# virtual methods
.method public abstract onDone(Lorg/webrtc/ali/CameraSession;)V
.end method

.method public abstract onFailure(Lorg/webrtc/ali/CameraSession$FailureType;Ljava/lang/String;)V
.end method
