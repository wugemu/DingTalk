.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;
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
    .line 1796
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

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

    .line 1796
    .line 2799
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->dismissLoadingDialog()V

    .line 2803
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)Z

    .line 2804
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 2808
    sget v0, Lezg$l;->dt_mail_unbind_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2809
    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;)V

    .line 1796
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->dismissLoadingDialog()V

    .line 1822
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1814
    return-void
.end method
