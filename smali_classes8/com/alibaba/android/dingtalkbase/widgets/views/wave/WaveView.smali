.class public Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctb;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:F

.field private e:I

.field private f:F

.field private g:I

.field private h:F

.field private i:Z

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->wave_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->e:I

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcms;->b(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->i:Z

    .line 58
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->j:Ljava/lang/Runnable;

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcig$l;->WaveView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 63
    sget v1, Lcig$l;->WaveView_wvCircleColor:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->e:I

    .line 64
    sget v1, Lcig$l;->WaveView_wvCircleInnerRadius:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    new-instance v0, Lctb;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->e:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lctb;-><init>(IFI)V

    .line 75
    .local v0, "circle":Lctb;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "circle":Lctb;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->j:Ljava/lang/Runnable;

    .line 114
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    .line 100
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->f:F

    .line 101
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->g:I

    .line 102
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->h:F

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctb;

    .line 1118
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    iget v4, v0, Lctb;->a:F

    iget-object v5, v0, Lctb;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1119
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->f:F

    .line 2052
    iget v3, v0, Lctb;->a:F

    iget v4, v0, Lctb;->d:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Lctb;->a:F

    .line 2053
    iget v2, v0, Lctb;->d:F

    float-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Lctb;->d:F

    .line 1120
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->g:I

    .line 3039
    iget v3, v0, Lctb;->b:I

    sub-int v2, v3, v2

    iput v2, v0, Lctb;->b:I

    .line 3040
    iget v2, v0, Lctb;->b:I

    if-ge v2, v7, :cond_1

    .line 3041
    iput v7, v0, Lctb;->b:I

    goto :goto_0

    .line 3044
    :cond_1
    iget-object v2, v0, Lctb;->c:Landroid/graphics/Paint;

    iget v0, v0, Lctb;->b:I

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1123
    if-gtz v1, :cond_4

    .line 1124
    :cond_3
    :goto_1
    return-void

    .line 1126
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctb;

    iget v0, v0, Lctb;->a:F

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->h:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 1127
    new-instance v0, Lctb;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->e:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->d:F

    const/16 v4, 0xff

    invoke-direct {v0, v2, v3, v4}, Lctb;-><init>(IFI)V

    .line 1128
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    :cond_5
    const/4 v0, 0x3

    if-gt v1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctb;

    iget v0, v0, Lctb;->b:I

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctb;

    iget v0, v0, Lctb;->a:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1131
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method
