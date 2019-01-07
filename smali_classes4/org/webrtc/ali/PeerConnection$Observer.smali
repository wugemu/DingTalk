.class public interface abstract Lorg/webrtc/ali/PeerConnection$Observer;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onAddStream(Lorg/webrtc/ali/MediaStream;)V
.end method

.method public abstract onAddTrack(Lorg/webrtc/ali/RtpReceiver;[Lorg/webrtc/ali/MediaStream;)V
.end method

.method public abstract onDataChannel(Lorg/webrtc/ali/DataChannel;)V
.end method

.method public abstract onIceCandidate(Lorg/webrtc/ali/IceCandidate;)V
.end method

.method public abstract onIceCandidatesRemoved([Lorg/webrtc/ali/IceCandidate;)V
.end method

.method public abstract onIceConnectionChange(Lorg/webrtc/ali/PeerConnection$IceConnectionState;)V
.end method

.method public abstract onIceConnectionReceivingChange(Z)V
.end method

.method public abstract onIceGatheringChange(Lorg/webrtc/ali/PeerConnection$IceGatheringState;)V
.end method

.method public abstract onRemoveStream(Lorg/webrtc/ali/MediaStream;)V
.end method

.method public abstract onRenegotiationNeeded()V
.end method

.method public abstract onSignalingChange(Lorg/webrtc/ali/PeerConnection$SignalingState;)V
.end method
