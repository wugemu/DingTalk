.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$1;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 695
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "meeting_close_current_meeting"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 696
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 697
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lewk;->b(ZZ)V

    .line 698
    return-void
.end method
