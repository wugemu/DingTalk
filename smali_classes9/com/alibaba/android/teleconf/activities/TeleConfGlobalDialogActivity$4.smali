.class final Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;
.super Ljava/lang/Object;
.source "TeleConfGlobalDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 293
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Cancel negative btn"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->finish()V

    .line 295
    return-void
.end method
