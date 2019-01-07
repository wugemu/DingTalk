.class public final Lbav;
.super Ljava/lang/Object;
.source "RecentUserPresenter.java"

# interfaces
.implements Lbau$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

.field c:Layl;

.field d:Lbau$b;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Lbau$b;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "view"    # Lbau$b;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lbav;->a:Landroid/app/Activity;

    .line 61
    iput-object p3, p0, Lbav;->d:Lbau$b;

    .line 1101
    if-nez p2, :cond_2

    .line 1102
    iget-object v0, p0, Lbav;->d:Lbau$b;

    invoke-interface {v0}, Lbau$b;->a()V

    .line 1103
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "[DingRecentUserActivityV2] intent is null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1115
    :cond_0
    :goto_0
    new-instance v0, Lbav$1;

    invoke-direct {v0, p0}, Lbav$1;-><init>(Lbav;)V

    iput-object v0, p0, Lbav;->e:Landroid/content/BroadcastReceiver;

    .line 1128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1129
    const-string/jumbo v3, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    iget-object v3, p0, Lbav;->a:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lbav;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1146
    new-instance v0, Layl;

    iget-object v3, p0, Lbav;->a:Landroid/app/Activity;

    new-instance v4, Lbav$2;

    invoke-direct {v4, p0}, Lbav$2;-><init>(Lbav;)V

    invoke-direct {v0, v3, v4}, Layl;-><init>(Landroid/app/Activity;Layl$a;)V

    iput-object v0, p0, Lbav;->c:Layl;

    .line 1168
    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_task_principal_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1169
    iget-object v0, p0, Lbav;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_task_owner_title:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1157
    :goto_1
    iget-object v3, p0, Lbav;->d:Lbau$b;

    invoke-interface {v3, v0}, Lbau$b;->a(Ljava/lang/String;)V

    .line 1158
    iget-object v3, p0, Lbav;->d:Lbau$b;

    invoke-interface {v3, v0}, Lbau$b;->c(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lbav;->d:Lbau$b;

    invoke-direct {p0}, Lbav;->d()Z

    move-result v3

    invoke-interface {v0, v3}, Lbau$b;->a(Z)V

    .line 1160
    iget-object v3, p0, Lbav;->d:Lbau$b;

    .line 1209
    invoke-direct {p0}, Lbav;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isHasSendToMe()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 1160
    :goto_2
    invoke-interface {v3, v0}, Lbau$b;->b(Z)V

    .line 1161
    iget-object v0, p0, Lbav;->d:Lbau$b;

    invoke-interface {v0, v1}, Lbau$b;->c(Z)V

    .line 1162
    iget-object v0, p0, Lbav;->d:Lbau$b;

    iget-object v1, p0, Lbav;->a:Landroid/app/Activity;

    sget v2, Laxp$i;->ding_recent_receiver:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbau$b;->b(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lbav;->d:Lbau$b;

    iget-object v1, p0, Lbav;->c:Layl;

    invoke-interface {v0, v1}, Lbau$b;->a(Landroid/widget/BaseAdapter;)V

    .line 2182
    iget-object v0, p0, Lbav;->d:Lbau$b;

    invoke-interface {v0}, Lbau$b;->b()V

    .line 2183
    invoke-static {}, Lbhk;->a()Lbhk;

    move-result-object v1

    new-instance v0, Lbav$3;

    invoke-direct {v0, p0}, Lbav$3;-><init>(Lbav;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lbav;->a:Landroid/app/Activity;

    .line 2184
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3070
    if-eqz v0, :cond_1

    .line 3073
    sget-object v2, Lbhk;->a:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lbhk$2;

    invoke-direct {v3, v1, v0}, Lbhk$2;-><init>(Lbhk;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 65
    :cond_1
    return-void

    .line 1107
    :cond_2
    const-string/jumbo v0, "intent_key_ding_select_user_params"

    invoke-static {p2, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    iput-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 1108
    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    if-nez v0, :cond_0

    .line 1109
    const-string/jumbo v0, "[DingRecentUserActivityV2]handleIntent failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "params is null"

    invoke-static {v0, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lbav;->d:Lbau$b;

    invoke-interface {v0}, Lbau$b;->a()V

    goto/16 :goto_0

    .line 1170
    :cond_3
    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_meeting_participant_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1171
    iget-object v0, p0, Lbav;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_create_event_item_person:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1172
    :cond_4
    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_task_cc_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1173
    iget-object v0, p0, Lbav;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_task_participant_title:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1174
    :cond_5
    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "identifier_recorder_selector"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1175
    iget-object v0, p0, Lbav;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_meeting_create_recorder_title:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1177
    :cond_6
    iget-object v0, p0, Lbav;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->ding_receiver:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 1209
    goto/16 :goto_2
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

    .line 213
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    .line 214
    .local v5, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 215
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 218
    iget-object v8, p0, Lbav;->a:Landroid/app/Activity;

    sget v11, Laxp$i;->ding_create_select_user:I

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 219
    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 220
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 222
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v6

    .line 3155
    .local v6, "dingQuotaManager":Lbbi;
    iget-object v8, v6, Lbbi;->a:Lazb;

    iget v2, v8, Lazb;->g:I

    .line 224
    .local v2, "chooseLimitCount":I
    iget-object v8, p0, Lbav;->a:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "chooseLimitTip":Ljava/lang/String;
    invoke-virtual {v6}, Lbbi;->b()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-result-object v4

    .line 226
    .local v4, "contactChooseCallback":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getBizType()I

    move-result v8

    if-ne v8, v12, :cond_1

    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 227
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 228
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 229
    :cond_0
    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    invoke-static {v8}, Lbbi;->a(I)I

    move-result v7

    .line 230
    .local v7, "meetingQuota":I
    if-ge v7, v2, :cond_1

    .line 231
    move v2, v7

    .line 232
    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-ne v8, v9, :cond_4

    .line 233
    iget-object v8, p0, Lbav;->a:Landroid/app/Activity;

    sget v11, Laxp$i;->dt_ding_tel_meeting_choose_limit_at:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    sget-object v4, Lbji;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 241
    .end local v7    # "meetingQuota":I
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 242
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 243
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 245
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 246
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 247
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 248
    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 252
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "intent_key_contact_choose_request"

    .line 4053
    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 253
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 254
    iget-object v8, p0, Lbav;->a:Landroid/app/Activity;

    invoke-virtual {v5, v8, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 255
    return-void

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "chooseLimitCount":I
    .end local v3    # "chooseLimitTip":Ljava/lang/String;
    .end local v4    # "contactChooseCallback":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .end local v6    # "dingQuotaManager":Lbbi;
    :cond_3
    move v8, v10

    .line 215
    goto/16 :goto_0

    .line 235
    .restart local v2    # "chooseLimitCount":I
    .restart local v3    # "chooseLimitTip":Ljava/lang/String;
    .restart local v4    # "contactChooseCallback":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .restart local v6    # "dingQuotaManager":Lbbi;
    .restart local v7    # "meetingQuota":I
    :cond_4
    iget-object v8, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getSubBizType()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 236
    iget-object v8, p0, Lbav;->a:Landroid/app/Activity;

    sget v11, Laxp$i;->dt_ding_video_meeting_choose_limit_at:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 237
    sget-object v4, Lbji;->b:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    goto :goto_1
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isMailMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

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
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbav;->a(Z)V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbav;->a(Z)V

    .line 88
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lbav;->a:Landroid/app/Activity;

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "userProfileObjectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 96
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v0, v2}, Lbjm;->a(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lbav;->d:Lbau$b;

    invoke-interface {v1}, Lbau$b;->a()V

    .line 98
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 77
    .line 3135
    iget-object v0, p0, Lbav;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3136
    iget-object v0, p0, Lbav;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbav;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3137
    const/4 v0, 0x0

    iput-object v0, p0, Lbav;->e:Landroid/content/BroadcastReceiver;

    .line 78
    :cond_0
    return-void
.end method
