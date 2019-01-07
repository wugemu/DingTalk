.class public Lcom/alibaba/android/search/activity/MsgListActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "MsgListActivity.java"


# instance fields
.field private f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

.field private g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

.field private h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/MsgListActivity;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MsgListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/MsgListActivity;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MsgListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/MsgListActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MsgListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 56
    .line 3196
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    sget v1, Lemt$e;->iv_water_mark:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/MsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)Ldcx;

    move-result-object v0

    .line 3197
    if-eqz v0, :cond_0

    .line 3198
    invoke-interface {v0}, Ldcx;->a()V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/MsgListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MsgListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/activity/MsgListActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->hasSearchCondition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2126
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2127
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 2128
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2130
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    if-eqz v1, :cond_1

    .line 2131
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    .line 2133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2136
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    .line 2139
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_table"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2140
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "cid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2143
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setCids(Ljava/util/List;)V

    .line 2146
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2147
    const-string/jumbo v3, "intent_key_show_fragment_title"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2148
    const-string/jumbo v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string/jumbo v3, "cid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string/jumbo v3, "intent_key_search_table"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-string/jumbo v0, "intent_key_search_narrow"

    iget-object v3, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2152
    const-string/jumbo v0, "intent_key_search_count"

    .line 2153
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_search_count"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2152
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2154
    const-string/jumbo v0, "title"

    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2157
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2158
    sget v1, Lemt$e;->fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->f:Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2159
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2170
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 2171
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/search/activity/MsgListActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/search/activity/MsgListActivity$2;-><init>(Lcom/alibaba/android/search/activity/MsgListActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 2172
    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 2170
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 259
    :cond_3
    :goto_0
    return-void

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 263
    sget v0, Lemt$f;->activity_msg_list:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 268
    sget v0, Lemt$g;->dt_seach_hint_global_msg:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 3107
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/activity/MsgListActivity;->c(Ljava/lang/String;)V

    .line 276
    return-void

    .line 3110
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->l:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_no_network_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3111
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1081
    sget v0, Lemt$e;->fragment_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->j:Landroid/view/View;

    .line 1082
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1083
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    .line 1089
    :goto_0
    sget v0, Lemt$e;->ll_search_filter_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->i:Landroid/widget/LinearLayout;

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-eqz v0, :cond_0

    .line 1091
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1092
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    :cond_0
    sget v0, Lemt$e;->network_error_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->k:Landroid/view/View;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->k:Landroid/view/View;

    sget v1, Lemt$e;->tv_network_error_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->l:Landroid/widget/TextView;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->k:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/activity/MsgListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/activity/MsgListActivity$1;-><init>(Lcom/alibaba/android/search/activity/MsgListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_narrow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->g:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1122
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->a:Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    new-instance v1, Lcom/alibaba/android/search/activity/MsgListActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/activity/MsgListActivity$3;-><init>(Lcom/alibaba/android/search/activity/MsgListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setCallback(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;)V

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    .line 1245
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 1246
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "cid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1247
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1248
    const-string/jumbo v2, "onversationMembersFragment"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1249
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->o(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2053
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1240
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->h:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setShowFilters(I)V

    .line 77
    :cond_1
    return-void

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1086
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 281
    .local v0, "b":Z
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/MsgListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/alibaba/android/search/activity/MsgListActivity;->b:Landroid/widget/SearchView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lemt$g;->search_box_hint:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/search/activity/MsgListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lemt$g;->dt_search_message_detail_tips_AT:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 285
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/search/activity/MsgListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 284
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return v0
.end method
