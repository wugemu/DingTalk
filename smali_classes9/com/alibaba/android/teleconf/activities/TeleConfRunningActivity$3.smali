.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;
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
    .line 942
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 946
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    new-instance v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_MUTEALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 950
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v0

    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 951
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 952
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    .line 954
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v0

    const-string/jumbo v1, "unmute"

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 955
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v0

    invoke-virtual {v0, v4}, Lewk;->a(Z)V

    .line 956
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_mute_everyone:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 957
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 958
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$h;->conf_panel_mute_bg_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 969
    :goto_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Mute all "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->F(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Levi;->a(Z)V

    .line 971
    return-void

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    .line 961
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v0

    const-string/jumbo v1, "mute"

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 962
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lewk;

    move-result-object v0

    invoke-virtual {v0, v5}, Lewk;->a(Z)V

    .line 963
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_cancel_mute:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 964
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 965
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$h;->conf_panel_unmute_bg_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 967
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_meeting_muteall_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
