.class public Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectRoleScopeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "chooseType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 60
    iput p1, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->d:I

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 84
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v1, Lezg$g;->ding_all_confirmed_icon:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v1, Lezg$g;->ding_all_confirmed_icon:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v1, Lezg$g;->ding_all_confirmed_icon:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 35
    .local v0, "id":I
    const/4 v2, -0x1

    .line 36
    .local v2, "value":I
    sget v3, Lezg$h;->cell_all_dept:I

    if-ne v0, v3, :cond_2

    .line 37
    const/4 v2, 0x1

    .line 43
    :cond_0
    :goto_0
    iget v3, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->d:I

    if-eq v3, v2, :cond_1

    .line 44
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a(I)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "intent_key_choosen_type"

    iget v4, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->d:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->finish()V

    .line 50
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 38
    :cond_2
    sget v3, Lezg$h;->cell_current_dept:I

    if-ne v0, v3, :cond_3

    .line 39
    const/4 v2, 0x2

    goto :goto_0

    .line 40
    :cond_3
    sget v3, Lezg$h;->cell_choose_dept:I

    if-ne v0, v3, :cond_0

    .line 41
    const/4 v2, 0x3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lezg$j;->activity_select_role_scope:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->setContentView(I)V

    .line 24
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_contact_subManager_scope:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_choosen_type"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->d:I

    .line 28
    iget v1, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->d:I

    .line 1053
    sget v0, Lezg$h;->cell_all_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1054
    sget v0, Lezg$h;->cell_current_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1055
    sget v0, Lezg$h;->cell_choose_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1056
    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;->a(I)V

    .line 29
    return-void
.end method
