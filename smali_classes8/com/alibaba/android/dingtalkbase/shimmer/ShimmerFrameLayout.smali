.class public Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ShimmerFrameLayout.java"


# instance fields
.field public a:Landroid/animation/ValueAnimator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/RectF;

.field private f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->d:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->e:Landroid/graphics/RectF;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->d:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->e:Landroid/graphics/RectF;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->d:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->e:Landroid/graphics/RectF;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->d:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->e:Landroid/graphics/RectF;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;)Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;
    .locals 8
    .param p1, "shimmer"    # Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given null shimmer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->o:Z

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->q:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    invoke-direct {v3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b()V

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    .line 1244
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1245
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1250
    :goto_2
    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->u:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->t:J

    div-long/2addr v4, v6

    long-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 1251
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 1252
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->s:I

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1253
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->r:I

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1254
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->t:J

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->u:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1255
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1256
    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->postInvalidate()V

    .line 115
    return-object p0

    .line 107
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1247
    goto :goto_2
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->setWillNotDraw(Z)V

    .line 79
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;->b()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a(Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;)Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;

    .line 96
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v2, Lcig$l;->ShimmerFrameLayout:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_colored:I

    .line 89
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcig$l;->ShimmerFrameLayout_shimmer_colored:I

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;-><init>()V

    .line 93
    .local v1, "shimmerBuilder":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->a(Landroid/content/res/TypedArray;)Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;->b()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a(Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;)Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 90
    .end local v1    # "shimmerBuilder":Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private b()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getWidth()I

    move-result v13

    .line 205
    .local v13, "viewWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getHeight()I

    move-result v12

    .line 206
    .local v12, "viewHeight":I
    if-eqz v13, :cond_0

    if-nez v12, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a(I)I

    move-result v14

    .line 210
    .local v14, "width":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b(I)I

    move-result v10

    .line 213
    .local v10, "height":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->g:I

    packed-switch v2, :pswitch_data_0

    .line 216
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->d:I

    if-eq v2, v11, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 219
    .local v11, "vertical":Z
    :cond_2
    :goto_1
    if-eqz v11, :cond_5

    move v8, v9

    .line 220
    .local v8, "endX":I
    :goto_2
    if-eqz v11, :cond_3

    move v9, v10

    .line 221
    .local v9, "endY":I
    :cond_3
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-object v5, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 237
    .end local v8    # "endX":I
    .end local v9    # "endY":I
    .end local v11    # "vertical":Z
    .local v0, "shader":Landroid/graphics/Shader;
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .end local v0    # "shader":Landroid/graphics/Shader;
    :cond_4
    move v11, v9

    .line 216
    goto :goto_1

    .restart local v11    # "vertical":Z
    :cond_5
    move v8, v14

    .line 219
    goto :goto_2

    .line 226
    .end local v11    # "vertical":Z
    :pswitch_0
    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v14

    div-float/2addr v1, v4

    int-to-float v2, v10

    div-float/2addr v2, v4

    .line 230
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .restart local v0    # "shader":Landroid/graphics/Shader;
    goto :goto_3

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->p:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 130
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 162
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2167
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 2168
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 2172
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->d:I

    packed-switch v4, :pswitch_data_0

    .line 2175
    neg-float v4, v2

    .line 2200
    sub-float v5, v2, v4

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 2192
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2193
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->n:F

    div-float v1, v2, v6

    div-float v2, v3, v6

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2196
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 164
    return-void

    :cond_0
    move v0, v1

    .line 2171
    goto :goto_0

    .line 2179
    :pswitch_0
    neg-float v4, v2

    .line 3200
    sub-float/2addr v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 2181
    goto :goto_1

    .line 2184
    :pswitch_1
    neg-float v4, v3

    .line 4200
    sub-float v5, v3, v4

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    move v7, v0

    move v0, v1

    move v1, v7

    .line 2185
    goto :goto_1

    .line 2188
    :pswitch_2
    neg-float v4, v3

    .line 5200
    sub-float/2addr v4, v3

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    move v7, v0

    move v0, v1

    move v1, v7

    .line 2188
    goto :goto_1

    .line 2172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 151
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c()V

    .line 152
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->a()V

    .line 158
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getWidth()I

    move-result v1

    .line 141
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->getHeight()I

    move-result v0

    .line 142
    .local v0, "height":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->f:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    .line 2134
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2135
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget v6, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->n:F

    const/high16 v7, 0x42b40000    # 90.0f

    rem-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 2136
    int-to-double v6, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double v4, v6, v4

    .line 2137
    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-float v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    .line 2138
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->c:Landroid/graphics/RectF;

    neg-int v5, v3

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a(I)I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->e:Landroid/graphics/RectF;

    neg-int v3, v1

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v4, v0

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-int/lit8 v5, v1, 0x4

    int-to-float v5, v5

    mul-int/lit8 v6, v0, 0x4

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->b()V

    .line 145
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/ShimmerFrameLayout;->c()V

    .line 146
    return-void
.end method
