.class public Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ConversationCreateGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;,
        Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$TestLogic;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->a:Landroid/view/View$OnClickListener;

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    .prologue
    .line 30
    .line 1106
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_create_egroupchat_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1113
    const-string/jumbo v1, "title"

    sget v2, Lctk$i;->create_normal_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string/jumbo v1, "count_limit_tips"

    sget v2, Lctk$i;->create_conversation_choose_limit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    const-string/jumbo v1, "choose_people_from_contact_logic"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$TestLogic;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$TestLogic;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1116
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    .line 2079
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_create_groupchat_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2083
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2084
    const-string/jumbo v1, "title"

    sget v2, Lctk$i;->create_normal_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string/jumbo v1, "choose_people_action"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2086
    const-string/jumbo v1, "count_limit_tips"

    sget v2, Lctk$i;->create_conversation_choose_limit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2087
    const-string/jumbo v1, "show_header_existed_group"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2088
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2089
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    .prologue
    .line 30
    .line 2093
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_create_bathhouse_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2096
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2097
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2098
    const-string/jumbo v1, "title"

    sget v2, Lctk$i;->create_burn_chat_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string/jumbo v1, "hide_org_external"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2100
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;-><init>()V

    .line 2101
    const-string/jumbo v2, "choose_people_from_contact_logic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2102
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v2, Lctk$g;->im_conversation_create_guide:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->setContentView(I)V

    .line 34
    sget v2, Lctk$f;->create_enterprise:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "enterpriseButton":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v2, Lctk$f;->create_normal:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v2, Lctk$f;->create_burn_chat:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "burnChat":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "hide_burn_chat_enter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 42
    sget v2, Lctk$f;->create_burn_chat_diver:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method
