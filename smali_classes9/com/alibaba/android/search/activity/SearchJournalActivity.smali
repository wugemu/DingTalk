.class public Lcom/alibaba/android/search/activity/SearchJournalActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "SearchJournalActivity.java"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/SearchJournalActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchJournalActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 31
    .line 1179
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    sget v1, Lemt$e;->iv_water_mark:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)Ldcx;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_0

    .line 1181
    invoke-interface {v0}, Ldcx;->a()V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lemt$f;->activity_msg_list:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1111
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    if-eqz v1, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    .line 1117
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1120
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "cid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1127
    const-string/jumbo v3, "intent_key_show_fragment_title"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1128
    const-string/jumbo v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v3, "cid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v3, "intent_key_search_table"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string/jumbo v0, "intent_key_search_count"

    .line 1132
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_search_count"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1131
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    const-string/jumbo v0, "title"

    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v0, "is_search_journal"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1140
    sget v1, Lemt$e;->fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->h:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1141
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 1154
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/search/activity/SearchJournalActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity$2;-><init>(Lcom/alibaba/android/search/activity/SearchJournalActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 1155
    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 1153
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 98
    :cond_2
    return-void

    .line 1104
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->j:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_no_network_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_0

    .line 1070
    const-string/jumbo v2, "cid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->f:Ljava/lang/String;

    .line 1071
    const-string/jumbo v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->g:Ljava/lang/String;

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 51
    :goto_0
    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->finish()V

    .line 53
    const-string/jumbo v0, "SearchJournalActivity cid = null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1073
    goto :goto_0

    .line 1077
    :cond_1
    sget v0, Lemt$e;->fragment_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->k:Landroid/view/View;

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1080
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1083
    sget v0, Lemt$e;->network_error_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->i:Landroid/view/View;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->i:Landroid/view/View;

    sget v1, Lemt$e;->tv_network_error_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->j:Landroid/widget/TextView;

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/activity/SearchJournalActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/activity/SearchJournalActivity$1;-><init>(Lcom/alibaba/android/search/activity/SearchJournalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
