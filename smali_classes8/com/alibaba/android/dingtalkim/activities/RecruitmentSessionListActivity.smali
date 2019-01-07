.class public Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "RecruitmentSessionListActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private b:I

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->d:I

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b()Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v1, Lctk$g;->layout_category_session_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_biz_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->c:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_recruitment_role"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b:I

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1028
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 60
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1094
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1095
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v2, Lctk$g;->fragment_recruitment_student_empty:I

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 1096
    const-wide/32 v2, 0x1ba4a51b

    .line 1101
    :goto_0
    cmp-long v1, v2, v4

    if-gtz v1, :cond_4

    .line 1102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->finish()V

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lctk$f;->root_view:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 4121
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4125
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4126
    invoke-static {}, Ldyq;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4130
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4133
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)V

    .line 4151
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 4152
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 68
    :cond_2
    return-void

    .line 1097
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1098
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v2, Lctk$g;->fragment_recruitment_hr_empty:I

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 1099
    const-wide/32 v2, 0x1ba4a51a

    goto :goto_0

    .line 1104
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 2110
    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->h:J

    .line 1106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;J)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    goto :goto_1

    .line 3071
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3072
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v2, Lctk$g;->fragment_recruitment_student_empty:I

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 3073
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 3102
    iput-boolean v6, v1, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->g:Z

    .line 3079
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    goto/16 :goto_1

    .line 3074
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3075
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v2, Lctk$g;->fragment_recruitment_hr_empty:I

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 3076
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 4098
    iput-boolean v6, v1, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->f:Z

    goto :goto_3

    .line 4127
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4128
    invoke-static {}, Ldyq;->a()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_9
    move-object v2, v0

    goto/16 :goto_2

    :cond_a
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 157
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v3, Lctk$i;->title_activity_settings:I

    invoke-interface {p1, v1, v4, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 159
    .local v0, "menuSetting":Landroid/view/MenuItem;
    sget v1, Lctk$e;->actbar_icon_emotion_settings:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 160
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    .end local v0    # "menuSetting":Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 4176
    :pswitch_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 4177
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/public_settings.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
