.class public interface abstract Lcom/laiwang/protocol/android/NetworkListener;
.super Ljava/lang/Object;
.source "NetworkListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/NetworkListener$NetworkState;,
        Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;,
        Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract onConnectFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onDisconnected(Ljava/lang/Exception;)V
.end method

.method public abstract onNetworkConnected()V
.end method

.method public abstract onNetworkUnavailable()V
.end method

.method public abstract onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
.end method
