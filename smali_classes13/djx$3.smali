.class final Ldjx$3;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgwo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldjx;


# direct methods
.method constructor <init>(Ldjx;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldjx;

    .prologue
    .line 262
    iput-object p1, p0, Ldjx$3;->b:Ldjx;

    iput-object p2, p0, Ldjx$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 262
    check-cast p1, Lgwo;

    .line 2266
    if-eqz p1, :cond_8

    .line 2267
    iget-object v0, p0, Ldjx$3;->b:Ldjx;

    .line 3046
    iget-object v0, v0, Ldjx;->n:Ljava/util/Map;

    .line 2267
    iget-object v1, p0, Ldjx$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    iget-object v8, p0, Ldjx$3;->b:Ldjx;

    .line 4337
    iget-object v0, v8, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 4338
    invoke-virtual {v8}, Ldjx;->d()V

    .line 4339
    invoke-virtual {v8}, Ldjx;->e()V

    .line 4340
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4341
    iget-object v0, v8, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v1, Lctk$f;->input_smart_tip_content_panel:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Ldjx;->i:Landroid/view/View;

    .line 4342
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    sget v1, Lctk$f;->input_smart_tip_content_link_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Ldjx;->j:Landroid/widget/TextView;

    .line 4343
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    sget v1, Lctk$f;->input_smart_tip_content_link_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Ldjx;->k:Landroid/widget/TextView;

    .line 4344
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    sget v1, Lctk$f;->input_smart_tip_content_link_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Ldjx;->l:Landroid/widget/ImageView;

    .line 4346
    :cond_0
    iget-object v0, p1, Lgwo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4347
    iget-object v0, v8, Ldjx;->j:Landroid/widget/TextView;

    iget-object v1, p1, Lgwo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4351
    :goto_0
    iget-object v0, p1, Lgwo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4352
    iget-object v0, v8, Ldjx;->k:Landroid/widget/TextView;

    iget-object v1, p1, Lgwo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4356
    :goto_1
    iget-object v0, v8, Ldjx;->l:Landroid/widget/ImageView;

    sget v1, Lctk$e;->link_default_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4357
    iget-object v0, p1, Lgwo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4360
    :try_start_0
    iget-object v0, p1, Lgwo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4363
    :goto_2
    iget-object v0, v8, Ldjx;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v8, Ldjx;->l:Landroid/widget/ImageView;

    const/16 v4, 0x1a

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 4365
    :cond_1
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    new-instance v1, Ldjx$5;

    invoke-direct {v1, v8, p1}, Ldjx$5;-><init>(Ldjx;Lgwo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4394
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4395
    iget-object v0, v8, Ldjx;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4396
    iget-object v0, v8, Ldjx;->e:Landroid/view/View;

    if-nez v0, :cond_2

    .line 4397
    iget-object v0, v8, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v1, Lctk$f;->input_smart_tip_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Ldjx;->e:Landroid/view/View;

    .line 4399
    :cond_2
    iget-object v0, v8, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4400
    iget-object v0, v8, Ldjx;->e:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4401
    iget-object v0, v8, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    .line 4402
    iget-object v1, v8, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    .line 4403
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v8, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 4404
    iget-object v2, v8, Ldjx;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4405
    iget-object v2, v8, Ldjx;->o:Landroid/animation/ValueAnimator;

    new-instance v3, Ldjx$6;

    invoke-direct {v3, v8, v0, v1}, Ldjx$6;-><init>(Ldjx;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4422
    iget-object v0, v8, Ldjx;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Ldjx$7;

    invoke-direct {v1, v8}, Ldjx$7;-><init>(Ldjx;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4442
    iget-object v0, v8, Ldjx;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4443
    iget-object v0, v8, Ldjx;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 4444
    iget-object v0, v8, Ldjx;->f:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4446
    :cond_3
    iget-object v0, v8, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    if-eqz v0, :cond_4

    .line 4447
    iget-object v0, v8, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a()V

    .line 4449
    :cond_4
    iget-object v0, v8, Ldjx;->h:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 4450
    iget-object v0, v8, Ldjx;->h:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    :cond_5
    :goto_3
    return-void

    .line 4349
    :cond_6
    iget-object v0, v8, Ldjx;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4354
    :cond_7
    iget-object v0, v8, Ldjx;->k:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    .line 2270
    :cond_8
    invoke-virtual {p0, v3, v3}, Ldjx$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4403
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Ldjx$3;->b:Ldjx;

    .line 1456
    iget-object v1, v0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v1, :cond_4

    .line 1457
    invoke-virtual {v0}, Ldjx;->d()V

    .line 1458
    invoke-virtual {v0}, Ldjx;->e()V

    .line 1459
    iget-object v1, v0, Ldjx;->h:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1460
    iget-object v1, v0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v2, Lctk$f;->input_smart_tip_error_panel:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ldjx;->h:Landroid/view/View;

    .line 1462
    :cond_0
    iget-object v1, v0, Ldjx;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    iget-object v1, v0, Ldjx;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1464
    iget-object v1, v0, Ldjx;->e:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1465
    iget-object v1, v0, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v2, Lctk$f;->input_smart_tip_bg:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ldjx;->e:Landroid/view/View;

    .line 1467
    :cond_1
    iget-object v1, v0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    iget-object v1, v0, Ldjx;->e:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1469
    iget-object v1, v0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    .line 1470
    iget-object v2, v0, Ldjx;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    .line 1471
    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    .line 1472
    iget-object v3, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1473
    iget-object v3, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    new-instance v4, Ldjx$8;

    invoke-direct {v4, v0, v1, v2}, Ldjx$8;-><init>(Ldjx;FF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1490
    iget-object v1, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    new-instance v2, Ldjx$9;

    invoke-direct {v2, v0}, Ldjx$9;-><init>(Ldjx;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1510
    iget-object v1, v0, Ldjx;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1511
    iget-object v1, v0, Ldjx;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1512
    iget-object v1, v0, Ldjx;->f:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    :cond_2
    iget-object v1, v0, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    if-eqz v1, :cond_3

    .line 1515
    iget-object v1, v0, Ldjx;->g:Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a()V

    .line 1517
    :cond_3
    iget-object v1, v0, Ldjx;->i:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1518
    iget-object v0, v0, Ldjx;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_4
    iget-object v0, p0, Ldjx$3;->b:Ldjx;

    .line 2046
    iget-object v0, v0, Ldjx;->p:Landroid/os/Handler;

    .line 283
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 284
    return-void

    .line 1471
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 277
    return-void
.end method
