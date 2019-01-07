.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 3429
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-wide p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->a:J

    iput-object p4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iput-object p6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->d:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->e:Z

    iput-boolean p8, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcma;
    .param p4, "x4"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 3429
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->a(Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p4, "progressDialog"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgEmpMobileObject;",
            ">;",
            "Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3432
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    if-nez p3, :cond_1

    .line 3433
    if-eqz p4, :cond_0

    .line 3434
    invoke-virtual {p4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 3436
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    :goto_0
    return-void

    .line 3440
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    .line 3442
    .local v6, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_2

    iget-wide v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 3443
    :cond_2
    if-eqz p4, :cond_3

    .line 3444
    invoke-virtual {p4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 3446
    :cond_3
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3450
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    new-instance v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v7, v8, v9, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(JLcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 3479
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-eqz v0, :cond_1

    .line 3480
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v4, Lezg$l;->processing:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v12

    .line 3482
    .local v12, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    new-instance v11, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39$2;

    invoke-direct {v11, p0, v12}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39$2;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    .line 3529
    .local v11, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v11, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    check-cast v11, Lcma;

    .line 3531
    .restart local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3533
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v11, v12}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->a(Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    .line 3541
    .end local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    .end local v12    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    :goto_0
    return-void

    .line 3537
    .restart local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    .restart local v12    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v5

    iget-wide v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->a:J

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    move v10, v3

    invoke-interface/range {v5 .. v11}, Lezt;->b(JJILcma;)V

    goto :goto_0

    .line 3539
    .end local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    .end local v12    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$39;->f:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Z)V

    goto :goto_0
.end method
