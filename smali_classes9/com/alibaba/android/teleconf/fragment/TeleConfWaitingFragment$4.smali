.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;
.super Ljava/lang/Object;
.source "TeleConfWaitingFragment.java"

# interfaces
.implements Leyo$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$b",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0xc8

    const/4 v5, 0x0

    .line 927
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;

    .line 1930
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Z)Z

    .line 1931
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->code:Ljava/lang/Integer;

    .line 1932
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1933
    :cond_0
    const-string/jumbo v1, "408"

    .line 1934
    const-string/jumbo v0, "create failed, result is null"

    .line 1935
    if-eqz p1, :cond_1

    .line 1936
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->code:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1937
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->cause:Ljava/lang/String;

    .line 1939
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :goto_0
    return-void

    .line 1943
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)I

    .line 1945
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->isSupportVoIP:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->isSupportVoIP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1947
    invoke-static {}, Lewr;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1948
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->voipUUid:Ljava/lang/String;

    .line 1949
    const-string/jumbo v1, "tele_conf"

    const-string/jumbo v2, "free_call"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "VoIP is support, switch to VoIP call with uuid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->canPstnCall:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->canPstnCall:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1952
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ZLjava/lang/String;)V

    .line 1957
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->p(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1958
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1954
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1, v5, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ZLjava/lang/String;)V

    goto :goto_1

    .line 1963
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1971
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->canSystemCall:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 1972
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->canSystemCall:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Z)Z

    .line 1975
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->callerUUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1976
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->callerNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1978
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    .line 2114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2117
    iput-object v1, v0, Leve;->d:Ljava/lang/String;

    .line 1979
    :cond_6
    invoke-static {}, Lewe;->a()Lewe;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tele"

    invoke-virtual {v0, v2, v3, v1, v4}, Lewe;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 1982
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->s(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    .line 2577
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2578
    iput-object v1, v0, Lewl;->b:Ljava/lang/String;

    .line 1985
    :cond_7
    invoke-static {}, Lewl;->a()Lewl;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lewl;->f(Ljava/lang/String;)V

    .line 1986
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;->callbackNumbers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lewl;->d(Ljava/lang/String;)V

    .line 1988
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v1, "free_call"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreateSuccess, backCallerUUid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .line 1989
    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", backCallerNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->t(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1988
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 994
    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onCreateFailed, code "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5, v9}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Z)Z

    .line 996
    const/16 v5, 0x9

    invoke-static {v5, p2}, Lewc;->a(ILjava/lang/String;)V

    .line 998
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 999
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->p(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1006
    const-string/jumbo v5, "tele_conf"

    const-string/jumbo v6, "free_call"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "create a call failed with code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1008
    .local v3, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "1"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "meeting_fail_click"

    invoke-interface {v5, v6, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1010
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1012
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v6

    invoke-static {v5, v6, p2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ILjava/lang/String;)V

    .line 1013
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    .line 1068
    :goto_1
    return-void

    .line 1014
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    const v6, 0x61ab5

    if-ne v5, v6, :cond_2

    .line 1015
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6, p2}, Leyw;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZLjava/lang/String;)V

    goto :goto_1

    .line 1016
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    const/16 v6, 0x198

    if-eq v5, v6, :cond_5

    .line 1017
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1018
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Leuj$j;->layout_conf_dialog_view:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1021
    .local v2, "contentView":Landroid/view/View;
    sget v5, Leuj$i;->content_txt:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1022
    .local v1, "content":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1024
    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1035
    sget v5, Leuj$l;->sure:I

    new-instance v6, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;)V

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1046
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1051
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "content":Landroid/widget/TextView;
    .end local v2    # "contentView":Landroid/view/View;
    :goto_2
    new-instance v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 1052
    .local v4, "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    sget-object v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_FREE_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v5, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 1053
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, ""

    :goto_3
    iput-object v5, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 1054
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 1055
    const-string/jumbo v5, "permission"

    iput-object v5, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 1056
    iput-object p2, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 1057
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    goto/16 :goto_1

    .line 1048
    .end local v4    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_3
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 1053
    .restart local v4    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1059
    .end local v4    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_5
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Fail code "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", reason is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1062
    .restart local v3    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "status"

    const-string/jumbo v6, "net"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string/jumbo v5, "ts"

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "meeting_overtime_click"

    invoke-interface {v5, v6, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1065
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v6

    invoke-static {v5, v6, v9}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ZI)V

    .line 1066
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$4;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    goto/16 :goto_1

    .end local v3    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
