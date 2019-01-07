.class public Lgfu;
.super Ljava/lang/Object;
.source "FilePreviewWebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgfu$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field f:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final g:I

.field protected h:I

.field i:I

.field protected final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final k:Ljava/lang/Runnable;

.field public l:Z

.field public m:Lgfu$a;

.field n:Z

.field private o:Lgqk;

.field private final p:I

.field private final q:I

.field private final r:I


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 52
    iput-object v0, p0, Lgfu;->o:Lgqk;

    .line 56
    iput v2, p0, Lgfu;->p:I

    .line 57
    iput v3, p0, Lgfu;->q:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lgfu;->r:I

    .line 60
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lgfu;->g:I

    .line 62
    iput v3, p0, Lgfu;->h:I

    .line 63
    iput v2, p0, Lgfu;->i:I

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgfu;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v0, Lgfu$1;

    invoke-direct {v0, p0}, Lgfu$1;-><init>(Lgfu;)V

    iput-object v0, p0, Lgfu;->k:Ljava/lang/Runnable;

    .line 88
    iput-boolean v2, p0, Lgfu;->n:Z

    .line 92
    iput-object p1, p0, Lgfu;->f:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 93
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 422
    iget-object v0, p0, Lgfu;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lgfu;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lgfu;->a:Landroid/app/Activity;

    new-instance v3, Lgfu$5;

    invoke-direct {v3, p0}, Lgfu$5;-><init>(Lgfu;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->setGestureDetector(Landroid/view/GestureDetector;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "previewUrl"    # Ljava/lang/String;
    .param p3, "baseInfoView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;
    .param p4, "baseInfoRootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 146
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "5"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "5"

    const-string/jumbo v4, "1050"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1031"

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lgfu;->o:Lgqk;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 156
    iget-object v1, p0, Lgfu;->o:Lgqk;

    invoke-virtual {v1, p2}, Lgqk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Lgfu$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lgfu$2;-><init>(Lgfu;Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V

    .line 250
    .local v0, "observer":Lgql;
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 251
    new-instance v1, Lgqk;

    iget-object v2, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-direct {v1, v2, v0}, Lgqk;-><init>(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;Lgql;)V

    iput-object v1, p0, Lgfu;->o:Lgqk;

    .line 252
    iget-object v1, p0, Lgfu;->o:Lgqk;

    invoke-virtual {v1, p2}, Lgqk;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2
    .param p1, "newScreenOrientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 553
    iget v0, p0, Lgfu;->h:I

    if-ne v0, p1, :cond_0

    .line 560
    :goto_0
    return v1

    .line 557
    :cond_0
    iput p1, p0, Lgfu;->h:I

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerView"    # Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;
    .param p3, "bottomView"    # Landroid/view/View;
    .param p4, "toolbarView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v2

    .line 133
    :cond_1
    :goto_0
    return v3

    .line 105
    :cond_2
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-nez v1, :cond_1

    .line 109
    iput-object p1, p0, Lgfu;->a:Landroid/app/Activity;

    .line 110
    iput-object p2, p0, Lgfu;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    .line 111
    iput-object p3, p0, Lgfu;->c:Landroid/view/View;

    .line 112
    iput-object p4, p0, Lgfu;->d:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lgfu;->c:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgfu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lgfu;->l:Z

    .line 116
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v0

    .line 118
    .local v0, "runtimeEntry":Lhdf;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lhdf;->getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_4
    move v3, v2

    .line 119
    goto :goto_0

    .end local v0    # "runtimeEntry":Lhdf;
    :cond_5
    move v1, v2

    .line 114
    goto :goto_1

    .line 122
    .restart local v0    # "runtimeEntry":Lhdf;
    :cond_6
    invoke-interface {v0}, Lhdf;->getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v1

    iput-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 123
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    iget-object v4, p0, Lgfu;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->ui_common_cell_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setBackgroundColor(I)V

    .line 124
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2, v4}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleCreate()V

    .line 131
    invoke-virtual {p0}, Lgfu;->a()V

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 491
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgfu$6;

    invoke-direct {v1, p0}, Lgfu$6;-><init>(Lgfu;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    return-void
.end method

.method protected final b(I)V
    .locals 2
    .param p1, "colorResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 576
    iget-object v0, p0, Lgfu;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lgfu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    iget-object v1, p0, Lgfu;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->setImmersiveStatusBarBackgroundColor(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 260
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 266
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 274
    .local v0, "view":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->goBack()V

    .line 277
    const/4 v1, 0x1

    .line 281
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v2, p0, Lgfu;->o:Lgqk;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lgfu;->o:Lgqk;

    invoke-virtual {v2}, Lgqk;->a()V

    .line 290
    iput-object v3, p0, Lgfu;->o:Lgqk;

    .line 293
    :cond_0
    iget-object v2, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v2, :cond_1

    .line 295
    :try_start_0
    iget-object v1, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 296
    .local v1, "webViewWrapper":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 297
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 298
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "webViewWrapper":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :goto_0
    iput-object v3, p0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 305
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    const-string/jumbo v3, "cspace_hide_waiting_ui_delay_token"

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 306
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 312
    iget-object v1, p0, Lgfu;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgfu;->d:Landroid/view/View;

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lgfu;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lgfu;->a:Landroid/app/Activity;

    sget v2, Lfzs$a;->cspace_ani_bottom_move_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 321
    .local v0, "bottomOutAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lgfu$3;

    invoke-direct {v1, p0}, Lgfu$3;-><init>(Lgfu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 339
    iget-object v1, p0, Lgfu;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    iget-object v1, p0, Lgfu;->d:Landroid/view/View;

    iget-object v2, p0, Lgfu;->a:Landroid/app/Activity;

    sget v3, Lfzs$a;->cspace_ani_top_move_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    iget-object v1, p0, Lgfu;->m:Lgfu$a;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lgfu;->m:Lgfu$a;

    invoke-interface {v1}, Lgfu$a;->a()V

    goto :goto_0
.end method

.method protected final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 351
    iget-object v1, p0, Lgfu;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgfu;->d:Landroid/view/View;

    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lgfu;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lgfu;->a:Landroid/app/Activity;

    sget v2, Lfzs$a;->cspace_ani_bottom_move_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 360
    .local v0, "bottomInAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lgfu$4;

    invoke-direct {v1, p0}, Lgfu$4;-><init>(Lgfu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    iget-object v1, p0, Lgfu;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    iget-object v1, p0, Lgfu;->d:Landroid/view/View;

    iget-object v2, p0, Lgfu;->a:Landroid/app/Activity;

    sget v3, Lfzs$a;->cspace_ani_top_move_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method protected j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 515
    iget-object v0, p0, Lgfu;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 516
    iget-object v0, p0, Lgfu;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 517
    iget-object v0, p0, Lgfu;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->requestLayout()V

    .line 518
    return-void
.end method

.method protected k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-boolean v0, p0, Lgfu;->l:Z

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lgfu;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 527
    :cond_0
    iget-object v0, p0, Lgfu;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 532
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lgfu;->b:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;->requestLayout()V

    .line 539
    return-void
.end method
