.class final Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;
.super Ljava/lang/Object;
.source "TeleVideoControllerConfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 694
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 695
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Cancel retry"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c(Z)V

    .line 699
    :cond_0
    return-void
.end method
