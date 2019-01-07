.class public Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "RobotMiddleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

.field private j:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

.field private k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

.field private l:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    .line 4136
    if-eqz p1, :cond_0

    .line 4140
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->directSettingBotURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4141
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->directSettingBotURL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->finish()V

    .line 4170
    :cond_0
    :goto_0
    return-void

    .line 4146
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 4178
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->l:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    if-nez v2, :cond_2

    .line 4181
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v2, p0, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->l:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    .line 4148
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4150
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4151
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->f:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4153
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->creatorNick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4154
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->g:Landroid/widget/TextView;

    sget v3, Lctk$i;->icon_robot_creator:I

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->creatorNick:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4156
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->isManageable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4157
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->setVisibility(I)V

    .line 4158
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4160
    :cond_5
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isCustomTemplate(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4161
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->setVisibility(I)V

    .line 4162
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4163
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4165
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->setVisibility(I)V

    .line 4206
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 4167
    :cond_7
    :goto_1
    if-eqz v0, :cond_b

    .line 4168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4209
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-nez v2, :cond_a

    :cond_9
    move v0, v1

    .line 4210
    goto :goto_1

    .line 4212
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->globalBotUid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    move v0, v1

    .line 4213
    goto :goto_1

    .line 4172
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->showLoadingDialog()V

    .line 2108
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;)V

    .line 2129
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 2130
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 2131
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2129
    invoke-interface {v2, v4, v5, v0}, Ldxu;->g(JLcma;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 221
    .local v0, "id":I
    sget v1, Lctk$f;->robot_market:I

    if-ne v0, v1, :cond_1

    .line 222
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    sget v1, Lctk$f;->robot_profile:I

    if-eq v0, v1, :cond_2

    sget v1, Lctk$f;->robot_avatar:I

    if-ne v0, v1, :cond_4

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->globalBotUid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 226
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-virtual {v1, p0, v2, v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLandroid/os/Bundle;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    invoke-virtual {v1, p0, v2, v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLandroid/os/Bundle;)V

    goto :goto_0

    .line 231
    :cond_4
    sget v1, Lctk$f;->robot_setting:I

    if-ne v0, v1, :cond_5

    .line 2239
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->isManageable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2240
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p0, v1, v2}, Ldip;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2243
    const-string/jumbo v2, "ding_group_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    const-string/jumbo v2, "bots_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    :cond_5
    sget v1, Lctk$f;->tv_robot_chat:I

    if-ne v0, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lctk$g;->activity_robot_middle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->setContentView(I)V

    .line 70
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1087
    sget v0, Lctk$f;->robot_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1088
    sget v0, Lctk$f;->tv_robot_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->e:Landroid/widget/TextView;

    .line 1089
    sget v0, Lctk$f;->tv_robot_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->f:Landroid/widget/TextView;

    .line 1090
    sget v0, Lctk$f;->tv_creator_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->g:Landroid/widget/TextView;

    .line 1091
    sget v0, Lctk$f;->robot_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    .line 1092
    sget v0, Lctk$f;->robot_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    .line 1093
    sget v0, Lctk$f;->robot_market:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    .line 1094
    sget v0, Lctk$f;->ll_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->d:Landroid/widget/LinearLayout;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2076
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "im_robot_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a:J

    .line 2077
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2078
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2079
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 251
    .line 3199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->l:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->l:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a()V

    .line 3201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->l:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    .line 252
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 253
    return-void
.end method
