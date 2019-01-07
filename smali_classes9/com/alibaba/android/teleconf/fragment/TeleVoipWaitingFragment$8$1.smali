.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;

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
    .line 1633
    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mini window after click"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    if-nez p1, :cond_0

    .line 1635
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget v2, Leuj$l;->dt_conference_notification_enter_warn_for_call:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)V

    .line 1638
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mini window after click"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$8;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->B(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 1640
    return-void
.end method
