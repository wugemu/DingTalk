.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1803
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 1804
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$26;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 1805
    return-void
.end method