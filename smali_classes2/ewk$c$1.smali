.class final Lewk$c$1;
.super Ljava/lang/Object;
.source "TeleConfOperCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewk$c;
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

.field final synthetic b:Lewk$c;


# direct methods
.method constructor <init>(Lewk$c;Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;)V
    .locals 0
    .param p1, "this$1"    # Lewk$c;

    .prologue
    .line 406
    iput-object p1, p0, Lewk$c$1;->b:Lewk$c;

    iput-object p2, p0, Lewk$c$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 406
    check-cast p1, Ljava/util/List;

    .line 1409
    if-eqz p1, :cond_15

    .line 1411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lewk$c$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    .line 1413
    new-instance v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;-><init>()V

    .line 1414
    iget-object v0, p0, Lewk$c$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;

    .line 1416
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, p1, v6, v7}, Lewk;->a(Lewk;Ljava/util/List;J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1417
    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 1419
    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1420
    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1423
    :cond_0
    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1425
    :try_start_0
    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    :goto_1
    const/4 v2, -0x1

    .line 1436
    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 1437
    const/16 v2, 0x67

    .line 1439
    :cond_1
    const-string/jumbo v5, "NO_ANSWER"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1440
    const/16 v2, 0x66

    .line 1457
    :cond_2
    :goto_2
    iget-object v5, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v5, v5, Lewk$c;->a:Lewk;

    invoke-static {v5}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1458
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    .line 1459
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    .line 1412
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 1426
    :catch_0
    move-exception v2

    .line 1427
    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 1428
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1431
    :cond_3
    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->mediaId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto :goto_1

    .line 1441
    :cond_4
    const-string/jumbo v5, "UNABLE_CONNECT"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1442
    const/16 v2, 0x67

    goto :goto_2

    .line 1443
    :cond_5
    const-string/jumbo v5, "SHUTDOWN"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1444
    const/16 v2, 0x68

    goto :goto_2

    .line 1445
    :cond_6
    const-string/jumbo v5, "REFUSE"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1446
    const/16 v2, 0x6a

    goto :goto_2

    .line 1447
    :cond_7
    const-string/jumbo v5, "NORMAL_CLEARING"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1448
    const/16 v2, 0x65

    goto/16 :goto_2

    .line 1449
    :cond_8
    const-string/jumbo v5, "OUT_OF_SERVICE"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1450
    const/16 v2, 0x69

    goto/16 :goto_2

    .line 1451
    :cond_9
    const-string/jumbo v5, "CALLING"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "callee-is-calling"

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->hangupCause:Ljava/lang/String;

    .line 1452
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1453
    :cond_a
    const/16 v2, 0x6b

    goto/16 :goto_2

    .line 1462
    :cond_b
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    .line 1464
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 1467
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_e

    .line 1468
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->d(Lewk;)Leze;

    move-result-object v0

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Leze;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;IZ)V

    .line 1469
    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_c

    .line 1470
    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1471
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->d(Lewk;)Leze;

    move-result-object v0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v5, v8}, Leze;->a(JZZ)V

    .line 1476
    :cond_c
    :goto_4
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->d(Lewk;)Leze;

    move-result-object v0

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v2, v6}, Leze;->b(JIZ)V

    goto/16 :goto_3

    .line 1473
    :cond_d
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->d(Lewk;)Leze;

    move-result-object v0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v5, v8}, Leze;->a(JZZ)V

    goto :goto_4

    .line 1479
    :cond_e
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    const/4 v6, 0x0

    iget-object v7, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 1480
    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_f

    .line 1481
    iget-object v0, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->canSpeek:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1482
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v5, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 1487
    :cond_f
    :goto_5
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v2, v6}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    .line 1489
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewk;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->nickName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->status:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", myUid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1490
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callerId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1491
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1489
    invoke-static {v0, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1484
    :cond_10
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConfMemberInfoObject;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v5, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    goto/16 :goto_5

    .line 1494
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1495
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v2

    .line 1496
    const/4 v0, 0x1

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 1497
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1500
    :cond_12
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    iget-object v1, v2, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Levi;->a(Ljava/util/List;)V

    .line 1503
    :cond_13
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v1, v1, Lewk$c;->a:Lewk;

    invoke-static {v1}, Lewk;->e(Lewk;)I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1504
    invoke-static {}, Lewg;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1506
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->c(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_guide_add_member_tip:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v4, v4, Lewk$c;->a:Lewk;

    invoke-static {v4}, Lewk;->e(Lewk;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    iget-object v1, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v1, v1, Lewk$c;->a:Lewk;

    invoke-static {v1}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/String;Z)V

    .line 1511
    :cond_14
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    iget-object v1, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v1, v1, Lewk$c;->a:Lewk;

    invoke-static {v1}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Levi;->c(Ljava/util/List;)V

    .line 1513
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 1515
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1516
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(II)V

    .line 1517
    iget-object v0, p0, Lewk$c$1;->b:Lewk$c;

    iget-object v0, v0, Lewk$c;->a:Lewk;

    invoke-static {v0}, Lewk;->a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .line 406
    :cond_15
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 530
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 525
    return-void
.end method
