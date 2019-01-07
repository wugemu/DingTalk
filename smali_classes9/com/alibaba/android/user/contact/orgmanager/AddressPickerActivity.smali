.class public Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "AddressPickerActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

.field private e:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$a;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;
    .param p1, "x1"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->dismissLoadingDialog()V

    .line 179
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a(J)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->showLoadingDialog()V

    .line 174
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 188
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a()Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    move-result-object v0

    .line 72
    .local v0, "checkedAddress":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    if-eqz v2, :cond_0

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_selected_org_address_update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_selected_org_address"

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 79
    .end local v0    # "checkedAddress":Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lezg$j;->layout_list_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->setContentView(I)V

    .line 1089
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->f:Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 49
    :goto_0
    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->finish()V

    .line 56
    :goto_1
    return-void

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_org_address_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->g:J

    .line 1094
    const/4 v0, 0x1

    goto :goto_0

    .line 1098
    :cond_1
    sget v0, Lezg$l;->dt_contact_menu_add_org_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1103
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->a:Landroid/view/View;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1108
    sget v1, Lezg$l;->dt_contacts_menu_manage:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    new-instance v1, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    sget v0, Lezg$h;->tv_list_title_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->h:Landroid/widget/TextView;

    .line 1118
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_sub_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1120
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    :cond_3
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->b:Landroid/widget/ListView;

    .line 1124
    new-instance v0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->d:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;

    new-instance v1, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;)V

    .line 1200
    iput-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a;->a:Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity$a$a;

    .line 1141
    sget v0, Lezg$h;->ll_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->c:Landroid/view/View;

    .line 55
    new-instance v0, Lflh;

    invoke-direct {v0, p0, p0}, Lflh;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->e:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$a;

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    sget v2, Lezg$l;->dt_contacts_menu_manage:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 62
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 63
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->e:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$a;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$a;->a(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$a;

    .line 2168
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/AddressPickerActivity;->e:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$a;

    .line 33
    return-void
.end method
