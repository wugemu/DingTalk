.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Leys$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1818
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1822
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v0, :cond_0

    .line 1823
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v1, :cond_3

    .line 1825
    :cond_2
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Hang up call with HEADSET"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto :goto_0

    .line 1827
    :cond_3
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v1, :cond_0

    .line 1828
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Accept call with HEADSET"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$10;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->j(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto :goto_0
.end method
