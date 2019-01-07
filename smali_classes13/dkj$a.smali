.class final Ldkj$a;
.super Ljava/lang/Object;
.source "QuickPraiseController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ldkj;

.field private c:Z


# direct methods
.method public constructor <init>(Ldkj;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Ldkj$a;->b:Ldkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-direct {p0}, Ldkj$a;->b()V

    .line 292
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 347
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 17055
    iget-wide v0, v0, Ldkj;->i:J

    .line 347
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldkj$a;->b:Ldkj;

    .line 18055
    iget-wide v2, v2, Ldkj;->i:J

    .line 347
    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 18367
    iput-boolean v4, p0, Ldkj$a;->c:Z

    .line 349
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 19399
    iget-object v1, v0, Ldkj;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 19402
    iget-object v1, v0, Ldkj;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 19403
    iget-object v0, v0, Ldkj;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldkj$a;->c:Z

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    invoke-static {v0}, Ldkj;->b(Ldkj;)V

    .line 353
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    invoke-static {v0}, Ldkj;->c(Ldkj;)V

    .line 359
    :goto_1
    return-void

    .line 19405
    :cond_1
    iget-object v1, v0, Ldkj;->j:Landroid/app/Activity;

    const-string/jumbo v2, "pref_key_show_quick_guide"

    invoke-static {v1, v2, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19406
    iget-object v1, v0, Ldkj;->j:Landroid/app/Activity;

    const-string/jumbo v2, "pref_key_show_quick_guide"

    invoke-static {v1, v2, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 19407
    iget-object v1, v0, Ldkj;->c:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 19409
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 19410
    iget-object v2, v0, Ldkj;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19411
    iget-object v2, v0, Ldkj;->j:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 19412
    aget v1, v1, v5

    sub-int v1, v2, v1

    iget-object v2, v0, Ldkj;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 19413
    iget-object v0, v0, Ldkj;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 19414
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 19415
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19416
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0}, Ldkj$a;->b()V

    .line 357
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 20055
    invoke-virtual {v0}, Ldkj;->b()V

    .line 358
    iput-boolean v5, p0, Ldkj$a;->a:Z

    goto :goto_1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldkj$a;->c:Z

    .line 363
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    const/4 v1, 0x1

    .line 21055
    iput-boolean v1, v0, Ldkj;->o:Z

    .line 364
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v7, 0x3f4ccccd    # 0.8f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 297
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 1383
    if-eqz p2, :cond_0

    iget-object v1, v0, Ldkj;->p:Ldct$a;

    if-eqz v1, :cond_0

    .line 1384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 2055
    iget-boolean v0, v0, Ldkj;->o:Z

    .line 298
    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    invoke-static {v0, p2}, Ldkj;->a(Ldkj;Landroid/view/MotionEvent;)V

    .line 343
    :cond_1
    :goto_1
    return v6

    .line 1386
    :pswitch_1
    iput-boolean v6, v0, Ldkj;->m:Z

    .line 1387
    iget-object v0, v0, Ldkj;->p:Ldct$a;

    invoke-interface {v0}, Ldct$a;->a()V

    goto :goto_0

    .line 1391
    :pswitch_2
    iput-boolean v4, v0, Ldkj;->m:Z

    .line 1392
    iget-object v0, v0, Ldkj;->p:Ldct$a;

    invoke-interface {v0}, Ldct$a;->b()V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 3055
    iget-boolean v0, v0, Ldkj;->h:Z

    .line 302
    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldkj$a;->b:Ldkj;

    .line 4055
    iget-wide v2, v2, Ldkj;->k:J

    .line 302
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 303
    :cond_3
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 5055
    iput-boolean v4, v0, Ldkj;->o:Z

    .line 304
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    invoke-static {v0, p2}, Ldkj;->a(Ldkj;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 308
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 310
    :pswitch_3
    iput-boolean v6, p0, Ldkj$a;->a:Z

    .line 311
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6055
    iput-wide v2, v0, Ldkj;->i:J

    goto :goto_1

    .line 314
    :pswitch_4
    iget-boolean v0, p0, Ldkj$a;->c:Z

    if-nez v0, :cond_6

    .line 6372
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ldkj$a;->b:Ldkj;

    .line 7055
    iget v1, v1, Ldkj;->d:I

    .line 6372
    rsub-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Ldkj$a;->b:Ldkj;

    .line 8055
    iget v2, v2, Ldkj;->d:I

    .line 6372
    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Ldkj$a;->b:Ldkj;

    .line 9055
    iget v4, v4, Ldkj;->d:I

    .line 6372
    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Ldkj$a;->b:Ldkj;

    .line 10055
    iget v5, v5, Ldkj;->d:I

    .line 6372
    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v2, v1

    add-double/2addr v2, v8

    double-to-int v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 314
    if-eqz v0, :cond_6

    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 11055
    iget-wide v0, v0, Ldkj;->i:J

    .line 314
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldkj$a;->b:Ldkj;

    .line 12055
    iget-wide v2, v2, Ldkj;->i:J

    .line 316
    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 317
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    invoke-static {v0}, Ldkj;->b(Ldkj;)V

    .line 318
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 13437
    iget-object v1, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    .line 13439
    iget v1, v0, Ldkj;->f:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 13440
    iget v2, v0, Ldkj;->g:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 13443
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    .line 13444
    iget-object v3, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13445
    iget-object v3, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Ldkj$4;

    invoke-direct {v4, v0, v2, v1}, Ldkj$4;-><init>(Ldkj;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13470
    iget-object v1, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13471
    iget-object v1, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Ldkj;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 13472
    iget-object v0, v0, Ldkj;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 319
    :cond_5
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 14055
    invoke-virtual {v0}, Ldkj;->c()V

    goto/16 :goto_1

    .line 14367
    :cond_6
    iput-boolean v6, p0, Ldkj$a;->c:Z

    .line 323
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 15055
    invoke-virtual {v0}, Ldkj;->b()V

    goto/16 :goto_1

    .line 327
    :pswitch_5
    invoke-direct {p0}, Ldkj$a;->a()V

    goto/16 :goto_1

    .line 332
    :pswitch_6
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_chat_cancel_as_up_enable"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    invoke-direct {p0}, Ldkj$a;->a()V

    goto/16 :goto_1

    .line 336
    :cond_7
    invoke-direct {p0}, Ldkj$a;->b()V

    .line 337
    iget-object v0, p0, Ldkj$a;->b:Ldkj;

    .line 16055
    invoke-virtual {v0}, Ldkj;->b()V

    .line 338
    iput-boolean v4, p0, Ldkj$a;->a:Z

    goto/16 :goto_1

    .line 1384
    .line 308
    .line 13443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1388
    .end array-data
.end method
