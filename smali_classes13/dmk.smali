.class public final Ldmk;
.super Ljava/lang/Object;
.source "ChatSceneViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldmk$a;
    }
.end annotation


# instance fields
.field a:Ldmh$b;

.field b:Ldmh$a;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Z

.field f:Landroid/view/View;

.field g:I

.field h:Landroid/animation/ValueAnimator;

.field i:I

.field j:I

.field k:J

.field l:J

.field m:Z

.field n:Z

.field private o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

.field private p:Ldmk$a;

.field private q:Landroid/animation/ValueAnimator;

.field private r:Ldmo;

.field private s:Ldme;

.field private final t:I

.field private final u:I

.field private v:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .param p1, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p2, "flCelebrate"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
    .param p3, "animationView"    # Landroid/widget/TextView;
    .param p4, "moveView"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmk;->n:Z

    .line 72
    sget v0, Lctk$i;->act_member:I

    iput v0, p0, Ldmk;->t:I

    .line 73
    sget v0, Lctk$i;->lst_msg_tip_at:I

    iput v0, p0, Ldmk;->u:I

    .line 438
    new-instance v0, Ldmk$4;

    invoke-direct {v0, p0}, Ldmk$4;-><init>(Ldmk;)V

    iput-object v0, p0, Ldmk;->v:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getQuickCelebrateView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Ldmk;->c:Landroid/widget/ImageView;

    .line 77
    iput-object p2, p0, Ldmk;->o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .line 78
    iput-object p3, p0, Ldmk;->d:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Ldmk;->o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    iget-object v1, p0, Ldmk;->v:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->setOnAnimationStatusChangedListener(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$a;)V

    .line 80
    new-instance v0, Ldmk$a;

    invoke-direct {v0, p0}, Ldmk$a;-><init>(Ldmk;)V

    iput-object v0, p0, Ldmk;->p:Ldmk$a;

    .line 81
    iget-object v0, p0, Ldmk;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ldmk;->p:Ldmk$a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Ldmk;->g:I

    .line 83
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 84
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Ldmk;->i:I

    .line 85
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Ldmk;->j:I

    .line 86
    iput-object p4, p0, Ldmk;->f:Landroid/view/View;

    .line 87
    new-instance v0, Ldmo;

    invoke-direct {v0}, Ldmo;-><init>()V

    iput-object v0, p0, Ldmk;->r:Ldmo;

    .line 88
    new-instance v0, Ldme;

    invoke-direct {v0}, Ldme;-><init>()V

    iput-object v0, p0, Ldmk;->s:Ldme;

    .line 89
    iget-object v0, p0, Ldmk;->o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    iget-object v1, p0, Ldmk;->s:Ldme;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->setBitmapConverter(Ldme;)V

    .line 90
    return-void
.end method

.method static synthetic a(Ldmk;IIFF)F
    .locals 6
    .param p0, "x0"    # Ldmk;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 34
    .line 4175
    float-to-double v0, p3

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    float-to-double v4, p4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 34
    return v0
.end method

