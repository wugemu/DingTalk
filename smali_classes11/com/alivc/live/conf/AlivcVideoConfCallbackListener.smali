.class public interface abstract Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;
.super Ljava/lang/Object;
.source "AlivcVideoConfCallbackListener.java"


# virtual methods
.method public abstract getViewForPublish(Lcom/alivc/live/conf/AlivcVideoConf;)Landroid/view/SurfaceView;
.end method

.method public abstract getViewForSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;)Landroid/view/SurfaceView;
.end method

.method public abstract onFirstFramereceived(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;I)V
.end method

.method public abstract onGetCurrentParticipantsStatusFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
.end method

.method public abstract onGetCurrentParticipantsStatusSuccess(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;)V
.end method

.method public abstract onJoinChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
.end method

.method public abstract onJoinChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V
.end method

.method public abstract onLeaveChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V
.end method

.method public abstract onLeaveChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V
.end method

.method public abstract onPublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
.end method

.method public abstract onPublishScreenShareFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
.end method

.method public abstract onPublishScreenShareSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onPublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onSubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end method

.method public abstract onSubscribeRenderReady(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end method

.method public abstract onSubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end method

.method public abstract onUnPublishScreenShareFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
.end method

.method public abstract onUnPublishScreenShareSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onUnpublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V
.end method

.method public abstract onUnpublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end method

.method public abstract onUnsubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end method

.method public abstract onUnsubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end method

.method public abstract releaseViewWhenUnpublish(Lcom/alivc/live/conf/AlivcVideoConf;Landroid/view/SurfaceView;)V
.end method

.method public abstract releaseViewWhenUnsubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Landroid/view/SurfaceView;)V
.end method
