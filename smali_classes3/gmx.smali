.class public final Lgmx;
.super Lgly;
.source "SpaceMenuLinkShareDeleteHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 34
    if-eqz p2, :cond_0

    iget-object v1, p2, Lgmb;->p:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lgmb;->r:Lgmb$a;

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v1

    invoke-virtual {v1}, Lgez;->a()V

    .line 39
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v1

    iget-object v2, p2, Lgmb;->p:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1, v2}, Lgez;->a(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    .line 41
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->dt_space_link_share_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->sure:I

    new-instance v3, Lgmx$2;

    invoke-direct {v3, p0, p2}, Lgmx$2;-><init>(Lgmx;Lgmb;)V

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lgmx$1;

    invoke-direct {v3, p0}, Lgmx$1;-><init>(Lgmx;)V

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
