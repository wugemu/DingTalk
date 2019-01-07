.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1835
    .line 2838
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2841
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->dismissLoadingDialog()V

    .line 2842
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)Z

    .line 2843
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 2847
    sget v0, Lezg$l;->dt_mail_delete_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2848
    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;)V

    .line 1835
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->dismissLoadingDialog()V

    .line 1861
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1853
    return-void
.end method
