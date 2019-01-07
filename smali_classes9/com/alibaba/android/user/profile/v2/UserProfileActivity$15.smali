.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1624
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    if-nez v0, :cond_0

    .line 1625
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "userInfoItemObject == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1702
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    sget v5, Lezg$l;->processing:I

    invoke-virtual {v3, v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v12

    .line 1631
    .local v12, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Z)Z

    .line 1632
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->F(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15$1;

    invoke-direct {v1, p0, v12}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1645
    new-instance v11, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15$2;

    invoke-direct {v11, p0, v12, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Landroid/view/View;)V

    .line 1697
    .local v11, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v11, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    check-cast v11, Lcma;

    .line 1698
    .restart local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-wide v6, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v8

    move v10, v4

    invoke-interface/range {v5 .. v11}, Lezt;->b(JJILcma;)V

    goto :goto_0

    .line 1700
    .end local v11    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgEmpMobileObject;>;"
    .end local v12    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$15;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/view/View;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    goto :goto_0
.end method
