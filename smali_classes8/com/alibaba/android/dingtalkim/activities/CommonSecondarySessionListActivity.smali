.class public Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "CommonSecondarySessionListActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private c:Ljava/lang/String;

.field private final d:I

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 40
    const-string/jumbo v0, "CommonSecondarySessionListActivity"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->a:Ljava/lang/String;

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->f:Ljava/lang/String;

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
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lctk$g;->layout_category_session_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->f:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Libb;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->e:J

    .line 54
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->e:J

    invoke-static {v0, v1}, Libb;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "entranceId is invalid,cid:"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "CommonSecondarySessionListActivity"

    aput-object v2, v1, v3

    const-string/jumbo v2, "entranceId is invalid,cid:"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->f:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->e:J

    .line 1110
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)V

    .line 1132
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-class v4, Lcma;

    invoke-static {v0, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 2028
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v1, Lctk$g;->fragment_common_entrance_empty:I

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->e:J

    .line 2110
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->h:J

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lctk$f;->root_view:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 3083
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)V

    .line 3104
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-class v2, Lcom/alibaba/wukong/Callback;

    .line 3105
    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->f:Ljava/lang/String;

    .line 3104
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 137
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v3, Lctk$i;->title_activity_settings:I

    invoke-interface {p1, v1, v4, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 138
    .local v0, "menuSetting":Landroid/view/MenuItem;
    sget v1, Lctk$e;->actbar_icon_emotion_settings:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
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
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 3154
    :pswitch_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 3155
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/public_settings.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
