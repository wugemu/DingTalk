.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1619
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 1626
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v1, :cond_0

    .line 1629
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "tele_voip_back_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1630
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;)V

    invoke-static {v1, v2}, Leyw;->a(Landroid/support/v4/app/Fragment;Lcpi$a;)V

    goto :goto_0
.end method
