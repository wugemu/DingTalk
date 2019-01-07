.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;
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
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

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
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 250
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 251
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    move-result-object v4

    sget-object v7, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v4, v7, :cond_1

    .line 252
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    move-result-object v4

    sget-object v7, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v4, v7, :cond_0

    .line 254
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v7, "videoconf_conf_cam_control_click"

    invoke-interface {v4, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->m()Z

    move-result v1

    .line 257
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v7

    if-nez v1, :cond_2

    move v4, v5

    :goto_1
    invoke-interface {v7, v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->e(Z)V

    .line 258
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->b(Z)V

    .line 260
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->m()Z

    move-result v2

    .line 261
    .local v2, "isEnabled":Z
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Turn on/off camera : "

    aput-object v8, v7, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v3

    .line 264
    .local v3, "mySelfWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez v2, :cond_3

    :goto_2
    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setCameraMuted(Z)V

    .line 266
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 267
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)Z

    .line 269
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v4

    invoke-interface {v4, v3, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    .line 270
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2    # "isEnabled":Z
    .end local v3    # "mySelfWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_2
    move v4, v6

    .line 257
    goto :goto_1

    .restart local v2    # "isEnabled":Z
    .restart local v3    # "mySelfWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_3
    move v5, v6

    .line 265
    goto :goto_2

    .line 272
    :cond_4
    if-eqz v2, :cond_7

    .line 273
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->o()Z

    move-result v0

    .line 274
    .local v0, "camGranted":Z
    if-eqz v0, :cond_6

    .line 275
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 276
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_RUN:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setRunState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;)V

    .line 282
    :goto_3
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 290
    .end local v0    # "camGranted":Z
    :goto_4
    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 291
    iget-boolean v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v4, :cond_5

    .line 292
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    .line 294
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v4

    if-nez v4, :cond_8

    .line 295
    iget-boolean v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)V

    goto/16 :goto_0

    .line 278
    .restart local v0    # "camGranted":Z
    :cond_6
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 279
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_STOPPED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setRunState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;)V

    goto :goto_3

    .line 284
    .end local v0    # "camGranted":Z
    :cond_7
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 285
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;->USER_RUN_STATE_VIDEO_MUTED:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setRunState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$RunState;)V

    .line 287
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_4

    .line 299
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b(Ljava/util/List;)V

    .line 301
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$12;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
