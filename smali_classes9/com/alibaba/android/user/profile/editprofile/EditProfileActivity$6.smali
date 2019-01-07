.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->b:Z

    iput-object p4, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 617
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1634
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->b:Z

    if-eqz v0, :cond_2

    .line 1636
    const-string/jumbo v0, "registerIdentity"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;I)V

    .line 1641
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1645
    const-string/jumbo v3, "bh_register_org_info"

    const-string/jumbo v6, "is_empty=%d,is_suggestion=%d,org_id=%d"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .line 1647
    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .line 1648
    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;

    move-result-object v0

    invoke-virtual {v0}, Lfuz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .line 1649
    invoke-static {v4}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;

    move-result-object v4

    .line 2158
    iget-wide v4, v4, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 1649
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    .line 2315
    const/4 v0, 0x0

    invoke-static {v0, v3, v6, v7}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->o(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    .line 1653
    if-eqz p1, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nickPinyin:Ljava/lang/String;

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    .line 1658
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/wukong/auth/AuthService;->setNickname(Ljava/lang/String;)V

    .line 1659
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v0, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1660
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6$1;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1667
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.PROFILE_NICK_NAME_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1669
    const-string/jumbo v3, "newNick"

    iget-object v4, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1672
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 2483
    iput-boolean v1, v0, Lccr;->b:Z

    .line 1674
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->n(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    .line 1676
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->p(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1677
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "edit profile go to confirm profile"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1678
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/confirm_org_profile.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    :cond_1
    :goto_4
    return-void

    .line 1638
    :cond_2
    const-string/jumbo v0, "registerIdentity"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1647
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 1648
    goto/16 :goto_2

    .line 1649
    :cond_5
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    .line 1680
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 625
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->n(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    .line 626
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    .line 627
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 629
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "update profile exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 621
    return-void
.end method
