.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->b:Z

    iput-boolean p4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->c:Z

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
    .line 1568
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 2571
    const-string/jumbo v0, "ManageStaffActivity"

    const-string/jumbo v1, "updateExistedEmployee suc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2572
    if-nez p1, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2574
    :goto_0
    return-void

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->b:Z

    iget-boolean v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;JZZ)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;->d:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1588
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string/jumbo v0, "ManageStaffActivity"

    const-string/jumbo v1, "updateExistedEmployee fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1590
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1583
    return-void
.end method
