.class public Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectPositionActivity.java"

# interfaces
.implements Lfkr$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;,
        Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;

.field private c:Lfkr$a;

.field private d:Lcom/alibaba/android/user/model/PositionData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 218
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/user/model/PositionData;Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "positionData"    # Lcom/alibaba/android/user/model/PositionData;
    .param p2, "clickListener"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;

    .prologue
    const/4 v5, 0x0

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "editText":Landroid/widget/EditText;
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v3, p1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;

    invoke-direct {v4, v1, p1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$1;-><init>(Landroid/widget/EditText;Lcom/alibaba/android/user/model/PositionData;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 71
    sget v3, Lezg$l;->dt_contact_set_job_position_title_update:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 76
    :goto_0
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    .line 77
    .local v2, "filters":[Landroid/text/InputFilter;
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 78
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 79
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 80
    sget v3, Lezg$l;->cancel:I

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$2;

    invoke-direct {v4, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 88
    sget v3, Lezg$l;->sure:I

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;

    invoke-direct {v4, v1, p2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$3;-><init>(Landroid/widget/EditText;Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$a;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 101
    return-void

    .line 73
    .end local v2    # "filters":[Landroid/text/InputFilter;
    :cond_0
    sget v3, Lezg$l;->dt_contact_set_job_position_title_add:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->dismissLoadingDialog()V

    .line 181
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PositionData;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->d:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/PositionData;

    .line 150
    .local v0, "positionData":Lcom/alibaba/android/user/model/PositionData;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->d:Lcom/alibaba/android/user/model/PositionData;

    iget-object v2, v2, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/android/user/model/PositionData;->checked:Z

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->d:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v2, v2, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->d:Lcom/alibaba/android/user/model/PositionData;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v0    # "positionData":Lcom/alibaba/android/user/model/PositionData;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->a(Ljava/util/List;)V

    .line 161
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->showLoadingDialog()V

    .line 176
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 190
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v2, "result":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->a()Lcom/alibaba/android/user/model/PositionData;

    move-result-object v1

    .line 131
    .local v1, "positionData":Lcom/alibaba/android/user/model/PositionData;
    const-string/jumbo v3, "intent_key_selected_position"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "action_job_title_selected"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "intent_key_job_title_name"

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v4, "intent_key_job_title_code"

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 138
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->finish()V

    .line 139
    return-void

    .line 135
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 136
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    sget v1, Lezg$j;->layout_select_member_position:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_selected_position"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PositionData;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->d:Lcom/alibaba/android/user/model/PositionData;

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_industry_code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "industryCode":Ljava/lang/String;
    sget v1, Lezg$l;->dt_contact_job_position:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1121
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1122
    sget v1, Lezg$h;->position_list_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->a:Landroid/widget/ListView;

    .line 1123
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;

    .line 1124
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    new-instance v1, Lfks;

    invoke-direct {v1, p0, p0}, Lfks;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkr$b;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->c:Lfkr$a;

    invoke-interface {v1, v0}, Lfkr$a;->a(Ljava/lang/String;)V

    .line 113
    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lfkr$a;

    .line 1170
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;->c:Lfkr$a;

    .line 47
    return-void
.end method
