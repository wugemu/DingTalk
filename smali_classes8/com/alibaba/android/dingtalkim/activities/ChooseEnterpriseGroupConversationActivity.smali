.class public Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChooseEnterpriseGroupConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/SearchView;

.field private final c:I

.field private d:J

.field private e:J

.field private f:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->b:Landroid/widget/SearchView;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->c:I

    .line 54
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    const-string/jumbo v0, "org_id"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->d:J

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;Ljava/lang/Object;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    .line 2065
    if-eqz p1, :cond_0

    .line 2068
    const/4 v2, 0x0

    .line 2072
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 2073
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mLocalExtra:Ljava/util/Map;

    move-object v0, p1

    .line 2074
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2077
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v1, "cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p1

    .line 2078
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v6

    .line 2086
    :goto_0
    if-eqz v0, :cond_3

    .line 2087
    const-string/jumbo v2, "chat_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2089
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2090
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;

    invoke-direct {v2, p0, v3, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2134
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v2

    invoke-virtual {v2}, Ldyn;->c()Ldxx;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->d:J

    invoke-interface {v2, v4, v5, v1, v0}, Ldxx;->a(JLjava/lang/String;Lcma;)V

    .line 2135
    :cond_0
    :goto_2
    return-void

    .line 2079
    :cond_1
    instance-of v0, p1, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2080
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    move-object v0, p1

    .line 2081
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    .line 2082
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_0

    .line 2136
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->finish()V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "choose_enterprise_group_conversation_back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 194
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lctk$f;->rl_create_new:I

    if-ne v1, v2, :cond_0

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string/jumbo v1, "title"

    sget v2, Lctk$i;->act_create_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "choose_people_action"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string/jumbo v1, "count_limit_tips"

    sget v2, Lctk$i;->create_conversation_choose_limit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string/jumbo v1, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    const-string/jumbo v1, "count_least"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 260
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1181
    sget v2, Lctk$g;->activity_choose_group_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->setContentView(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_allow_create_group"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1183
    sget v2, Lctk$f;->rl_create_new:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a:Landroid/widget/RelativeLayout;

    .line 1184
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Landroid/content/Intent;)V

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->e:J

    .line 155
    const-string/jumbo v2, "user_id"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->e:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    const-string/jumbo v2, "org_id"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->d:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 157
    const-string/jumbo v2, "choose_enterprise_group_conversation"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string/jumbo v2, "intent_key_only_show_my_group"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_only_show_my_group"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    new-instance v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 160
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lctk$f;->ll_fragment_container:I

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 162
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "choose_enterprise_group_conversation"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 165
    return-void

    .line 1186
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    sget v2, Lctk$f;->rl_create_new:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a:Landroid/widget/RelativeLayout;

    .line 1187
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    const-string/jumbo v1, ""

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 212
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Lctk$i;->search_group:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->b:Landroid/widget/SearchView;

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->b:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 215
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 216
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 218
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->b:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 244
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 268
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 269
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 202
    :pswitch_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
