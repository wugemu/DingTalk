.class public abstract Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
.super Ljava/lang/Object;
.source "QuickConnectWifiCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;,
        Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .param p3, "errorMessage"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    .prologue
    .line 57
    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public onConnecting(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public onScanning(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method
