.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v2, v3, :cond_1

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v2, v3, :cond_0

    .line 207
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Video conf not ready, no mic control"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "videoconf_conf_mic_control_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->f()V

    .line 214
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->j()Z

    move-result v0

    .line 215
    .local v0, "micMuted":Z
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    .line 216
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Mute the voip-conf: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 219
    .local v1, "mySelfWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setMicMuted(Z)V

    .line 221
    iget-boolean v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 224
    :cond_3
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 225
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    if-nez v2, :cond_4

    .line 226
    iget-boolean v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 231
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 235
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Levp;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v4}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0
.end method
