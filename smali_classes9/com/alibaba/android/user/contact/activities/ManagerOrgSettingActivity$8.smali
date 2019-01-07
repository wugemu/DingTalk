.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(ILjava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iput p2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->b:Ljava/lang/String;

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
    .line 539
    check-cast p1, Ljava/lang/Boolean;

    .line 1542
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->dismissLoadingDialog()V

    .line 1547
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    const-string/jumbo v0, "org_management_more_dismiss_passwordok_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1549
    const-string/jumbo v0, "org_manage_dismiss_confirm"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->a:I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    sget v2, Lezg$l;->and_redpackets_pwd_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 564
    const-string/jumbo v0, "ManagerOrgSettingActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->dismissLoadingDialog()V

    .line 570
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;->c:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 560
    return-void
.end method
