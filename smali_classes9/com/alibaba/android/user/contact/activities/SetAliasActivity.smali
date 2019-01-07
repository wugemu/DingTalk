.class public Lcom/alibaba/android/user/contact/activities/SetAliasActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SetAliasActivity.java"


# instance fields
.field private final a:I

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private c:Landroid/widget/TextView;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SetAliasActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SetAliasActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SetAliasActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SetAliasActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SetAliasActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SetAliasActivity;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/SetAliasActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SetAliasActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->finish()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lezg$j;->activity_set_alias:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->setContentView(I)V

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_0

    .line 1053
    const-string/jumbo v1, "user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->d:J

    .line 1054
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->e:Ljava/lang/String;

    .line 1055
    const-string/jumbo v1, "local_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->f:Ljava/lang/String;

    .line 1061
    :cond_0
    sget v0, Lezg$h;->et_alias:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1062
    sget v0, Lezg$h;->tv_local_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->c:Landroid/widget/TextView;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->set_alias:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->e:Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->set_alias_hint:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->f:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    return-void

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->actbar_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "actionView":Landroid/view/View;
    sget v3, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    .local v2, "saveButton":Landroid/widget/Button;
    sget v3, Lezg$l;->save:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 91
    new-instance v3, Lcom/alibaba/android/user/contact/activities/SetAliasActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/SetAliasActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const/4 v3, 0x1

    sget v4, Lezg$l;->save:I

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 127
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 128
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 129
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SetAliasActivity;->onBackPressed()V

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
