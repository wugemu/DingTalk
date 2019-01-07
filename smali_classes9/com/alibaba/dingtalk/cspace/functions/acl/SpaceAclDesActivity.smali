.class public Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceAclDesActivity.java"


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 71
    const-string/jumbo v0, "SpaceAclDesActivity"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    .line 58
    .line 3292
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3306
    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnv;

    .line 3297
    if-eqz v0, :cond_2

    .line 4103
    iget-wide v2, v0, Lgnv;->b:J

    .line 3297
    const-wide/16 v4, 0x1389

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 3301
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4127
    iget-boolean v2, v0, Lgnv;->e:Z

    .line 3303
    if-eqz v2, :cond_3

    .line 3304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b:Landroid/view/View;

    invoke-static {v0, v6}, Lgpk;->b(Landroid/view/View;Z)V

    .line 3305
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 5095
    :cond_3
    iget-wide v2, v0, Lgnv;->a:J

    .line 3308
    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->h:J

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->g:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->h:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v4, "SpaceAclDesActivity"

    const-string/jumbo v5, "space_permission_subfolder_mainpage"

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    sget v2, Lfzs$g;->space_acl_des_layout:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->setContentView(I)V

    .line 79
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lfzs$h;->and_setting_rights:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    sget v2, Lfzs$f;->view_acl:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    .line 82
    sget v2, Lfzs$f;->rl_safe_mode:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b:Landroid/view/View;

    .line 83
    sget v2, Lfzs$f;->toggle_acl_safe_mode:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c:Landroid/widget/ToggleButton;

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->finish()V

    .line 220
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v2, "space_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->e:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, "space_category_current_folderId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->f:Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "space_org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->g:J

    .line 95
    const-string/jumbo v2, "intent_key_auth_flag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "authFlag":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;Ljava/lang/String;)V

    .line 1141
    iput-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

    .line 1143
    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

    new-instance v5, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$1;

    invoke-direct {v5, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)V

    new-instance v6, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$2;

    invoke-direct {v6, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)V

    new-instance v7, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3;

    invoke-direct {v7, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)V

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;->a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;)V

    .line 214
    const-string/jumbo v2, "0"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    .line 1266
    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->e:Landroid/view/View;

    invoke-static {v4, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 2223
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    const-string/jumbo v2, "modifyManager"

    invoke-static {v0, v2}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 2224
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b:Landroid/view/View;

    if-eqz v4, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 2226
    if-eqz v4, :cond_2

    .line 2230
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2349
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_3

    .line 2350
    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d:Landroid/content/BroadcastReceiver;

    .line 2378
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2379
    const-string/jumbo v3, "action_acl_member_change"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2380
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    .line 2224
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 324
    sget v1, Lfzs$h;->dt_cspace_right_description_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 325
    .local v0, "aclDesMenu":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 315
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 317
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 318
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 320
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 333
    :pswitch_0
    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/spaceright?wh_ttid=phone"

    .line 335
    .local v2, "url":Ljava/lang/String;
    invoke-static {p0}, Lgpr;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/public_area_permissions?wh_ttid=phone"

    .line 339
    :cond_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
