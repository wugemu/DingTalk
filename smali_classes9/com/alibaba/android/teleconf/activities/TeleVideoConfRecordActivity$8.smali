.class final Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;
.super Ljava/lang/Object;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

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
    .line 261
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$8;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-interface {v0, v1}, Lexa$a;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    .line 266
    :cond_0
    return-void
.end method
