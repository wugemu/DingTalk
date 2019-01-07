.class public Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;
.super Landroid/widget/FrameLayout;
.source "ConnectionLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;,
        Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;
    }
.end annotation


# static fields
.field private static final d:F

.field private static final e:F

.field private static final f:F

.field private static final g:F


# instance fields
.field public a:I

.field public b:Landroid/widget/ImageView;

.field public c:Ljava/lang/Runnable;

.field private h:F

.field private i:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

.field private j:Landroid/animation/ObjectAnimator;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->d:F

    .line 33
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->e:F

    .line 34
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->f:F

    .line 36
    sget v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->d:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->g:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->d()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->d()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->l:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;

    return-object v0
.end method

.method static synthetic b()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->d:F

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->h:F

    return v0
.end method

.method static synthetic c()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->f:F

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    .line 1079
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    sget v1, Lezg$g;->circle_loading_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1081
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->e:F

    float-to-int v1, v1

    sget v2, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->e:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1082
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1083
    sget v1, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->f:F

    sget v2, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->e:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1084
    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->addView(Landroid/view/View;)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1115
    new-instance v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->i:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->i:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 176
    iput-object v2, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->i:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->setPullDistance(F)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iput-object v2, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c:Ljava/lang/Runnable;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRotation()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRotation()F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 103
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->k:Landroid/animation/ObjectAnimator;

    .line 111
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 112
    return-void
.end method

.method public setCircleLoadingCallback(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->l:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;

    .line 188
    return-void
.end method

.method public setPullDistance(F)V
    .locals 4
    .param p1, "distance"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->h:F

    .line 121
    iget v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 126
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->i:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;->setPullDistance(F)V

    .line 128
    sget v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->g:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a:I

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->i:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$DropDrawable;

    const-string/jumbo v1, "dropProcess"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->j:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$1;-><init>(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    :cond_1
    return-void

    .line 130
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
