.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->onClick(Landroid/view/View;)V
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

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

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

    .line 1068
    check-cast p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;

    .line 2071
    const-string/jumbo v2, "UserBusinessProfileSubActivity"

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "getOrgMobile for orgId "

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2073
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 2075
    if-nez p1, :cond_1

    .line 2076
    const-string/jumbo v0, "UserBusinessProfileSubActivity"

    const-string/jumbo v2, "result is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2077
    :cond_0
    :goto_0
    return-void

    .line 2079
    :cond_1
    const-string/jumbo v2, "UserBusinessProfileSubActivity"

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "getOrgMobile mobile "

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v5, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2081
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->warnMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    .line 2083
    iget-object v2, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2084
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->q(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-wide v4, v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iput-boolean v1, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    .line 2086
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 2087
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    .line 2088
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 2090
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-boolean v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->e:Z

    if-eqz v2, :cond_4

    .line 2091
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v3, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v0, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    .line 2097
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->t(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/util/List;)V

    .line 2100
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-boolean v3, v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->f:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 2091
    goto :goto_1

    .line 2092
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->s(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->s(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2093
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->g:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->c:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

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

    .line 1110
    const-string/jumbo v0, "UserBusinessProfileSubActivity"

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

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-static {v0, p1, p2, p0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    .line 1113
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1106
    return-void
.end method
