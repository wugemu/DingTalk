.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/model/OrgEmpMobileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    .prologue
    .line 3504
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3504
    check-cast p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;

    .line 4507
    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "getOrgMobile for orgId "

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4509
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 4511
    if-nez p1, :cond_1

    .line 4512
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "result is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4513
    :cond_0
    :goto_0
    return-void

    .line 4515
    :cond_1
    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "getOrgMobile mobile "

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->g(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4517
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->warnMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->h(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)V

    .line 4519
    iget-object v2, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4520
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->H(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-wide v4, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4521
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iput-boolean v1, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    .line 4522
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 4523
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    .line 4524
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 4526
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-boolean v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->e:Z

    if-eqz v2, :cond_4

    .line 4527
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->I(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v3, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v0, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    .line 4531
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->J(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lfvk;

    move-result-object v0

    invoke-interface {v0}, Lfvk;->c()V

    .line 4534
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-boolean v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->f:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 4527
    goto :goto_1

    .line 4528
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->J(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lfvk;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->J(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lfvk;

    move-result-object v2

    invoke-interface {v2}, Lfvk;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4529
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->g:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->I(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v3, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-nez v3, :cond_5

    :goto_3
    iput-boolean v0, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3544
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "userProfile makeCall getOrgEmpMobileV2 error and errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " errorMsg = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3546
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-static {v0, p1, p2, p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    .line 3547
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3540
    return-void
.end method
