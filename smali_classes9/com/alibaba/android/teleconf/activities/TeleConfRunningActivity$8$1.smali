.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1033
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mini-btn Pressed after clk"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    if-nez p1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v2, Leuj$l;->dt_conference_notification_enter_warn:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "toast":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1038
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 1039
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1040
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$8;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 1042
    :cond_1
    return-void
.end method
