.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1028
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on back btn Pressed"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "meeting_back_to_im"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;)V

    invoke-static {v0, v1}, Leyw;->a(Landroid/app/Activity;Lcpi$a;)V

    .line 1044
    return-void
.end method
