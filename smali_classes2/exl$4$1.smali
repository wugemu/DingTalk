.class final Lexl$4$1;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexl$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

.field final synthetic b:Lexl$4;


# direct methods
.method constructor <init>(Lexl$4;Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;)V
    .locals 0
    .param p1, "this$1"    # Lexl$4;

    .prologue
    .line 429
    iput-object p1, p0, Lexl$4$1;->b:Lexl$4;

    iput-object p2, p0, Lexl$4$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 429
    check-cast p1, Ljava/util/List;

    .line 1432
    if-eqz p1, :cond_7

    .line 1434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    iget-object v0, p0, Lexl$4$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    .line 1436
    if-eqz v0, :cond_0

    .line 1439
    new-instance v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    invoke-direct {v5}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;-><init>()V

    .line 1440
    invoke-virtual {v5, v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 1442
    iget-object v0, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v0, v0, Lexl$4;->a:Lexl;

    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, p1, v6, v7}, Lexl;->a(Lexl;Ljava/util/List;J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1443
    if-nez v0, :cond_1

    .line 1444
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 1445
    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1446
    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1449
    :cond_1
    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1451
    :try_start_0
    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_1
    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    .line 1463
    const/16 v1, 0x67

    .line 1465
    :goto_2
    iget-object v6, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-static {v6, v1}, Lezd;->a(Ljava/lang/String;I)I

    move-result v6

    .line 1467
    const/4 v1, 0x1

    .line 1468
    iget-object v7, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1469
    iget-object v7, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1470
    const/4 v1, 0x0

    .line 1474
    :cond_2
    new-instance v7, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;

    invoke-direct {v7}, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;-><init>()V

    .line 1475
    iput-object v0, v7, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1476
    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUserStatus:I

    .line 1477
    iput v6, v7, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUserExpStatus:I

    .line 1478
    iput-boolean v1, v7, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mBeMuted:Z

    .line 1480
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1483
    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    .line 1485
    :cond_3
    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Levn;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1452
    :catch_0
    move-exception v1

    .line 1453
    iget-object v6, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1454
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1457
    :cond_4
    iget-object v1, v5, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_1

    .line 1489
    :cond_5
    iget-object v0, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v0, v0, Lexl$4;->a:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1490
    iget-object v0, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v0, v0, Lexl$4;->a:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Ljava/util/List;)V

    .line 1492
    :cond_6
    :goto_3
    return-void

    .line 1493
    :cond_7
    iget-object v0, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v0, v0, Lexl$4;->a:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1494
    iget-object v0, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v0, v0, Lexl$4;->a:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_PULL_MEMS:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v3, "Pull dat is null"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 506
    .line 1150
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "errCode":I
    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lexl$4$1;->b:Lexl$4;

    iget-object v1, v1, Lexl$4;->a:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_PULL_MEMS:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v1, v2, v0, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 502
    return-void
.end method
