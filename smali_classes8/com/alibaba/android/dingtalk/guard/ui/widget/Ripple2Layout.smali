.class public Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;
.super Landroid/widget/RelativeLayout;
.source "Ripple2Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field a:Z

.field private final c:[F

.field private final d:[F

.field private final e:[I

.field private f:I

.field private g:F

.field private h:I

.field private i:F

.field private j:Z

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/widget/RelativeLayout$LayoutParams;

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:I

.field private p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x38

    const/16 v1, 0xad

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->c:[F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->d:[F

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->e:[I

    .line 40
    sget v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->b:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->f:I

    .line 43
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->g:F

    .line 46
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->h:I

    .line 51
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->j:Z

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->n:Landroid/os/Handler;

    .line 128
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a:Z

    .line 144
    iput v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->o:I

    .line 146
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->p:Ljava/lang/Runnable;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a()V

    .line 65
    return-void

    .line 25
    .line 30
    .line 35
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x400ccccd    # 2.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x1f4
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->c:[F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->d:[F

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->e:[I

    .line 40
    sget v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->b:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->f:I

    .line 43
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->g:F

    .line 46
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->h:I

    .line 51
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->j:Z

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->n:Landroid/os/Handler;

    .line 128
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a:Z

    .line 144
    iput v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->o:I

    .line 146
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->p:Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a()V

    .line 70
    return-void

    .line 25
    .line 30
    .line 35
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x400ccccd    # 2.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x1f4
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->c:[F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->d:[F

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->e:[I

    .line 40
    sget v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->b:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->f:I

    .line 43
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->g:F

    .line 46
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->h:I

    .line 51
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->j:Z

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->n:Landroid/os/Handler;

    .line 128
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a:Z

    .line 144
    iput v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->o:I

    .line 146
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->p:Ljava/lang/Runnable;

    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a()V

    .line 75
    return-void

    .line 25
    .line 30
    .line 35
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
        0x400ccccd    # 2.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x1f4
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->m:I

    return v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 78
    .line 1084
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1095
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->l:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->l:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1099
    const/high16 v0, 0x42780000    # 62.0f

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->i:F

    .line 1101
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->i:F

    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->g:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->m:I

    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->b()V

    .line 81
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->g:F

    return v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->h:I

    if-ge v0, v2, :cond_0

    .line 110
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;Landroid/content/Context;)V

    .line 111
    .local v1, "rippleView":Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->c:[F

    aget v2, v2, v0

    .line 1218
    iput v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->a:F

    .line 1219
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->invalidate()V

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->d:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->setAlpha(F)V

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->l:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "rippleView":Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->k:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a:Z

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a:Z

    .line 141
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 142
    return-void
.end method
