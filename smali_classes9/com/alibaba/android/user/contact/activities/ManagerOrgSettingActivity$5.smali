.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 476
    .line 1479
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->dismissLoadingDialog()V

    .line 1485
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    .line 476
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 495
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ManagerOrgSettingActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ManagerOrgSettingActivity cancelRemoveOrg error: code = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 496
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->dismissLoadingDialog()V

    .line 504
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 491
    return-void
.end method
