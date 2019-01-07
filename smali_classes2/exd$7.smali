.class final Lexd$7;
.super Ljava/lang/Object;
.source "CallApmtConfRecordPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lexd;


# direct methods
.method constructor <init>(Lexd;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lexd;

    .prologue
    .line 507
    iput-object p1, p0, Lexd$7;->d:Lexd;

    iput-object p2, p0, Lexd$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lexd$7;->b:Ljava/util/List;

    iput-boolean p4, p0, Lexd$7;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 510
    iget-object v0, p0, Lexd$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 513
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_apmtconf_no_privilege_alert_video_start"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lexd$7;->d:Lexd;

    iget-object v1, p0, Lexd$7;->b:Ljava/util/List;

    iget-boolean v2, p0, Lexd$7;->c:Z

    invoke-static {v0, v1, v2}, Lexd;->a(Lexd;Ljava/util/List;Z)V

    .line 516
    return-void
.end method
