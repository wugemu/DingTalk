.class public final Lbbd;
.super Ljava/lang/Object;
.source "SelectUserPresenter.java"

# interfaces
.implements Lbbc$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

.field c:Laym;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field h:Lbbc$b;

.field private i:Lbhn;

.field private j:Lbhq;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Lbbc$b;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "view"    # Lbbc$b;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbd;->d:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbd;->e:Ljava/util/Collection;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbd;->f:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbd;->g:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lbbd;->a:Landroid/app/Activity;

    .line 86
    iput-object p3, p0, Lbbd;->h:Lbbc$b;

    .line 1178
    if-nez p2, :cond_0

    .line 1179
    const-string/jumbo v0, "[DingSelectedUserActivityV2]handle intent failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "intent is null"

    invoke-static {v0, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0}, Lbbc$b;->a()V

    move v0, v2

    .line 87
    :goto_0
    if-nez v0, :cond_2

    .line 88
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[SelectUserPresenter] invalid parameter."

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2394
    :goto_1
    return-void

    .line 1184
    :cond_0
    const-string/jumbo v0, "intent_key_ding_select_user_params"

    invoke-static {p2, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    iput-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 1185
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    if-nez v0, :cond_1

    .line 1186
    const-string/jumbo v0, "[DingSelectedUserActivityV2]handle intent failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "params is null"

    invoke-static {v0, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0}, Lbbc$b;->a()V

    move v0, v2

    .line 1188
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1191
    goto :goto_0

    .line 1195
    :cond_2
    new-instance v0, Lbbd$1;

    invoke-direct {v0, p0}, Lbbd$1;-><init>(Lbbd;)V

    iput-object v0, p0, Lbbd;->k:Landroid/content/BroadcastReceiver;

    .line 1208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1209
    const-string/jumbo v3, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1211
    iget-object v3, p0, Lbbd;->a:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lbbd;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    iget-object v0, p0, Lbbd;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 93
    iget-object v0, p0, Lbbd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lbbd;->e:Ljava/util/Collection;

    iget-object v3, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getUserIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lbbd;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getDisplayIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iput-object v8, p0, Lbbd;->i:Lbhn;

    .line 1222
    iget-object v0, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1223
    iget-object v0, p0, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1239
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_task_principal_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1240
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_task_owner_title:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1225
    :goto_2
    iget-object v3, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v3, v0}, Lbbc$b;->a(Ljava/lang/String;)V

    .line 1226
    iget-object v3, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v3, v0}, Lbbc$b;->b(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0, v1}, Lbbc$b;->a(Z)V

    .line 1228
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-virtual {p0}, Lbbd;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lbbc$b;->c(Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-direct {p0}, Lbbd;->k()Z

    move-result v3

    invoke-interface {v0, v3}, Lbbc$b;->b(Z)V

    .line 1230
    iget-object v3, p0, Lbbd;->h:Lbbc$b;

    .line 1507
    invoke-direct {p0}, Lbbd;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isHasSendToMe()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 1230
    :goto_3
    invoke-interface {v3, v0}, Lbbc$b;->e(Z)V

    .line 1231
    iget-object v3, p0, Lbbd;->h:Lbbc$b;

    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Lbbc$b;->c(Z)V

    .line 1232
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0, v2}, Lbbc$b;->f(Z)V

    .line 1233
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    iget-object v3, p0, Lbbd;->a:Landroid/app/Activity;

    sget v4, Laxp$i;->ding_selected_receiver:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lbbc$b;->d(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0, v2}, Lbbc$b;->g(Z)V

    .line 2261
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0}, Lbbc$b;->b()V

    .line 2262
    new-instance v0, Lbbd$2;

    invoke-direct {v0, p0}, Lbbd$2;-><init>(Lbbd;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lbbd;->a:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2332
    iget-object v3, p0, Lbbd;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2334
    invoke-interface {v0, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1241
    :cond_3
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_meeting_participant_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1242
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_create_event_item_person:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1243
    :cond_4
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_task_cc_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1244
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_task_participant_title:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1245
    :cond_5
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_recorder_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1246
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_meeting_create_recorder_title:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1248
    :cond_6
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->ding_receiver:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 1507
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 1231
    goto/16 :goto_4

    .line 2337
    :cond_9
    iget-object v3, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2338
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    iget-object v4, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 2339
    const-wide/32 v6, 0x40d1c1

    cmp-long v3, v4, v6

    if-nez v3, :cond_a

    .line 2341
    invoke-interface {v0, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2344
    :cond_a
    iget-object v3, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v3}, Lbbc$b;->b()V

    .line 2345
    iget-object v3, p0, Lbbd;->i:Lbhn;

    if-eqz v3, :cond_b

    .line 2346
    iget-object v3, p0, Lbbd;->i:Lbhn;

    .line 3124
    iput-boolean v1, v3, Lbhn;->a:Z

    .line 2348
    :cond_b
    new-instance v3, Lbhn;

    iget-object v4, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getCid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lbbd$4;

    invoke-direct {v5, p0, v0}, Lbbd$4;-><init>(Lbbd;Lcom/alibaba/wukong/Callback;)V

    const-class v0, Lbhn$a;

    iget-object v6, p0, Lbbd;->a:Landroid/app/Activity;

    .line 2349
    invoke-static {v5, v0, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhn$a;

    invoke-direct {v3, v4, v1, v0}, Lbhn;-><init>(Ljava/lang/String;ZLbhn$a;)V

    iput-object v3, p0, Lbbd;->i:Lbhn;

    .line 2367
    iget-object v1, p0, Lbbd;->i:Lbhn;

    .line 4067
    iput-boolean v2, v1, Lbhn;->a:Z

    .line 4068
    iget-object v0, v1, Lbhn;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4069
    const-string/jumbo v0, "-1"

    const-string/jumbo v2, "cid is invalidate"

    invoke-virtual {v1, v0, v2}, Lbhn;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4072
    :cond_c
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lbhn$1;

    invoke-direct {v2, v1}, Lbhn$1;-><init>(Lbhn;)V

    iget-object v1, v1, Lbhn;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2368
    :cond_d
    iget-object v3, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getBizType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 2369
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getParentDingId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2371
    iget-object v3, p0, Lbbd;->j:Lbhq;

    if-eqz v3, :cond_e

    .line 2372
    iget-object v3, p0, Lbbd;->j:Lbhq;

    .line 5069
    iput-boolean v1, v3, Lbhq;->a:Z

    .line 2374
    :cond_e
    new-instance v1, Lbhq;

    iget-object v3, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getParentDingId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f4

    new-instance v5, Lbbd$5;

    invoke-direct {v5, p0, v0}, Lbbd$5;-><init>(Lbbd;Lcom/alibaba/wukong/Callback;)V

    const-class v0, Lbhq$a;

    iget-object v6, p0, Lbbd;->a:Landroid/app/Activity;

    .line 2376
    invoke-static {v5, v0, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhq$a;

    invoke-direct {v1, v3, v4, v0}, Lbhq;-><init>(Ljava/lang/String;ILbhq$a;)V

    iput-object v1, p0, Lbbd;->j:Lbhq;

    .line 2394
    iget-object v0, p0, Lbbd;->j:Lbhq;

    .line 6060
    iput-boolean v2, v0, Lbhq;->a:Z

    .line 6061
    iget-object v1, v0, Lbhq;->b:Ljava/lang/String;

    .line 6109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6061
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 6062
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding id is valid"

    invoke-virtual {v0, v1, v2}, Lbhq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6065
    :cond_f
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, v0, Lbhq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbbp;->b(Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 2397
    :cond_10
    iget-object v1, p0, Lbbd;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lbbd;->e:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2398
    iget-object v1, p0, Lbbd;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 2399
    invoke-interface {v0, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private a(Z)V
    .locals 14
    .param p1, "direct2Group"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 511
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    .line 512
    .local v5, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 513
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_0
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 516
    iget-object v8, p0, Lbbd;->a:Landroid/app/Activity;

    sget v11, Laxp$i;->ding_create_select_user:I

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 517
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 518
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 520
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v6

    .line 8155
    .local v6, "dingQuotaManager":Lbbi;
    iget-object v8, v6, Lbbi;->a:Lazb;

    iget v2, v8, Lazb;->g:I

    .line 522
    .local v2, "chooseLimitCount":I
    iget-object v8, p0, Lbbd;->a:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "chooseLimitTip":Ljava/lang/String;
    invoke-virtual {v6}, Lbbi;->b()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-result-object v4

    .line 524
    .local v4, "contactChooseCallback":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getBizType()I

    move-result v8

    if-ne v8, v12, :cond_1

    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 525
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 526
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 527
    :cond_0
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    invoke-static {v8}, Lbbi;->a(I)I

    move-result v7

    .line 528
    .local v7, "meetingQuota":I
    if-ge v7, v2, :cond_1

    .line 529
    move v2, v7

    .line 530
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-ne v8, v9, :cond_5

    .line 531
    iget-object v8, p0, Lbbd;->a:Landroid/app/Activity;

    sget v11, Laxp$i;->dt_ding_tel_meeting_choose_limit_at:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 532
    sget-object v4, Lbji;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 539
    .end local v7    # "meetingQuota":I
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 540
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 541
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 543
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 544
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 545
    iget-object v8, p0, Lbbd;->g:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    .line 546
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isModifySelectedUser()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 548
    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 554
    :cond_2
    :goto_2
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 555
    if-eqz p1, :cond_3

    .line 556
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 559
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "intent_key_contact_choose_request"

    .line 9053
    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 560
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 561
    iget-object v8, p0, Lbbd;->a:Landroid/app/Activity;

    invoke-virtual {v5, v8, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 562
    return-void

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "chooseLimitCount":I
    .end local v3    # "chooseLimitTip":Ljava/lang/String;
    .end local v4    # "contactChooseCallback":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .end local v6    # "dingQuotaManager":Lbbi;
    :cond_4
    move v8, v10

    .line 513
    goto/16 :goto_0

    .line 533
    .restart local v2    # "chooseLimitCount":I
    .restart local v3    # "chooseLimitTip":Ljava/lang/String;
    .restart local v4    # "contactChooseCallback":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .restart local v6    # "dingQuotaManager":Lbbi;
    .restart local v7    # "meetingQuota":I
    :cond_5
    iget-object v8, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 534
    iget-object v8, p0, Lbbd;->a:Landroid/app/Activity;

    sget v11, Laxp$i;->dt_ding_video_meeting_choose_limit_at:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 535
    sget-object v4, Lbji;->b:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    goto :goto_1

    .line 551
    .end local v7    # "meetingQuota":I
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto :goto_2
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isMailMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isFromSpaceFileUnread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbbd;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 125
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v2

    .line 7119
    if-eqz v0, :cond_0

    .line 7122
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7123
    const-string/jumbo v4, "choose_user_identities"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7124
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7125
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 126
    :cond_0
    iget-object v0, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v0}, Lbbc$b;->a()V

    .line 127
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbd;->a(Z)V

    .line 132
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbbd;->a(Z)V

    .line 137
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lbbd;->a:Landroid/app/Activity;

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 145
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v1, v0, v2}, Lbjm;->a(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v1}, Lbbc$b;->a()V

    .line 147
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 151
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    .line 7155
    iget-object v1, v1, Lbbi;->a:Lazb;

    iget v0, v1, Lazb;->g:I

    .line 152
    .local v0, "chooseLimitCount":I
    iget-object v1, p0, Lbbd;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 153
    iget-object v1, p0, Lbbd;->h:Lbbc$b;

    invoke-interface {v1}, Lbbc$b;->e()V

    .line 154
    iget-object v1, p0, Lbbd;->h:Lbbc$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lbbc$b;->d(Z)V

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v1, p0, Lbbd;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v1, p0, Lbbd;->h:Lbbc$b;

    invoke-virtual {p0}, Lbbd;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbbc$b;->c(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lbbd;->c:Laym;

    invoke-virtual {v1}, Laym;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 165
    iget-object v2, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "identityObjectIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 168
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getDisabledIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 169
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getDisabledIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-object v2, p0, Lbbd;->h:Lbbc$b;

    invoke-virtual {p0}, Lbbd;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lbbc$b;->c(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lbbd;->c:Laym;

    invoke-virtual {v2}, Laym;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 118
    .line 6215
    iget-object v0, p0, Lbbd;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 6216
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbbd;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 6217
    const/4 v0, 0x0

    iput-object v0, p0, Lbbd;->k:Landroid/content/BroadcastReceiver;

    .line 119
    :cond_0
    return-void
.end method

.method j()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 420
    iget-object v0, p0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v1, Laxp$i;->sure:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v1, Laxp$i;->sure:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lbbd;->a:Landroid/app/Activity;

    sget v1, Laxp$i;->ding_select_user_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
