.class final Lexe$3;
.super Ljava/lang/Object;
.source "CallApmtControlPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Leva;

.field final synthetic c:Z

.field final synthetic d:Lexe;


# direct methods
.method constructor <init>(Lexe;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Leva;Z)V
    .locals 0
    .param p1, "this$0"    # Lexe;

    .prologue
    .line 176
    iput-object p1, p0, Lexe$3;->d:Lexe;

    iput-object p2, p0, Lexe$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lexe$3;->b:Leva;

    iput-boolean p4, p0, Lexe$3;->c:Z

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
    .line 179
    iget-object v0, p0, Lexe$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_apmtconf_no_privilege_alert_video_start"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lexe$3;->d:Lexe;

    iget-object v1, p0, Lexe$3;->b:Leva;

    iget-boolean v2, p0, Lexe$3;->c:Z

    invoke-static {v0, v1, v2}, Lexe;->a(Lexe;Leva;Z)V

    .line 185
    return-void
.end method
