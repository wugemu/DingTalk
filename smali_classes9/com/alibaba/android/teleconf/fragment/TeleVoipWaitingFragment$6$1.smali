.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->a:I

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->H(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->C(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->d(Z)V

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;

    iget v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->a:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    .line 1262
    return-void
.end method
