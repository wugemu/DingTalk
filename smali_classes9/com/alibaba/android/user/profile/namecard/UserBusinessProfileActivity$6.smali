.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 1357
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    if-nez v1, :cond_0

    .line 1358
    const-string/jumbo v1, "UserBusinessProfileActivity"

    const-string/jumbo v2, "userInfoItemObject == null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    :goto_0
    return-void

    .line 1362
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v1, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-eqz v1, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->o(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Lfve;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v4, Lezg$l;->processing:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2257
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2258
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2259
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2260
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setIndeterminate(Z)V

    .line 2261
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 2262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1364
    .local v0, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Z)Z

    .line 1365
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->y(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1378
    new-instance v7, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6$2;

    invoke-direct {v7, p0, v0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6$2;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Landroid/view/View;)V

    .line 1430
    .local v7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v7, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    check-cast v7, Lcma;

    .line 1431
    .restart local v7    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->h(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)J

    move-result-wide v4

    invoke-interface/range {v1 .. v7}, Lezt;->b(JJILcma;)V

    goto :goto_0

    .line 1433
    .end local v0    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .end local v7    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Landroid/view/View;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    goto :goto_0
.end method
