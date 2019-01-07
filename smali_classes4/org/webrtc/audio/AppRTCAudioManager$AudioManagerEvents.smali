.class public interface abstract Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;
.super Ljava/lang/Object;
.source "AppRTCAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioManagerEvents"
.end annotation


# virtual methods
.method public abstract onAudioDeviceChanged(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            ">;)V"
        }
    .end annotation
.end method
