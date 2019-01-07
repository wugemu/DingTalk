.class public interface abstract Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;
.super Ljava/lang/Object;
.source "SophonSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/sdk/SophonSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SophonSurfaceChange"
.end annotation


# virtual methods
.method public abstract onSurfaceChange(Landroid/view/SurfaceHolder;IILorg/webrtc/model/SophonViewStatus;)V
.end method

.method public abstract onSurfaceDestroyed(Landroid/view/SurfaceHolder;Lorg/webrtc/model/SophonViewStatus;)V
.end method

.method public abstract onsurfaceCreated(Landroid/view/SurfaceHolder;Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;IILorg/webrtc/model/SophonViewStatus;)V
.end method
