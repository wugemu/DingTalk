.class public Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

.field private c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:J

.field private j:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->i:J

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->k:Ljava/util/ArrayList;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->n:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    .prologue
    .line 85
    .line 6256
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manage_org.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$4;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 85
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->i:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x2

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 523
    .local v3, "id":I
    sget v6, Lezg$h;->tv_org_admin:I

    if-ne v3, v6, :cond_1

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 525
    .local v4, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, p0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 589
    .end local v4    # "uid":J
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    sget v6, Lezg$h;->tv_ding_index:I

    if-ne v3, v6, :cond_2

    .line 527
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    iget-wide v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->i:J

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "https://h5.dingtalk.com/ding-index/index.html?dd_nav_bgcolor=FF47BAFF#/index?corpId="

    aput-object v8, v7, v10

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    .end local v1    # "corpId":Ljava/lang/String;
    :cond_2
    sget v6, Lezg$h;->tv_dissolution_team:I

    if-ne v3, v6, :cond_0

    .line 530
    const-string/jumbo v6, "userprofile_exit_org_click"

    invoke-static {v6}, Lfxo;->a(Ljava/lang/String;)V

    .line 531
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v6, Lezg$l;->dt_user_organization_profile_exit_ensure_message:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 533
    sget v6, Lezg$l;->cancel:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$9;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$9;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 539
    sget v6, Lezg$l;->dt_user_organization_quit:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$10;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 585
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2, v8}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 586
    invoke-virtual {v2, v8}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->ui_common_alert_bg_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1161
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "employee_info"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_1

    move v0, v3

    .line 106
    :goto_0
    if-nez v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->finish()V

    .line 130
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1162
    goto :goto_0

    .line 111
    :cond_2
    sget v0, Lezg$j;->activity_my_organization_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->setContentView(I)V

    .line 113
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "org_ding_index"

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->j:Z

    .line 1166
    sget v0, Lezg$l;->dt_contact_my_org_info_page_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->setTitle(I)V

    .line 1168
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v0, v4}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1170
    sget v0, Lezg$h;->org_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_3
    sget v0, Lezg$h;->tv_org_display_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    sget v0, Lezg$h;->tv_manage_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canManage()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    new-instance v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    sget v0, Lezg$h;->tv_privilege_level:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->e:Landroid/widget/TextView;

    .line 1183
    sget v0, Lezg$l;->dt_contact_org_profile_level_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1185
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1187
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    sget v0, Lezg$h;->tv_auth_level:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    .line 1189
    sget v0, Lezg$h;->tv_ding_index:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->f:Landroid/widget/TextView;

    .line 1190
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->j:Z

    if-eqz v0, :cond_c

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    sget v0, Lezg$h;->tv_org_admin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->g:Landroid/widget/TextView;

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn;->g()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1201
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 1202
    new-instance v5, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-direct {v5}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    .line 1203
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    .line 2115
    iput-object v5, v6, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a:Ljava/util/Map;

    .line 1207
    sget v5, Lezg$h;->org_info_fragment:I

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1208
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1209
    invoke-virtual {v0}, Lcn;->b()Z

    .line 2334
    const-class v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2411
    new-instance v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$6;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2419
    const-class v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1213
    :cond_5
    sget v0, Lezg$h;->tv_dissolution_team:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->h:Landroid/widget/TextView;

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->m:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canManage()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_4
    invoke-static {v4, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 3270
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    .line 3271
    :goto_5
    if-ne v0, v3, :cond_f

    .line 3272
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$l;->dt_orgnization_auth_level_senior:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3273
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$g;->bg_org_profile_auth_level_advanced:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3287
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_6

    .line 3292
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 3320
    :goto_7
    if-eqz v0, :cond_12

    .line 3328
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3329
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3330
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4221
    :cond_6
    :goto_8
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v6, 0x5209

    cmp-long v0, v4, v6

    if-nez v0, :cond_13

    .line 4222
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->a(I)V

    .line 4225
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->h:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 121
    :goto_9
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_7

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->i:J

    .line 124
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->j:Z

    if-eqz v0, :cond_8

    .line 125
    iget-wide v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->i:J

    .line 4598
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_8

    .line 4601
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    const-class v6, Lcma;

    invoke-interface {v0, v2, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4639
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v2

    invoke-interface {v2, v0, v4, v5}, Lezx;->a(Lcma;J)V

    .line 5500
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_9

    .line 5503
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5504
    const-string/jumbo v2, "com.workapp.org_employee_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5505
    new-instance v2, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$8;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    .line 5517
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6133
    :cond_9
    invoke-static {}, Lflf;->a()Lflf;

    move-result-object v0

    invoke-virtual {v0}, Lflf;->b()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    move-result-object v0

    .line 6134
    if-eqz v0, :cond_0

    .line 6137
    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showAdminInOrgInfo:I

    if-nez v0, :cond_a

    .line 6141
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 6142
    if-eqz v0, :cond_14

    .line 6145
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->i:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_14

    move v0, v3

    .line 6137
    :goto_a
    if-eqz v0, :cond_a

    move v1, v3

    :cond_a
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->n:Z

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 1174
    goto/16 :goto_2

    .line 1193
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_d
    move v0, v1

    .line 1217
    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 3270
    goto/16 :goto_5

    .line 3274
    :cond_f
    if-ne v0, v11, :cond_10

    .line 3275
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$l;->dt_orgnization_auth_level_middle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$g;->bg_org_profile_auth_level_middle:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 3277
    :cond_10
    const/4 v4, 0x3

    if-ne v0, v4, :cond_11

    .line 3278
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3279
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$g;->bg_org_profile_auth_level_basic:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 3281
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3282
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d:Landroid/widget/TextView;

    sget v4, Lezg$g;->bg_org_profile_auth_level_no_auth:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 3294
    :pswitch_0
    sget v0, Lezg$g;->icon_org_profile_level_v1:I

    goto/16 :goto_7

    .line 3298
    :pswitch_1
    sget v0, Lezg$g;->icon_org_profile_level_v2:I

    goto/16 :goto_7

    .line 3302
    :pswitch_2
    sget v0, Lezg$g;->icon_org_profile_level_v3:I

    goto/16 :goto_7

    .line 3306
    :pswitch_3
    sget v0, Lezg$g;->icon_org_profile_level_v4:I

    goto/16 :goto_7

    .line 3310
    :pswitch_4
    sget v0, Lezg$g;->icon_org_profile_level_v5:I

    goto/16 :goto_7

    .line 3314
    :pswitch_5
    sget v0, Lezg$g;->icon_org_profile_level_v6:I

    goto/16 :goto_7

    .line 3323
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 4229
    :cond_13
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v2, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4252
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-interface {v2, v4, v5, v0}, Lezt;->f(JLcma;)V

    goto/16 :goto_9

    :cond_14
    move v0, v1

    .line 6148
    goto/16 :goto_a

    .line 3292
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 492
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->l:Landroid/content/BroadcastReceiver;

    .line 495
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 496
    return-void
.end method
