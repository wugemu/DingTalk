.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;
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

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput p3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1854
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1858
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->b:I

    if-nez v2, :cond_0

    .line 1860
    const-string/jumbo v1, "https://tms.dingtalk.com/market/dingtalk/sg.php?lwfrom=20150629170525773"

    .line 1865
    .local v1, "url":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    .line 1866
    .local v0, "desUrl":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    sget v3, Levh;->c:I

    invoke-virtual {v2, v3}, Levi;->a(I)V

    .line 1870
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$30;->c:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 1871
    return-void

    .line 1863
    .end local v0    # "desUrl":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "https://tms.dingtalk.com/market/dingtalk/qyrz.php?lwfrom=20150610185300868"

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method
