.class final Lexm$11;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

.field final synthetic b:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 328
    iput-object p1, p0, Lexm$11;->b:Lexm;

    iput-object p2, p0, Lexm$11;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 328
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;

    .line 1331
    if-eqz p1, :cond_3

    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->c(Lexm;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1332
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_start_success"

    invoke-interface {v0, v4, v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1334
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Create video conf success"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1336
    iget-object v0, p0, Lexm$11;->b:Lexm;

    new-instance v1, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    invoke-direct {v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;-><init>()V

    invoke-static {v0, v1}, Lexm;->a(Lexm;Lcom/alivc/live/conf/AlivcVideoConfUserInfo;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    .line 1339
    :cond_0
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setConferenceId(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setAppid(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setNonce(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceTimestamp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setTimestamp(J)V

    .line 1343
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p0, Lexm$11;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setUserId(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->gslbs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->gslbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1346
    new-array v0, v0, [Ljava/lang/String;

    .line 1347
    iget-object v1, p0, Lexm$11;->b:Lexm;

    invoke-static {v1}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->gslbs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setGslb([Ljava/lang/String;)V

    .line 1349
    :cond_1
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setToken(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->setSession(Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lexm$11;->b:Lexm;

    iget-object v1, p0, Lexm$11;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lexm;->a(Lexm;J)J

    .line 1353
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    new-instance v1, Levo;

    iget-object v2, p0, Lexm$11;->b:Lexm;

    invoke-static {v2}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v2

    iget-object v3, p0, Lexm$11;->b:Lexm;

    invoke-static {v3}, Lexm;->e(Lexm;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Levo;-><init>(Lcom/alivc/live/conf/AlivcVideoConfUserInfo;I)V

    .line 2179
    iput-object v1, v0, Levm;->d:Levo;

    .line 1354
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    iget-object v1, p0, Lexm$11;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3160
    iput-wide v2, v0, Levm;->a:J

    .line 1355
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    iget-object v1, p0, Lexm$11;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Levm;->a(Ljava/lang/String;)V

    .line 1356
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Levm;->a(J)V

    .line 1358
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_join"

    invoke-interface {v0, v4, v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1360
    iget-object v0, p0, Lexm$11;->b:Lexm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lexm;->b(Lexm;Z)Z

    .line 1361
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->c(Lexm;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->c(Lexm;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    iget-object v1, p0, Lexm$11;->b:Lexm;

    invoke-static {v1}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v1

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;->AlivcVideoConfJoinModeAutomatic:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;

    invoke-virtual {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConf;->joinChat(Lcom/alivc/live/conf/AlivcVideoConfUserInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;)V

    .line 1365
    :cond_2
    iget-object v0, p0, Lexm$11;->b:Lexm;

    invoke-static {v0}, Lexm;->f(Lexm;)V

    .line 328
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 371
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Create video conf fail "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "videoconf_conf_start_fail"

    invoke-interface {v1, v6, v2, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 374
    const/4 v0, -0x1

    .line 375
    .local v0, "errCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    invoke-static {p1, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 378
    :cond_0
    iget-object v1, p0, Lexm$11;->b:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lexm$11;->b:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v1, v2, v0, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method
