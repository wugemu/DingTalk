.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;
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
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 135
    .local v2, "viewId":I
    sget v3, Leuj$i;->conf_minimize:I

    if-ne v3, v2, :cond_1

    .line 136
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_voip_conference_minium_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Minimize window "

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;)V

    invoke-static {v3, v4}, Leyw;->a(Landroid/app/Activity;Lcpi$a;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    sget v3, Leuj$i;->conf_add_mem:I

    if-ne v3, v2, :cond_5

    .line 154
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v3

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 155
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Invalid add action"

    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    sget v6, Leuj$l;->choose_limit:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v3, v6, v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "toastWarning":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    const-string/jumbo v4, "200"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v1    # "toastWarning":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Z)Z

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    .line 166
    invoke-static {}, Levn;->p()Levn;

    move-result-object v3

    invoke-virtual {v3}, Levn;->r()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    const-string/jumbo v0, "phone_voip_conference_add_member_via_caller_click"

    .line 171
    .local v0, "ctrlKey":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v0    # "ctrlKey":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "phone_voip_conference_add_member_via_callee_click"

    .restart local v0    # "ctrlKey":Ljava/lang/String;
    goto :goto_1

    .line 172
    .end local v0    # "ctrlKey":Ljava/lang/String;
    :cond_5
    sget v3, Leuj$i;->conf_control_mute:I

    if-ne v3, v2, :cond_0

    .line 173
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v6, v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Z)Z

    .line 174
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Z)V

    .line 175
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 176
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->b(Z)V

    .line 178
    :cond_6
    invoke-static {}, Levn;->p()Levn;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v6

    invoke-virtual {v3, v6}, Levn;->a(Z)V

    .line 181
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 182
    const-string/jumbo v0, "phone_voip_conference_mute_all_click"

    .line 186
    .restart local v0    # "ctrlKey":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Mute all action "

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .line 189
    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v3, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "ctrlKey":Ljava/lang/String;
    :cond_7
    move v3, v5

    .line 173
    goto :goto_2

    .line 184
    :cond_8
    const-string/jumbo v0, "phone_voip_conference_unmute_all_click"

    .restart local v0    # "ctrlKey":Ljava/lang/String;
    goto :goto_3
.end method
