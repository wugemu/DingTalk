.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Levr;


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
    .line 440
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 487
    return-void
.end method

.method public final a(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 491
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 492
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 493
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    .line 491
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 496
    .local v0, "mainWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/webrtc/sdk/SophonSurfaceView;->layout(IIII)V

    .line 499
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 443
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v5, "videoconf_conf_main_panel_click"

    invoke-interface {v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "beShareWindow":Z
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c()Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 448
    .local v1, "mainWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 452
    .end local v1    # "mainWindow":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_0
    if-eqz v0, :cond_7

    .line 453
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 455
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 456
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->setVisibility(I)V

    .line 457
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->x(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 458
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v4, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;ZZ)V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 460
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v3, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;ZZ)V

    goto :goto_0

    .line 463
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;ZZ)V

    .line 464
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 467
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 468
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 465
    goto :goto_1

    :cond_6
    move v3, v4

    .line 467
    goto :goto_2

    .line 471
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .line 472
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->z(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 476
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 477
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->A(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2, v4, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;ZZ)V

    .line 479
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$32;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->y(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v5

    if-nez v5, :cond_9

    :goto_3
    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    goto :goto_0

    :cond_9
    move v3, v4

    goto :goto_3
.end method
