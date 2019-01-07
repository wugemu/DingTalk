.class final Lgmf$2;
.super Ljava/lang/Object;
.source "SpaceMenuCoFolderDeleteHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lgmf;


# direct methods
.method constructor <init>(Lgmf;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lgmf;

    .prologue
    .line 66
    iput-object p1, p0, Lgmf$2;->b:Lgmf;

    iput-object p2, p0, Lgmf$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lgmf$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 70
    iget-object v1, p0, Lgmf$2;->b:Lgmf;

    .line 1122
    iget-object v0, v1, Lgmf;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, v1, Lgmf;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, v1, Lgmf;->a:Landroid/content/Context;

    sget v4, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, v1, Lgmf;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1080
    :goto_0
    new-instance v0, Lgmf$3;

    invoke-direct {v0, v1}, Lgmf$3;-><init>(Lgmf;)V

    .line 1117
    const-class v2, Lcma;

    iget-object v3, v1, Lgmf;->b:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1118
    iget-object v1, v1, Lgmf;->d:Lgit;

    iget-object v1, v1, Lgit;->b:Ljava/lang/String;

    .line 1208
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lgop$16;

    invoke-direct {v3, v1, v0}, Lgop$16;-><init>(Ljava/lang/String;Lcma;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 71
    return-void

    .line 1125
    :cond_0
    iget-object v0, v1, Lgmf;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method
