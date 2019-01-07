.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcpi$a;


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
    .line 2066
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2086
    :goto_0
    return-void

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->T(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_3

    .line 2073
    :cond_1
    if-nez p1, :cond_2

    .line 2074
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->I(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto :goto_0

    .line 2076
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_init_fail_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2077
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalNoMicAuth:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    goto :goto_0

    .line 2082
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->G(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 2083
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Liee;

    move-result-object v0

    invoke-interface {v0}, Liee;->d()I

    .line 2084
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$14;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZLcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 2085
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Answer the call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
