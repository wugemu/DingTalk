.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 408
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    sget v2, Leuj$l;->dt_conference_dingtalkcall_shortcut_adding_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->sure:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;)V

    .line 410
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;)V

    .line 425
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 432
    return-void
.end method