.method static synthetic a(Ldmk;)V
    .locals 2
    .param p0, "x0"    # Ldmk;

    .prologue
    .line 34
    .line 2270
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method static synthetic a(Ldmk;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "x0"    # Ldmk;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    .line 1316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    :pswitch_0
    return-void

    .line 1319
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmk;->n:Z

    goto :goto_0

    .line 1316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Ldmk;)V
    .locals 7
    .param p0, "x0"    # Ldmk;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 34
    .line 3181
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3184
    :cond_0
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    .line 3185
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ldmk;->l:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Ldmk;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 3188
    :cond_2
    iget-object v2, p0, Ldmk;->h:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    .line 3189
    iget-object v1, p0, Ldmk;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3194
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Ldmk;->h:Landroid/animation/ValueAnimator;

    .line 3196
    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3198
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/16 v2, 0x157c

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    .line 3200
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3201
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Ldmk$1;

    const/16 v2, 0x1f4

    invoke-direct {v1, p0, v2, v6}, Ldmk$1;-><init>(Ldmk;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3230
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Ldmk$2;

    invoke-direct {v1, p0}, Ldmk$2;-><init>(Ldmk;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3239
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x157c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3240
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 3241
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 3191
    goto :goto_0
.end method

.method static synthetic c(Ldmk;)V
    .locals 3
    .param p0, "x0"    # Ldmk;

    .prologue
    .line 34
    .line 3245
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmk;->e:Z

    .line 3246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldmk;->k:J

    .line 3247
    iget-object v0, p0, Ldmk;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3248
    iget-object v0, p0, Ldmk;->b:Ldmh$a;

    if-eqz v0, :cond_0

    .line 3249
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    iget v1, p0, Ldmk;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3250
    iget-object v1, p0, Ldmk;->d:Landroid/widget/TextView;

    iget v2, p0, Ldmk;->u:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3251
    iget-object v2, p0, Ldmk;->b:Ldmh$a;

    invoke-interface {v2, v0, v1}, Ldmh$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Ldmk;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 257
    iget-object v0, p0, Ldmk;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Ldmk;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Ldmk;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 261
    :cond_0
    iput-object v2, p0, Ldmk;->h:Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 265
    :cond_1
    iput-object v2, p0, Ldmk;->q:Landroid/animation/ValueAnimator;

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldmk;->l:J

    .line 267
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Ldmk;->o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->setVisibility(I)V

    .line 364
    :goto_0
    iget-object v2, p0, Ldmk;->o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .line 1094
    iput-object p1, v2, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a:Ljava/lang/Object;

    .line 1095
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1121
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->c:Ldme;

    if-eqz v0, :cond_0

    .line 1122
    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)V

    .line 1140
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1141
    const-class v4, Ldme$a;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldme$a;

    .line 1143
    :goto_1
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->c:Ldme;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Ldme;->a(Ljava/util/List;Ljava/lang/Object;Ldme$a;)V

    .line 1101
    :cond_0
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a()V

    .line 365
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Ldmk;->o:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->setVisibility(I)V

    goto :goto_0

    .line 1098
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b()V

    .line 1099
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method b()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "displayText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 375
    .local v7, "sendText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 376
    .local v0, "atMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v9, p0, Ldmk;->a:Ldmh$b;

    if-eqz v9, :cond_2

    iget-object v9, p0, Ldmk;->a:Ldmh$b;

    invoke-interface {v9}, Ldmh$b;->d()Ldsq;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Ldmk;->a:Ldmh$b;

    .line 377
    invoke-interface {v9}, Ldmh$b;->d()Ldsq;

    move-result-object v9

    iget-object v9, v9, Ldsq;->d:Ljava/util/List;

    if-eqz v9, :cond_2

    iget-object v9, p0, Ldmk;->a:Ldmh$b;

    .line 378
    invoke-interface {v9}, Ldmh$b;->d()Ldsq;

    move-result-object v9

    iget-object v9, v9, Ldsq;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 379
    iget-object v9, p0, Ldmk;->a:Ldmh$b;

    invoke-interface {v9}, Ldmh$b;->d()Ldsq;

    move-result-object v9

    iget-object v9, v9, Ldsq;->d:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lduf;

    .line 380
    .local v5, "object":Lduf;
    if-eqz v5, :cond_1

    .line 381
    iget-object v9, v5, Lduf;->c:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, v5, Lduf;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 382
    iget-object v9, v5, Lduf;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ldmo;->a(I)I

    move-result v6

    .line 383
    .local v6, "random":I
    iget-object v9, v5, Lduf;->c:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "displayText":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 385
    .end local v6    # "random":I
    .restart local v2    # "displayText":Ljava/lang/String;
    :cond_0
    iget-object v9, v5, Lduf;->b:Ljava/lang/String;

    iget-object v12, p0, Ldmk;->c:Landroid/widget/ImageView;

    invoke-static {v9, v12}, Ldmm;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 387
    :cond_1
    iget-object v9, p0, Ldmk;->a:Ldmh$b;

    invoke-interface {v9}, Ldmh$b;->e()Ljava/util/Map;

    move-result-object v0

    .line 389
    .end local v5    # "object":Lduf;
    :cond_2
    const/4 v8, 0x0

    .line 390
    .local v8, "spannableString":Landroid/text/SpannableString;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 391
    if-eqz v0, :cond_5

    .line 392
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 393
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 394
    .local v10, "uid":J
    const-string/jumbo v9, "@"

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v13, " "

    invoke-virtual {v9, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 396
    .end local v10    # "uid":J
    :cond_3
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 397
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-static {v7, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_1
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v3

    .line 403
    .local v3, "emojiUtil":Lcok;
    invoke-virtual {v3, v2}, Lcok;->a(Ljava/lang/String;)Z

    move-result v4

    .line 404
    .local v4, "isAllEmotion":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    if-eqz v4, :cond_6

    const/high16 v9, 0x41f00000    # 30.0f

    :goto_2
    invoke-static {v12, v2, v9}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v8

    .line 406
    .end local v3    # "emojiUtil":Lcok;
    .end local v4    # "isAllEmotion":Z
    :cond_4
    iget-object v9, p0, Ldmk;->d:Landroid/widget/TextView;

    iget v12, p0, Ldmk;->u:I

    invoke-virtual {v9, v12, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 407
    iget-object v9, p0, Ldmk;->d:Landroid/widget/TextView;

    iget v12, p0, Ldmk;->t:I

    invoke-virtual {v9, v12, v7}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 408
    iget-object v9, p0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-void

    .line 400
    :cond_5
    move-object v7, v2

    goto :goto_1

    .line 404
    .restart local v3    # "emojiUtil":Lcok;
    .restart local v4    # "isAllEmotion":Z
    :cond_6
    const/high16 v9, 0x41c00000    # 24.0f

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    invoke-virtual {p0}, Ldmk;->a()V

    .line 424
    iget-object v0, p0, Ldmk;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldmk;->e:Z

    .line 426
    return-void
.end method
