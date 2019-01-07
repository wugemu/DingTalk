.class public Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;
.super Landroid/widget/RelativeLayout;
.source "RippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;
    }
.end annotation


# static fields
.field private static final c:[I

.field private static final d:I


# instance fields
.field public a:Z

.field public b:Landroid/animation/AnimatorSet;

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/graphics/Paint;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/widget/RelativeLayout$LayoutParams;

.field private o:I

.field private p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->c:[I

    .line 30
    const/16 v0, 0x32

    const/16 v1, 0x96

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->d:I

    return-void

    .line 27
    nop

    :array_0
    .array-data 4
        0x0
        0x4b0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    sget v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->d:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->e:I

    .line 36
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->f:F

    .line 42
    const/16 v0, 0x898

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->h:I

    .line 45
    const/16 v0, 0x640

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->i:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->j:I

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->k:F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->p:Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->d:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->e:I

    .line 36
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->f:F

    .line 42
    const/16 v0, 0x898

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->h:I

    .line 45
    const/16 v0, 0x640

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->i:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->j:I

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->k:F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->p:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->d:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->e:I

    .line 36
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->f:F

    .line 42
    const/16 v0, 0x898

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->h:I

    .line 45
    const/16 v0, 0x640

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->i:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->j:I

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->k:F

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->p:Ljava/lang/Runnable;

    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b()V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 84
    .line 1091
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1093
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->f:F

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1103
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1107
    const/high16 v0, 0x427c0000    # 63.0f

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->g:F

    .line 1109
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->g:F

    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->f:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->o:I

    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->c()V

    .line 88
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->o:I

    return v0
.end method

.method private c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->j:I

    if-ge v0, v4, :cond_1

    .line 144
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;Landroid/content/Context;)V

    .line 145
    .local v1, "rippleView":Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const-wide/16 v2, 0x0

    .line 149
    .local v2, "startDelay":J
    if-le v10, v0, :cond_0

    .line 150
    sget-object v4, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->c:[I

    aget v4, v4, v0

    int-to-long v2, v4

    .line 154
    :cond_0
    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->i:I

    int-to-long v4, v4

    .line 1181
    const-string/jumbo v6, "scaleX"

    new-array v7, v10, [F

    aput v12, v7, v13

    iget v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->k:F

    aput v8, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1183
    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1184
    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1185
    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1186
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1187
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    const-string/jumbo v6, "scaleY"

    new-array v7, v10, [F

    aput v12, v7, v13

    iget v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->k:F

    aput v8, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1192
    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1193
    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1194
    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1195
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1196
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1201
    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1202
    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1203
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1204
    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1205
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "rippleView":Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;
    .end local v2    # "startDelay":J
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    iget v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->h:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 158
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 162
    return-void

    .line 1199
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->f:F

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->l:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 229
    .line 1237
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 229
    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 234
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 115
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 117
    .local v3, "widthSize":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 118
    :cond_0
    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->g:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 121
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 122
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 124
    .local v1, "heightSize":I
    if-eq v0, v6, :cond_2

    if-nez v0, :cond_3

    .line 125
    :cond_2
    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->g:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 128
    :cond_3
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 129
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 128
    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 132
    return-void
.end method
