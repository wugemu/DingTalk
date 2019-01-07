.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceShareRenameActivity.java"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/Button;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 134
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 2150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.share.updatetitle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2151
    const-string/jumbo v1, "conv_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2152
    const-string/jumbo v1, "space_share_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2153
    const-string/jumbo v1, "space_id"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2154
    const-string/jumbo v1, "space_org_id"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2155
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 31
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 31
    .line 1112
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1131
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->a()Ljava/lang/String;

    move-result-object v3

    .line 1585
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    .line 1586
    const/4 v4, 0x0

    new-instance v5, Lgop$5;

    invoke-direct {v5, v0}, Lgop$5;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->updateTitle(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Liyv;)V

    .line 31
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lfzs$g;->cspace_create_folder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->setContentView(I)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->space_share_modify_name_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->d:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->e:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->f:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->g:J

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->finish()V

    .line 85
    :goto_0
    return-void

    .line 61
    :cond_2
    sget v0, Lfzs$f;->edt_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 93
    const/4 v2, 0x1

    sget v3, Lfzs$h;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 94
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->actbar_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    sget v2, Lfzs$f;->btn_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->b:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->b:Landroid/widget/Button;

    sget v3, Lfzs$h;->sure:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->b:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->b:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 106
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method
