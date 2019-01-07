.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;
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
    .line 346
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 350
    .local v8, "id":I
    sget v0, Leuj$i;->conf_camera_switch:I

    if-ne v8, v0, :cond_1

    .line 351
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Switch cam"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_switch_camera_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->n()V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget v0, Leuj$i;->video_member_list_view:I

    if-ne v8, v0, :cond_2

    .line 358
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Show member list"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_memlist_panel_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    goto :goto_0

    .line 362
    :cond_2
    sget v0, Leuj$i;->conf_add_mem:I

    if-ne v8, v0, :cond_5

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 365
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Invalid add action"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    sget v2, Leuj$l;->choose_limit:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->q(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "toastWarning":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const-string/jumbo v2, "200"

    invoke-virtual {v0, v2, v9}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v9    # "toastWarning":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_main_add_mem_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)Z

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->s(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    goto/16 :goto_0

    .line 381
    :cond_5
    sget v0, Leuj$i;->conf_minimize:I

    if-ne v8, v0, :cond_6

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v2, :cond_0

    .line 383
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Press left-btn for Minimize"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_minimize_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)V

    goto/16 :goto_0

    .line 388
    :cond_6
    sget v0, Leuj$i;->conf_share_window_enter:I

    if-ne v8, v0, :cond_a

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 390
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Click main share window enter"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_enter_fullscreen_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v1, :cond_7

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V

    .line 416
    .end local v1    # "windows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    goto/16 :goto_0

    .line 403
    :cond_8
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Exit the share fullscreen window"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videoconf_conf_quit_fullscreen_click"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 409
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    .line 410
    .restart local v1    # "windows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v1, :cond_7

    .line 411
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Ljava/util/List;IIZZ)V

    goto :goto_1

    .line 416
    .end local v1    # "windows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 418
    :cond_a
    sget v0, Leuj$i;->conf_sub_layout:I

    if-ne v8, v0, :cond_0

    .line 419
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Clk sub window 1"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b()I

    move-result v6

    .line 426
    .local v6, "destIndex":I
    if-nez v6, :cond_b

    .line 427
    const/4 v6, 0x1

    .line 431
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v7

    .line 432
    .local v7, "destWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v7, :cond_0

    .line 433
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$31;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0, v7, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    goto/16 :goto_0

    .line 429
    .end local v7    # "destWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_b
    const/4 v6, 0x0

    goto :goto_3
.end method
