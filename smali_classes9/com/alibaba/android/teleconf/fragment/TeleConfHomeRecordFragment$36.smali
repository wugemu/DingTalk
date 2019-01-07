.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iput-wide p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 457
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "clk send sms"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_invite_sendsms_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 463
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;)V

    .line 1726
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 1730
    if-eqz v0, :cond_0

    .line 1733
    new-instance v4, Leyc$8;

    invoke-direct {v4, v1, v3}, Leyc$8;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->sendInviteSms(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
