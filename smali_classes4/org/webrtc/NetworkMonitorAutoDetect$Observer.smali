.class public interface abstract Lorg/webrtc/NetworkMonitorAutoDetect$Observer;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
.end method

.method public abstract onNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method
