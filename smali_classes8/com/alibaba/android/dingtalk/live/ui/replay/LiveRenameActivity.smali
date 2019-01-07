.class public Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveRenameActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->e:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    .line 3139
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_action_live_title_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "intent_extra_live_uuid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->b:Ljava/lang/String;

    .line 3140
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_title"

    .line 3141
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3142
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 29
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lbtp$f;->activity_live_rename:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->setContentView(I)V

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lbtp$g;->dt_common_rename:I

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1065
    :cond_0
    sget v0, Lbtp$e;->et_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->d:Landroid/widget/EditText;

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->d:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1082
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->e:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lbyf;->a(Landroid/view/MenuItem;Z)V

    .line 2051
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "cid"

    invoke-static {v0, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->a:Ljava/lang/String;

    .line 2052
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_extra_live_uuid"

    invoke-static {v0, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->b:Ljava/lang/String;

    .line 2053
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_extra_live_title"

    invoke-static {v0, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->c:Ljava/lang/String;

    .line 2054
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2058
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 45
    :goto_1
    if-nez v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->finish()V

    .line 48
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1082
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2058
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 87
    sget v0, Lbtp$g;->and_finish:I

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->e:Landroid/view/MenuItem;

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->e:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 89
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2104
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2105
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->c:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->finish()V

    goto :goto_0

    .line 2112
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->showLoadingDialog()V

    .line 2113
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;

    invoke-direct {v0, p0, v7}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;Ljava/lang/String;)V

    .line 2134
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 2135
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->b:Ljava/lang/String;

    .line 2491
    new-instance v0, Lbxe$28;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v7}, Lbxe$28;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0}, Lbxe$28;->start()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
