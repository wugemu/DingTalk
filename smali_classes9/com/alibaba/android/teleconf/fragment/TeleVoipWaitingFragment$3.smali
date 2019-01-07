.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/wukong/openav/external/IAVSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 706
    check-cast p1, Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 1709
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/wukong/openav/external/IAVSession;)Lcom/alibaba/wukong/openav/external/IAVSession;

    .line 1710
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1711
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v2

    .line 1712
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v3, :cond_4

    .line 1715
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)V

    .line 1718
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v3, :cond_2

    .line 1720
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->y(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1722
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v1

    invoke-interface {v1}, Liee;->h()V

    .line 1724
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Turn off speaker when voip calling"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;Z)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1781
    :cond_1
    :goto_1
    return-void

    .line 1726
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/openav/external/IAVSession;->e()Ljava/lang/String;

    move-result-object v0

    .line 1727
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1728
    const-string/jumbo v3, "callId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const/4 v3, 0x0

    const-string/jumbo v4, "phone_voip_invite_recv_page"

    invoke-interface {v0, v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1731
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    invoke-interface {v0}, Liee;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1732
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    invoke-interface {v0}, Liee;->i()V

    .line 1733
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Turn on speaker when voip called"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 1735
    goto :goto_0

    .line 1767
    :cond_4
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v3, :cond_6

    .line 1768
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    invoke-interface {v3}, Liee;->m()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 1769
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    invoke-interface {v3}, Liee;->l()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 1770
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v3

    invoke-interface {v3}, Liee;->q()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 1771
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->A(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1772
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v2

    invoke-interface {v2}, Liee;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1773
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 1776
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)V

    goto/16 :goto_1

    .line 1777
    :cond_6
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v2, v0, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    goto/16 :goto_1

    .line 1782
    :cond_7
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VoIP was canceled quickly and finish "

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_VOIP_EXCEPTION:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    const-string/jumbo v3, "VoIP call is canceled immediately"

    invoke-static {v0, v2, v1, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;ILjava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->B(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 796
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Make call exp: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 797
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 792
    return-void
.end method
