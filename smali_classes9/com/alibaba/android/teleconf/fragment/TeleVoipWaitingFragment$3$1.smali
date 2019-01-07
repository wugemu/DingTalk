.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 742
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 743
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Activity destroyed when playing ring"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    .line 747
    .local v1, "state":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v1, :cond_2

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v2, v1, :cond_2

    .line 748
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No ring because invalid state "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v2

    .line 1160
    iget-object v0, v2, Lewr;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .line 753
    .local v0, "ringer":Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    if-eqz v0, :cond_3

    .line 754
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v2

    invoke-virtual {v2}, Lewr;->b()V

    .line 756
    :cond_3
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Playing start ring "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->a:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->a:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v4, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;IZ)V

    .line 761
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->z(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 762
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$3;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->z(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    move-result-object v3

    .line 2125
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lewr;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V

    goto/16 :goto_0

    .line 758
    :cond_4
    const/4 v2, 0x3

    goto :goto_1
.end method
