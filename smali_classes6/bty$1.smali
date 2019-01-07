.class final Lbty$1;
.super Ljava/lang/Object;
.source "GuideUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lbty$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbty$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 94
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;

    .line 1097
    iget-object v0, p0, Lbty$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->b(Landroid/app/Activity;)V

    .line 1098
    if-eqz p1, :cond_2

    .line 1099
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    .line 1100
    if-nez v0, :cond_0

    .line 1101
    const-string/jumbo v0, ""

    .line 1103
    :cond_0
    iget-object v1, p0, Lbty$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1104
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lbty$1;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbty$1;->a:Landroid/app/Activity;

    sget v3, Lbtp$g;->dt_lv_permission_contact_admin_AT_AT:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lbty$1;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 1105
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->sure:I

    .line 1107
    invoke-virtual {v0, v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1110
    :cond_1
    :goto_0
    return-void

    .line 1111
    :cond_2
    const-string/jumbo v0, "getOrgMainAdminInfo result is null"

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lbty$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->b(Landroid/app/Activity;)V

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getOrgMainAdminInfo failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 118
    return-void
.end method
