.class public Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ContactMenuActivity.java"


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    .prologue
    .line 31
    .line 1045
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1046
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    if-eqz v0, :cond_0

    .line 1047
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    if-nez v0, :cond_2

    .line 1052
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1053
    if-eqz v0, :cond_2

    .line 1054
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1055
    if-eqz v0, :cond_1

    .line 1058
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->uid:J

    .line 1059
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1060
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->c:Ljava/lang/String;

    .line 1061
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->d:J

    .line 1062
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1063
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->e:J

    .line 1064
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->f:Z

    .line 1066
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v1, Lezg$j;->act_contact_menu:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->setContentView(I)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$l;->contact_menu_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 78
    sget v1, Lezg$h;->tv_operate_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->b:Landroid/widget/TextView;

    .line 79
    const-string/jumbo v1, "showOperateOrgRedDot"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 80
    .local v0, "showOperateDot":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 81
    sget v1, Lezg$h;->tv_new:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_0
    const-class v1, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;I)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_header_existed_group"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->a:Z

    .line 130
    :cond_1
    sget v1, Lezg$h;->rl_create_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget v1, Lezg$h;->rl_add_friend:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ContactMenuActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/ContactMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method
