.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d(Z)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->a:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    .line 1095
    invoke-static {}, Lewx;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->D(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 1097
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v0

    invoke-virtual {v0}, Lewr;->b()V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->E(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    invoke-interface {v0}, Liee;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    invoke-interface {v0}, Liee;->i()V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 1107
    :cond_1
    :goto_0
    return-void

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-boolean v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->b:Z

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->c:Lied$b;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Lied$b;)V

    goto :goto_0
.end method
