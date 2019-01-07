.class public Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OutSidePositionEditActivity.java"


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    return p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->b:Landroid/view/View;

    sget v3, Lezg$h;->expand:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->c:Landroid/view/View;

    sget v3, Lezg$h;->expand:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_1

    :cond_2
    move v2, v1

    .line 68
    goto :goto_2

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lezg$j;->activity_outside_position_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->setContentView(I)V

    .line 35
    sget v0, Lezg$l;->dt_contact_department_outside_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->setTitle(I)V

    .line 1040
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "outside_position_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->e:Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    .line 1042
    sget v0, Lezg$h;->outside_position_option_sync_inner:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->b:Landroid/view/View;

    .line 1043
    sget v0, Lezg$h;->outside_position_option_use_custom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->c:Landroid/view/View;

    .line 1044
    sget v0, Lezg$h;->et_outside_position_option_custom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    .line 1045
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->b()V

    .line 1046
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 80
    const/4 v1, 0x1

    sget v2, Lezg$l;->finish:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "rawPositionName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    .line 92
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "is_sync_inner_position"

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a:Z

    if-nez v2, :cond_2

    .line 95
    const-string/jumbo v2, "outside_position_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->finish()V

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rawPositionName":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method
