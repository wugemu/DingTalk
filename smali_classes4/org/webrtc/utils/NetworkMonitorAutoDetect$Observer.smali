.class public interface abstract Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/utils/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V
.end method

.method public abstract onNetworkConnect(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method
