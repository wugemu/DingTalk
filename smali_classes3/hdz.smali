.class public Lhdz;
.super Lhdu;
.source "FloatingLayerDelegate.java"


# instance fields
.field public b:Landroid/app/Activity;

.field public c:Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

.field public d:Landroid/widget/RelativeLayout;

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Ljava/lang/String;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 91
    iput v0, p0, Lhdz;->f:I

    .line 92
    iput v0, p0, Lhdz;->g:I

    .line 93
    iput-boolean v0, p0, Lhdz;->h:Z

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhdz;->i:J

    .line 101
    iput-object p1, p0, Lhdz;->b:Landroid/app/Activity;

    .line 102
    return-void
.end method

.method static synthetic a(Lhdz;I)I
    .locals 0
    .param p0, "x0"    # Lhdz;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lhdz;->e:I

    return p1
.end method

.method private a(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 446
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 447
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lhdz$3;

    invoke-direct {v1, p0, p1}, Lhdz$3;-><init>(Lhdz;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    return-object v0
.end method

.method static synthetic a(Lhdz;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lhdz;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lhdz;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-static {p1}, Lhdz;->c(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lhdz;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "x0"    # Lhdz;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    .line 2362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 2364
    new-instance v1, Lhdz$13;

    invoke-direct {v1, p0, p1}, Lhdz$13;-><init>(Lhdz;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method static synthetic b(Lhdz;I)I
    .locals 0
    .param p0, "x0"    # Lhdz;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lhdz;->q:I

    return p1
.end method

.method static synthetic b(Lhdz;)V
    .locals 2
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    .line 1261
    iget-object v0, p0, Lhdz;->c:Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

    iput-object v0, p0, Lhdz;->c:Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

    .line 1263
    iget-object v0, p0, Lhdz;->c:Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;->setFloatingLayerDelegate(Lhdz;)V

    .line 1264
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->screen_shot_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhdz;->k:Landroid/widget/RelativeLayout;

    .line 1265
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->screen_shot_image:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdz;->l:Landroid/widget/ImageView;

    .line 1266
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->floating_layer_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhdz;->o:Landroid/view/View;

    .line 1267
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->floating_layer_tip_animation_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    .line 1269
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->floating_layer_tip_animation_arrow:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdz;->n:Landroid/widget/ImageView;

    .line 1270
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    new-instance v1, Lhdz$8;

    invoke-direct {v1, p0}, Lhdz$8;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhdz;->d:Landroid/widget/RelativeLayout;

    .line 1277
    iget-object v0, p0, Lhdz;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lhdz$9;

    invoke-direct {v1, p0}, Lhdz$9;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    sget v1, Lhdn$h;->title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    iput-object v0, p0, Lhdz;->p:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .line 1284
    iget-object v0, p0, Lhdz;->p:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    new-instance v1, Lhdz$10;

    invoke-direct {v1, p0}, Lhdz$10;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1290
    iget-object v0, p0, Lhdz;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lhdz$11;

    invoke-direct {v1, p0}, Lhdz$11;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic b(Lhdz;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lhdz;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lhdz;->b(Landroid/view/View;)V

    return-void
.end method

.method private static c(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 346
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 346
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 351
    .local v2, "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lhdz;)V
    .locals 2
    .param p0, "x0"    # Lhdz;

    .prologue
    const/16 v1, 0x8

    .line 56
    .line 1303
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 56
    :cond_1
    return-void
.end method

.method static synthetic d(Lhdz;)V
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    .line 1392
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    iget-object v0, p0, Lhdz;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lhdz;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget-object v0, p0, Lhdz;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lhdz;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic e(Lhdz;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lhdz;)I
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget v0, p0, Lhdz;->e:I

    return v0
.end method

.method static synthetic g(Lhdz;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lhdz;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lhdz;)V
    .locals 12
    .param p0, "x0"    # Lhdz;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 56
    .line 2460
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget-object v1, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2461
    iget-object v1, p0, Lhdz;->b:Landroid/app/Activity;

    const/high16 v2, 0x42d80000    # 108.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget-object v2, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2464
    sub-float v2, v7, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 2465
    sub-float v3, v7, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v4}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lhdz;->b:Landroid/app/Activity;

    const/high16 v5, 0x43080000    # 136.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2467
    iget-object v4, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v5, "translationX"

    new-array v6, v10, [F

    aput v11, v6, v8

    aput v2, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2469
    iget-object v4, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v5, "translationY"

    new-array v6, v10, [F

    aput v11, v6, v8

    aput v3, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2471
    iget-object v4, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v5, "scaleY"

    new-array v6, v10, [F

    aput v7, v6, v8

    aput v1, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2473
    iget-object v4, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v5, "scaleX"

    new-array v6, v10, [F

    aput v7, v6, v8

    aput v0, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2476
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2477
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v1, v5, v10

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2478
    const-wide/16 v0, 0x1f4

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2479
    new-instance v0, Lhdz$4;

    invoke-direct {v0, p0}, Lhdz$4;-><init>(Lhdz;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2504
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 56
    return-void
.end method

.method static synthetic j(Lhdz;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lhdz;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lhdz;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lhdz;)V
    .locals 2
    .param p0, "x0"    # Lhdz;

    .prologue
    const/4 v1, 0x1

    .line 56
    .line 2578
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2582
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v1}, Lhrf;->a(Landroid/app/Activity;ZZ)Z

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic n(Lhdz;)V
    .locals 2
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    .line 3532
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3536
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v0

    iget-object v1, p0, Lhdz;->p:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4156
    iput-object v1, v0, Lheh;->e:Ljava/lang/String;

    .line 5044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 3538
    iget-object v1, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lhee;->a(Landroid/app/Activity;)V

    .line 6044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v0

    .line 3540
    new-instance v1, Lhdz$5;

    invoke-direct {v1, p0}, Lhdz$5;-><init>(Lhdz;)V

    .line 6072
    iput-object v1, v0, Lhee;->b:Lheg;

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic o(Lhdz;)V
    .locals 4
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    .line 6562
    iget-object v0, p0, Lhdz;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 6566
    iget-object v0, p0, Lhdz;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Lhdz$6;

    invoke-direct {v1, p0}, Lhdz$6;-><init>(Lhdz;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic p(Lhdz;)V
    .locals 4
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 7510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7511
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-class v2, Lhdz;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "open_func_restrain_store"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method static synthetic q(Lhdz;)V
    .locals 4
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 7516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7517
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-class v2, Lhdz;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "open_func_restrain_restore"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method static synthetic r(Lhdz;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->p:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    return-object v0
.end method

.method static synthetic s(Lhdz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhdz;

    .prologue
    .line 56
    iget-object v0, p0, Lhdz;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lhdz;)V
    .locals 8
    .param p0, "x0"    # Lhdz;

    .prologue
    const/4 v7, 0x2

    .line 56
    .line 7521
    iget-object v0, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v1, "translationX"

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7522
    iget-object v1, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v2, "translationY"

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7523
    iget-object v2, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 7524
    iget-object v3, p0, Lhdz;->l:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 7525
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7526
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v2, v5, v7

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7527
    const-wide/16 v0, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7528
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 56
    return-void

    .line 7521
    .line 7522
    .line 7523
    .line 7524
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lhdu;->a()V

    .line 107
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 402
    iget-object v1, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lhdz;->o:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    iget v1, p0, Lhdz;->e:I

    iget v2, p0, Lhdz;->q:I

    invoke-direct {p0, p1, v1, v2}, Lhdz;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 410
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    new-instance v1, Lhdz$14;

    invoke-direct {v1, p0}, Lhdz$14;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    new-instance v1, Lhdz$1;

    invoke-direct {v1, p0}, Lhdz$1;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lhdz;->b:Landroid/app/Activity;

    new-instance v1, Lhdz$7;

    invoke-direct {v1, p0}, Lhdz$7;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lhdu;->b()V

    .line 122
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 428
    iget-object v1, p0, Lhdz;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 443
    :goto_0
    return-void

    .line 432
    :cond_0
    iget v1, p0, Lhdz;->q:I

    iget v2, p0, Lhdz;->e:I

    invoke-direct {p0, p1, v1, v2}, Lhdz;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 433
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lhdz$2;

    invoke-direct {v1, p0}, Lhdz$2;-><init>(Lhdz;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 442
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lhdu;->c()V

    .line 112
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lhdu;->d()V

    .line 117
    return-void
.end method
