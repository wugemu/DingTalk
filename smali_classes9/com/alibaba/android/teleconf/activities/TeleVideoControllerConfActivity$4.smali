.class final Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;
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
    .line 701
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 705
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 706
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Confirm retry join"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(ZZ)V

    .line 710
    :cond_0
    return-void
.end method
