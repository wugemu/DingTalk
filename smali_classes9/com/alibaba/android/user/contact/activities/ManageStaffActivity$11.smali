.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1268
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2271
    const-string/jumbo v0, "addEmployee succeed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2273
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->a:Z

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V

    .line 1268
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->G(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Landroid/view/MenuItem;Z)V

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1284
    const-string/jumbo v0, "12051"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->c:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;->a:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V

    .line 1289
    :goto_0
    const-string/jumbo v0, "addEmployee failed,code=%s,reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1290
    return-void

    .line 1287
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1278
    return-void
.end method
