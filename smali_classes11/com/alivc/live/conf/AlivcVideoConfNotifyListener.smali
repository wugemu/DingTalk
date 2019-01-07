.class public interface abstract Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;
.super Ljava/lang/Object;
.source "AlivcVideoConfNotifyListener.java"


# virtual methods
.method public abstract onCompleted(Lcom/alivc/live/conf/AlivcVideoConf;)V
.end method

.method public abstract onJoin(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onKickOut(Lcom/alivc/live/conf/AlivcVideoConf;)V
.end method

.method public abstract onLeave(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onMainPresenter(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V
.end method

.method public abstract onMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V
.end method

.method public abstract onPublish(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V
.end method

.method public abstract onSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onUnMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V
.end method

.method public abstract onUnMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V
.end method

.method public abstract onUnPublish(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onUnSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method
