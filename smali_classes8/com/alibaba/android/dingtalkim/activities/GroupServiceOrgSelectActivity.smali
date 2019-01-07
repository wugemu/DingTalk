.class public Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;
.super Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;
.source "GroupServiceOrgSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;Ljava/lang/String;J)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 23
    .line 2050
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->showLoadingDialog()V

    .line 2051
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;Ljava/lang/String;J)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, p1, p2, p3, v0}, Ldxx;->c(Ljava/lang/String;JLcma;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget v0, Lctk$i;->dt_im_select_enterprise_for_service_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 6
    .param p1, "orgIdNameObject"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 26
    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->c:Ljava/lang/String;

    .line 27
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lctk$i;->dt_upgrade_to_service_group_from_normal:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;)V

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupServiceOrgSelectActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 41
    :cond_0
    return-void
.end method
