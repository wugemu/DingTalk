.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;->b:Z

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
    .line 1995
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_teleconf_no_privilege_alert_video_start"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1998
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$36;->b:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V

    .line 2000
    return-void
.end method
