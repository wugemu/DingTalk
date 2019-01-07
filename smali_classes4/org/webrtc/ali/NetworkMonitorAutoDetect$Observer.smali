.class public interface abstract Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V
.end method

.method public abstract onNetworkConnect(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method
