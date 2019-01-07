.class Lcom/alivc/live/conf/AlivcVideoConfImpl$2;
.super Lorg/webrtc/alirtcInterface/SophonEventListener;
.source "AlivcVideoConfImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;


# direct methods
.method constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/SophonEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBye(I)V
    .locals 3
    .param p1, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1568
    invoke-super {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onBye(I)V

    .line 1569
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBye code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    sget v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->KICKOUT:I

    if-ne p1, v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onKickOut(Lcom/alivc/live/conf/AlivcVideoConf;)V

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    sget v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->COMPLETED:I

    if-ne p1, v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onCompleted(Lcom/alivc/live/conf/AlivcVideoConf;)V

    goto :goto_0
.end method

.method public onChannelReleaseNotify()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1356
    invoke-super {p0}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onChannelReleaseNotify()V

    .line 1357
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "onChannelReleaseNotify"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method public onCollectPlatformProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$2200(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCollectStats(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "collectStatus"    # Ljava/util/HashMap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1368
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onCollectStats(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1369
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "onCollectStats"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method public onConnectionChange(I)V
    .locals 2
    .param p1, "mediaConState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1362
    invoke-super {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onConnectionChange(I)V

    .line 1363
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "onConnectionChange"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "params"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1387
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onError(ILjava/lang/String;)V

    .line 1388
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError error is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$2000(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$2000(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfListener;->onSDKError(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V

    .line 1392
    :cond_0
    return-void
.end method

.method public onFetchPerformanceInfo()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1556
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1558
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "cpu_usage"

    const-string/jumbo v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/alivc/live/conf/AlivcUtil;->getProcessCpuRate()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1559
    const-string/jumbo v2, "mem_usage"

    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$2300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcUtil;->getRunningAppProcessInfo(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onFirstFramereceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "streamLabel"    # Ljava/lang/String;
    .param p3, "trackLabel"    # Ljava/lang/String;
    .param p4, "timeCostMs"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1178
    invoke-super {p0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onFirstFramereceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1179
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFirstFramereceived callId "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " stram_label is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " track_label "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " time_cost_ms is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/webrtc/alirtcInterface/PublisherInfo;

    .line 1181
    .local v6, "publisherInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    const/4 v4, 0x0

    .line 1182
    .local v4, "type":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    if-eqz p3, :cond_0

    .line 1183
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO_LARGE:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    sget-object v4, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 1192
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1193
    invoke-virtual {v6}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getUser_id()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "userId":Ljava/lang/String;
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    move-object v3, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onFirstFramereceived(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;I)V

    .line 1198
    .end local v2    # "userId":Ljava/lang/String;
    :cond_1
    return-void

    .line 1185
    :cond_2
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO_SMALL:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1186
    sget-object v4, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_0

    .line 1187
    :cond_3
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO_SHARE:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    sget-object v4, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_0
.end method

.method public onGslbResult(I)V
    .locals 3
    .param p1, "result"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 968
    invoke-super {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onGslbResult(I)V

    .line 969
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OnAuthResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v0

    const-string/jumbo v1, "alibaba"

    invoke-virtual {v0, v1}, Lorg/webrtc/alirtcInterface/SophonEngine;->joinChannel(Ljava/lang/String;)I

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onJoinChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V

    goto :goto_0
.end method

.method public onJoinChannelResult(I)V
    .locals 3
    .param p1, "result"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 981
    invoke-super {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onJoinChannelResult(I)V

    .line 982
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onJoinChannelResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    if-nez p1, :cond_1

    .line 984
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onJoinChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onJoinChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V

    goto :goto_0
.end method

.method public onLeaveChannelResult(I)V
    .locals 3
    .param p1, "result"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 996
    invoke-super {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onLeaveChannelResult(I)V

    .line 997
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLeaveChannelResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    if-nez p1, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onLeaveChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onLeaveChatFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V

    goto :goto_0
.end method

.method public onLogMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1402
    invoke-super {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onLogMessage(Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "onLogMessage"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1408
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    const-string/jumbo v7, "SaaS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onMessage tid is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " content_type is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " content is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string/jumbo v4, ""

    .line 1416
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1417
    .local v5, "participantIds":Lorg/json/JSONArray;
    const-string/jumbo v6, ""

    .line 1419
    .local v6, "type":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v3, "jsonObject":Lorg/json/JSONObject;
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1421
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1422
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->PARTICIPANTIDS:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1423
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1428
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->COMMAND:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1429
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->MUTEAUDIO:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1430
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalAudio(Z)V

    .line 1431
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$2102(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    .line 1442
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEngine;->respondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1432
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->UNMUTEAUDIO:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1433
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    invoke-virtual {v7, v11}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalAudio(Z)V

    .line 1434
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7, v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$2102(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    goto :goto_2

    .line 1435
    :cond_4
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CLOSECAMERA:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1436
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7, v10}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$602(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    .line 1437
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    sget-object v8, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v7, v8, v10}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    goto :goto_2

    .line 1438
    :cond_5
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OPENCAMERA:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1439
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7, v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$602(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    .line 1440
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    sget-object v8, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;->AliRTCSDK_VideoSource_Type_CameraLarge:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v7, v8, v11}, Lorg/webrtc/alirtcInterface/SophonEngine;->enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    goto :goto_2

    .line 1443
    :cond_6
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->NOTIFY:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1444
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 1445
    .local v2, "ids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 1447
    :try_start_1
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1445
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1448
    :catch_1
    move-exception v0

    .line 1449
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1453
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v7

    invoke-virtual {v7, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEngine;->respondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOMUTED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1456
    const/4 v1, 0x0

    :goto_5
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 1457
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1458
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aget-object v10, v2, v1

    invoke-interface {v7, v8, v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V

    .line 1456
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1461
    :cond_9
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOUNMUTED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1462
    const/4 v1, 0x0

    :goto_6
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 1463
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1464
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aget-object v10, v2, v1

    invoke-interface {v7, v8, v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onUnMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V

    .line 1462
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1467
    :cond_b
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERACLOSED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1468
    const/4 v1, 0x0

    :goto_7
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 1469
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1470
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aget-object v10, v2, v1

    invoke-interface {v7, v8, v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V

    .line 1468
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1473
    :cond_d
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERAOPENED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1474
    const/4 v1, 0x0

    :goto_8
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 1475
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1476
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aget-object v10, v2, v1

    invoke-interface {v7, v8, v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onUnMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V

    .line 1474
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1479
    :cond_f
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOALLMUTED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1480
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1481
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    invoke-interface {v7, v8, v9, v2}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1483
    :cond_10
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIOALLUNMUTED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1484
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1485
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    invoke-interface {v7, v8, v9, v2}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onUnMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1487
    :cond_11
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERAALLCLOSED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1488
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1489
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    invoke-interface {v7, v8, v9, v2}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1491
    :cond_12
    sget-object v7, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CAMERAALLOPENED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1492
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1493
    iget-object v7, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v7}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    invoke-interface {v7, v8, v9, v2}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onUnMuteAll(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 4
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1222
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantJoinNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 1224
    const-string/jumbo v1, "SaaS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onParticipantJoinNotify count is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onJoin(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1230
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 4
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1234
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantLeaveNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 1236
    const-string/jumbo v1, "SaaS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onParticipantLeaveNotify count is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onLeave(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V
    .locals 13
    .param p1, "publisherList"    # [Lorg/webrtc/alirtcInterface/PublisherInfo;
    .param p2, "publisherCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    .line 1246
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantPublishNotify([Lorg/webrtc/alirtcInterface/PublisherInfo;I)V

    .line 1247
    const-string/jumbo v9, "SaaS"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "onParticipantPublishNotify count is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;>;"
    if-eqz p1, :cond_8

    .line 1250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_8

    .line 1252
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1253
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/PublisherInfo;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1255
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1256
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/PublisherInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/webrtc/alirtcInterface/PublisherInfo;

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getUser_id()Ljava/lang/String;

    move-result-object v9

    aget-object v10, p1, v1

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getUser_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1257
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v10, p1, v1

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/PublisherInfo;>;"
    :cond_1
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v10, p1, v1

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v10

    aget-object v11, p1, v1

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v2, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-direct {v2}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;-><init>()V

    .line 1265
    .local v2, "info":Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    aget-object v9, p1, v1

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getUser_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setUserId(Ljava/lang/String;)V

    .line 1266
    aget-object v9, p1, v1

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setSubscribeId(Ljava/lang/String;)V

    .line 1267
    aget-object v9, p1, v1

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getSession()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setSession(Ljava/lang/String;)V

    .line 1268
    aget-object v9, p1, v1

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getDisplay()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setDisplay(Ljava/lang/String;)V

    .line 1269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setReceivedTimeStamp(J)V

    .line 1271
    aget-object v9, p1, v1

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getVideo_track_labels()[Ljava/lang/String;

    move-result-object v8

    .line 1272
    .local v8, "videoTrackLabels":[Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1273
    aget-object v9, p1, v1

    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getAudio_track_label()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    aget-object v9, p1, v1

    .line 1274
    invoke-virtual {v9}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getAudio_track_label()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1275
    invoke-virtual {v2, v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setEnableAudio(Z)V

    .line 1277
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_7

    .line 1278
    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1279
    if-nez v4, :cond_4

    .line 1280
    invoke-virtual {v2, v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setEnableVideoLargeStream(Z)V

    .line 1277
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1281
    :cond_4
    if-ne v4, v12, :cond_5

    .line 1282
    invoke-virtual {v2, v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setEnableVideoSmallStream(Z)V

    goto :goto_2

    .line 1283
    :cond_5
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    .line 1284
    invoke-virtual {v2, v12}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->setEnableScreenShareStream(Z)V

    goto :goto_2

    .line 1287
    :cond_6
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v9

    aget-object v10, p1, v1

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1288
    .local v7, "subscribeInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    if-eqz v7, :cond_3

    .line 1289
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v9

    aget-object v10, p1, v1

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v9

    invoke-static {}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    aget-object v10, p1, v1

    invoke-virtual {v10}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-static {v9, v10, v11}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$800(Lcom/alivc/live/conf/AlivcVideoConfImpl;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_2

    .line 1295
    .end local v4    # "j":I
    .end local v7    # "subscribeInfo":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1299
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/webrtc/alirtcInterface/PublisherInfo;>;>;"
    .end local v8    # "videoTrackLabels":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    .line 1301
    .local v6, "pubList":[Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1302
    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v9}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v9

    iget-object v10, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v9, v10, v6}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onPublish(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V

    .line 1304
    :cond_9
    const-string/jumbo v9, "SaaS"

    const-string/jumbo v10, "onParticipantPublishNotify end"

    invoke-static {v9, v10}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method public onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V
    .locals 4
    .param p1, "subcribeinfoList"    # [Lorg/webrtc/alirtcInterface/AliSubscriberInfo;
    .param p2, "feedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1332
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantSubscribeNotify([Lorg/webrtc/alirtcInterface/AliSubscriberInfo;I)V

    .line 1334
    const-string/jumbo v1, "SaaS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onParticipantSubscribeNotify count is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1340
    :cond_1
    return-void
.end method

.method public onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V
    .locals 8
    .param p1, "unpublisherList"    # [Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;
    .param p2, "feedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1310
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantUnpublishNotify([Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;I)V

    .line 1311
    const-string/jumbo v4, "SaaS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onParticipantUnpublishNotify count is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1313
    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1314
    .local v2, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    if-eqz v2, :cond_0

    .line 1315
    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v5}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1800(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1318
    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1319
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    iget-object v6, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {v6, v7, v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$800(Lcom/alivc/live/conf/AlivcVideoConfImpl;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_1

    .line 1322
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;>;"
    :cond_0
    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->getCall_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/webrtc/alirtcInterface/PublisherInfo;

    .line 1324
    .local v3, "removeInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1325
    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v4

    iget-object v5, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    aget-object v6, p1, v1

    invoke-virtual {v6}, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->getUser_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onUnPublish(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1312
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1328
    .end local v2    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    .end local v3    # "removeInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    :cond_2
    return-void
.end method

.method public onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V
    .locals 4
    .param p1, "participantList"    # [Lorg/webrtc/alirtcInterface/AliParticipantInfo;
    .param p2, "feedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1344
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onParticipantUnsubscribeNotify([Lorg/webrtc/alirtcInterface/AliParticipantInfo;I)V

    .line 1346
    const-string/jumbo v1, "SaaS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onParticipantUnsubscribeNotify count is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfNotifyListener;->onUnSubscribe(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    :cond_1
    return-void
.end method

.method public onPublishResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1012
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onPublishResult(ILjava/lang/String;)V

    .line 1013
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OnPublish Result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    if-nez p1, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$502(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    .line 1016
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$602(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    .line 1017
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1, p2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onPublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$502(Lcom/alivc/live/conf/AlivcVideoConfImpl;Z)Z

    .line 1022
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onPublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRepublishResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1202
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onRepublishResult(ILjava/lang/String;)V

    .line 1203
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OnRepublish Result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    if-nez p1, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1, p2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onPublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onPublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResubscribeResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 1217
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onResubscribeResult(ILjava/lang/String;)V

    .line 1218
    return-void
.end method

.method public onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 9
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1104
    invoke-super {p0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onResubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 1106
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResubscribeResult2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reqConfig is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v2, p3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$900(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " curConfig is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v2, p4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$900(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1000(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 1109
    .local v7, "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    const/4 v6, 0x0

    .line 1110
    .local v6, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    check-cast v6, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1113
    .restart local v6    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_0
    if-eqz v6, :cond_2

    .line 1114
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResubscribeResult2 subscribe isUnsubscribe "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    if-nez p1, :cond_6

    .line 1116
    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1117
    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSrcVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v8

    .line 1118
    .local v8, "srcType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1100(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V

    .line 1119
    if-eqz v8, :cond_3

    .line 1120
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "switchSubscibeVideoStream callId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSrcVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSubscribeConfig()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getSrcVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$300(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lorg/webrtc/alirtcInterface/SophonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v1, v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1400(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1400(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lorg/webrtc/alirtcInterface/SophonEngine;->switchSubscribeVideoStream(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 1134
    .end local v8    # "srcType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1135
    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1136
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onUnsubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1151
    :cond_2
    :goto_1
    return-void

    .line 1126
    .restart local v8    # "srcType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    :cond_3
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1200(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1300(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_0

    .line 1131
    .end local v8    # "srcType":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    :cond_4
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1500(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V

    .line 1132
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$800(Lcom/alivc/live/conf/AlivcVideoConfImpl;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_0

    .line 1138
    :cond_5
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onSubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_1

    .line 1142
    :cond_6
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1143
    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->isUnsubscribe()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1144
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v5

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onUnsubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_1

    .line 1146
    :cond_7
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v5

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onSubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_1
.end method

.method public onSubscribeResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 1045
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onSubscribeResult(ILjava/lang/String;)V

    .line 1046
    return-void
.end method

.method public onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 8
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "reqConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "curConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1074
    invoke-super {p0, p1, p2, p3, p4}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onSubscribeResult2(ILjava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 1076
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSubscribeResult2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reqConfig is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v2, p3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$900(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " curConfig is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v2, p4}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$900(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/4 v6, 0x0

    .line 1078
    .local v6, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1000(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 1079
    .local v7, "infoList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    check-cast v6, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1082
    .restart local v6    # "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    :cond_0
    if-eqz v6, :cond_2

    .line 1083
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSubscribeResult2 videoType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    if-nez p1, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1100(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)V

    .line 1086
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0, v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1200(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1300(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onSubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1099
    :cond_2
    :goto_0
    return-void

    .line 1094
    :cond_3
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v5

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onSubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_0
.end method

.method public onTransportStatusChange(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;
    .param p3, "status"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1396
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onTransportStatusChange(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;)V

    .line 1397
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "onTransportStatusChange"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method public onUnpublishResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1030
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onUnpublishResult(ILjava/lang/String;)V

    .line 1031
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUnpublishResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    if-nez p1, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v0, v1, p2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onUnpublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onUnpublishFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnsubscribeResult(ILjava/lang/String;)V
    .locals 7
    .param p1, "result"    # I
    .param p2, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1050
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onUnsubscribeResult(ILjava/lang/String;)V

    .line 1051
    const-string/jumbo v0, "SaaS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUnsubscribeResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "callId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    .line 1054
    .local v6, "info":Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;
    if-eqz v6, :cond_1

    .line 1055
    if-nez p1, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onUnsubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$800(Lcom/alivc/live/conf/AlivcVideoConfImpl;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1061
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$700(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :cond_1
    :goto_0
    return-void

    .line 1064
    :cond_2
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeInfo;->getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    move-result-object v5

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onUnsubscribeFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    goto :goto_0
.end method

.method public onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1501
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onUplinkChannelMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string/jumbo v8, "SaaS"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onUplinkChannelMessage result is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " contentType is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " content is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v5, ""

    .line 1505
    .local v5, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1508
    .local v3, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v4, "jsonObject":Lorg/json/JSONObject;
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1510
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->CONTENT:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1515
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->PULLCONFINFO:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1516
    if-nez p1, :cond_5

    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, "confStatus":[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    if-eqz p3, :cond_4

    .line 1520
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1521
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v0, v8, [Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;

    .line 1522
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1523
    new-instance v7, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;

    invoke-direct {v7}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;-><init>()V

    .line 1524
    .local v7, "status":Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1526
    .local v6, "object":Lorg/json/JSONObject;
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->ID:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->setUserId(Ljava/lang/String;)V

    .line 1527
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OPENED:Ljava/lang/String;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants;->VIDEO:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v7, v8}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->setEnableCamera(Z)V

    .line 1528
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->UNMUTED:Ljava/lang/String;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants;->AUDIO:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v7, v8}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->setEnableMic(Z)V

    .line 1529
    sget-object v8, Lcom/alivc/live/conf/AlivcVideoConfConstants;->OFF:Ljava/lang/String;

    sget-object v9, Lcom/alivc/live/conf/AlivcVideoConfConstants;->SHARESCREEN:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->setEnableScreenShare(Z)V

    .line 1530
    aput-object v7, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1522
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1511
    .end local v0    # "confStatus":[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    .end local v2    # "i":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "status":Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    :catch_0
    move-exception v1

    .line 1512
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1527
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "confStatus":[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    .restart local v2    # "i":I
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "status":Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    .line 1528
    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    .line 1529
    :cond_2
    const/4 v8, 0x1

    goto :goto_4

    .line 1533
    .end local v2    # "i":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "status":Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    :catch_1
    move-exception v1

    .line 1534
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1537
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1538
    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v8

    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v8, v9, v0}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onGetCurrentParticipantsStatusSuccess(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;)V

    .line 1547
    .end local v0    # "confStatus":[Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
    :cond_4
    :goto_5
    return-void

    .line 1542
    :cond_5
    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1543
    iget-object v8, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v8}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v8

    iget-object v9, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {p1}, Lcom/alivc/live/conf/AlivcVideoConfError;->getErrorCode(I)Lcom/alivc/live/conf/AlivcVideoConfError;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onGetCurrentParticipantsStatusFailure(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfError;)V

    goto :goto_5
.end method

.method public onWarning(ILjava/lang/String;)V
    .locals 3
    .param p1, "warningEvent"    # I
    .param p2, "params"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1374
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onWarning(ILjava/lang/String;)V

    .line 1375
    const-string/jumbo v0, "SaaS"

    const-string/jumbo v1, "onWarning"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1900(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1377
    const/16 v0, 0x101

    if-ne p1, v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1900(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusGood:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;->onNetworkStatusUpdate(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;)V

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    const/16 v0, 0x102

    if-ne p1, v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1900(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusPoor:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfNetworkListener;->onNetworkStatusUpdate(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;)V

    goto :goto_0
.end method

.method public onWindowRenderReady(Ljava/lang/String;I)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1155
    invoke-super {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEventListener;->onWindowRenderReady(Ljava/lang/String;I)V

    .line 1156
    const-string/jumbo v3, "SaaS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onWindowRenderReady callId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " videoType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$1600(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/PublisherInfo;

    .line 1159
    .local v0, "publisherInfo":Lorg/webrtc/alirtcInterface/PublisherInfo;
    const/4 v1, 0x0

    .line 1160
    .local v1, "type":Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 1161
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 1167
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/PublisherInfo;->getUser_id()Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1170
    const-string/jumbo v3, "SaaS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "post onWindowRenderReady callId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " videoType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v3}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$400(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;

    move-result-object v3

    iget-object v4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$2;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-interface {v3, v4, v2, p1, v1}, Lcom/alivc/live/conf/AlivcVideoConfCallbackListener;->onSubscribeRenderReady(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V

    .line 1174
    .end local v2    # "userId":Ljava/lang/String;
    :cond_1
    return-void

    .line 1162
    :cond_2
    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v3

    if-ne p2, v3, :cond_3

    .line 1163
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_0

    .line 1164
    :cond_3
    sget-object v3, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->ordinal()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 1165
    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    goto :goto_0
.end method
