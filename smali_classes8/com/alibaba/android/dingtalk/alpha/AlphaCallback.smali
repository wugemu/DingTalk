.class public abstract Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;
.super Ljava/lang/Object;
.source "AlphaCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public onTcpClientClosed()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onTcpClientCreated(I)V
    .locals 0
    .param p1, "sock"    # I

    .prologue
    .line 13
    return-void
.end method

.method public onTcpReceived([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "sock"    # I

    .prologue
    .line 21
    return-void
.end method
