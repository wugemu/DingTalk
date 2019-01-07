.class public interface abstract Lcom/taobao/conf/ITBConfCallback;
.super Ljava/lang/Object;
.source "ITBConfCallback.java"


# virtual methods
.method public abstract onAbnormWarning(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAlerting(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method public abstract onAnswer(Ljava/lang/String;Ljava/lang/String;ZZI)V
.end method

.method public abstract onAudioVolume(Ljava/lang/String;I)V
.end method

.method public abstract onCallingWarning(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onConnected(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onConnectedTimeout(Ljava/lang/String;I)V
.end method

.method public abstract onDebugView(Ljava/lang/String;)V
.end method

.method public abstract onDisconnected(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onErrorOcurr(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFetchLocalRender()V
.end method

.method public abstract onFetchRemoteRender()V
.end method

.method public abstract onHangup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onMakeCallFailed(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onMakeCallReady(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMediaStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMicVolume(Ljava/lang/String;I)V
.end method

.method public abstract onRecNoMicWarning(I)V
.end method

.method public abstract onReceiveRedirect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveRing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onRecvDataTimeoutWarning(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onRegisterStatus(ZI)V
.end method

.method public abstract onRemoteVideoFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSessionStatLog(Ljava/lang/String;II)V
.end method

.method public abstract onTransportIntensit(II)V
.end method

.method public abstract onVideoEnable(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onVideoRate(Ljava/lang/String;II)V
.end method
