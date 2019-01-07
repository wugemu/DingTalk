.class final Lewv$1;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv;


# direct methods
.method constructor <init>(Lewv;)V
    .locals 0
    .param p1, "this$0"    # Lewv;

    .prologue
    .line 82
    iput-object p1, p0, Lewv$1;->a:Lewv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->a(Lewv;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->a(Lewv;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 87
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_4

    .line 89
    :cond_0
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_2

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    .line 91
    .local v1, "errCode":Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
    :goto_0
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->b(Lewv;)Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v2, v3, :cond_3

    .line 92
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Hang-up the call with float"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_voip_float_hangup_click"

    invoke-interface {v2, v5, v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v3

    invoke-static {v2, v3}, Lewv;->a(Lewv;I)V

    .line 95
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->c(Lewv;)V

    .line 117
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "errCode":Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
    :cond_1
    :goto_1
    return-void

    .line 89
    .restart local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_2
    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCancel:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    goto :goto_0

    .line 98
    .restart local v1    # "errCode":Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
    :cond_3
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Hang-up the conf with float"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_voip_conf_float_hangup_click"

    invoke-interface {v2, v5, v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v3

    invoke-static {v2, v3}, Lewv;->b(Lewv;I)V

    goto :goto_1

    .line 102
    .end local v1    # "errCode":Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;
    :cond_4
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_1

    .line 103
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->b(Lewv;)Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v2, v3, :cond_5

    .line 104
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Accept the call with float"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_voip_float_accept_click"

    invoke-interface {v2, v5, v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->d(Lewv;)V

    goto :goto_1

    .line 109
    :cond_5
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Accept the conf with float"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_voip_conf_float_accept_click"

    invoke-interface {v2, v5, v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    iget-object v2, p0, Lewv$1;->a:Lewv;

    invoke-static {v2}, Lewv;->e(Lewv;)Z

    goto :goto_1
.end method
