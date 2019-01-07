.class public Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "PublicConversationSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Lcom/alibaba/wukong/im/Conversation;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method private a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 100
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v6, :cond_0

    .line 101
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 102
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    if-nez v6, :cond_2

    .line 156
    :goto_1
    return-void

    .line 103
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_2
    sget v6, Lctk$f;->iv_avatar:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 112
    .local v0, "ivAvatar":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v6, Lctk$f;->tv_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, "tvTitle":Landroid/widget/TextView;
    sget v6, Lctk$f;->switch_top:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 114
    .local v2, "switchTop":Landroid/widget/ToggleButton;
    sget v6, Lctk$f;->switch_mute:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 115
    .local v1, "switchMute":Landroid/widget/ToggleButton;
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->c:Z

    if-nez v6, :cond_3

    .line 116
    sget v6, Lctk$f;->ll_mute:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 117
    sget v6, Lctk$f;->tv_mute_tips:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    .line 121
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->groupIcon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-lez v6, :cond_6

    move v6, v7

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 153
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    :goto_4
    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 154
    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 122
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 123
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 124
    .local v4, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    new-instance v9, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;

    invoke-direct {v9, p0, v0, v3}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    invoke-virtual {v6, v4, v5, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_2

    .end local v4    # "uid":J
    :cond_6
    move v6, v8

    .line 152
    goto :goto_3

    :cond_7
    move v7, v8

    .line 153
    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 161
    .local v0, "id":I
    sget v1, Lctk$f;->switch_top:I

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, p2, v3}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget v1, Lctk$f;->switch_mute:I

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a:Lcom/alibaba/wukong/im/Conversation;

    if-nez p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1, v3}, Lcom/alibaba/wukong/im/Conversation;->updateNotification(ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lctk$g;->activity_public_conversation_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->setContentView(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->b:Ljava/lang/String;

    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_enable_show_mute"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->c:Z

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 1059
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "cid cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1061
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "[PublicConversationSettingsActivity] params cid is null,finish it "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->finish()V

    .line 50
    :goto_1
    return-void

    .line 1066
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;)V

    .line 1094
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1095
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    move v0, v2

    .line 1096
    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a()V

    goto :goto_1
.end method
