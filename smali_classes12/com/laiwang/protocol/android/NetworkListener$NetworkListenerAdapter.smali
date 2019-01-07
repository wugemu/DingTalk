.class public Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Lcom/laiwang/protocol/android/NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/NetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 37
    return-void
.end method

.method public onConnected()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onDisconnected(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 45
    return-void
.end method

.method public onNetworkConnected()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    .prologue
    .line 54
    return-void
.end method
