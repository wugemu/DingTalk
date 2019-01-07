.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 199
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 201
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->f()V

    .line 204
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->d()V

    .line 205
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Reject the voip-conf"

    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_1
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_0

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->l()V

    .line 210
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v1

    .line 212
    .local v1, "micMuted":Z
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 213
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    .line 214
    .local v4, "uid":J
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 215
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e(J)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 216
    .local v2, "myself":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_3

    .line 217
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V

    .line 220
    .end local v2    # "myself":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v4    # "uid":J
    :cond_3
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Mute the voip-conf: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
