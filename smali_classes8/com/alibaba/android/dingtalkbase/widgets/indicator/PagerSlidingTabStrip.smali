.class public Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$b;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field private A:I

.field private B:Ljava/util/Locale;

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

.field public a:Landroid/support/v4/view/ViewPager$d;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private final e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/content/res/ColorStateList;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;

    invoke-direct {v2, p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;B)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;

    .line 150
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    .line 156
    const/high16 v2, -0x10000

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    .line 157
    const v2, -0x636364

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    .line 158
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->n:I

    .line 160
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->o:Z

    .line 161
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->p:Z

    .line 163
    const/16 v2, 0x34

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    .line 164
    const/16 v2, 0x8

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    .line 165
    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    .line 166
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->t:I

    .line 167
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    .line 168
    const/16 v2, 0x18

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    .line 171
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    .line 172
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    .line 174
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->z:I

    .line 176
    const v2, 0x106000b

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->A:I

    .line 191
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 193
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 194
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 200
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    .line 201
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    .line 202
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    .line 203
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    .line 204
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    .line 206
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    .line 210
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    .line 213
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    .line 215
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    sget-object v2, Lcig$l;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    .line 222
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsUnderlineResid:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->t:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->t:I

    .line 224
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    .line 225
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->n:I

    .line 226
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    .line 227
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsTabTextSize:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    .line 228
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    .line 229
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    .line 230
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    .line 231
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->A:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->A:I

    .line 232
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->o:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->o:Z

    .line 233
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    .line 234
    sget v2, Lcig$l;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->p:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->p:Z

    .line 236
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    .line 239
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->B:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->B:Ljava/util/Locale;

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 272
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 274
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v2

    invoke-virtual {v2}, Lgl;->getCount()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->h:I

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->h:I

    if-ge v0, v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$b;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$b;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$b;->a()I

    move-result v2

    .line 1375
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1376
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1378
    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    .line 276
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;

    if-eqz v2, :cond_1

    .line 281
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;Landroid/content/Context;)V

    .line 282
    .local v1, "tabView":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;I)I

    .line 2096
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 283
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lgl;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    goto :goto_1

    .line 325
    .end local v1    # "tabView":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgl;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2365
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2366
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2367
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2368
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 2370
    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    goto :goto_1

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b()V

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 350
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 383
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 385
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 386
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 387
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;II)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 51
    .line 9440
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->h:I

    if-eqz v0, :cond_3

    .line 9444
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9445
    const/4 v0, 0x0

    .line 9446
    if-eqz v1, :cond_0

    .line 9447
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 9449
    :cond_0
    add-int/2addr v0, p2

    .line 9451
    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 9452
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    sub-int/2addr v0, v1

    .line 9455
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->z:I

    if-eq v0, v1, :cond_3

    .line 9456
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->z:I

    .line 51
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->C:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->h:I

    if-ge v0, v3, :cond_4

    .line 393
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 397
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 399
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    .line 3096
    .local v1, "tab":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 400
    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 401
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->y:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 4096
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 402
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 409
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->p:Z

    if-eqz v3, :cond_1

    .line 410
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    .line 6096
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 411
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 391
    .end local v1    # "tab":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .restart local v1    # "tab":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    :cond_2
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    if-eqz v3, :cond_0

    .line 5096
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 404
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 7096
    :cond_3
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 8096
    iget-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 413
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->B:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 418
    .end local v1    # "tab":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "noticeCount"    # I
    .param p3, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 432
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    .line 9111
    .end local v0    # "tabView":Landroid/view/View;
    if-gtz p3, :cond_1

    .line 9112
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9113
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9123
    :cond_0
    :goto_0
    return-void

    .line 9115
    :cond_1
    if-nez p2, :cond_2

    .line 9116
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9117
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9119
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9120
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9122
    const/16 v1, 0x63

    if-le p2, v1, :cond_3

    .line 9123
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "99+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9125
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 421
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 425
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    if-eqz v1, :cond_0

    .line 426
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;

    .line 9096
    .end local v0    # "tabView":Landroid/view/View;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 426
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->n:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->o:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->A:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 468
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getHeight()I

    move-result v11

    .line 478
    .local v11, "height":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 483
    .local v10, "currentTab":Landroid/view/View;
    if-eqz v10, :cond_3

    .line 484
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 485
    .local v1, "lineLeft":F
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 488
    .local v3, "lineRight":F
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->h:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 492
    .local v12, "nextTab":Landroid/view/View;
    if-eqz v12, :cond_2

    .line 493
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v13, v0

    .line 494
    .local v13, "nextTabLeft":F
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v14, v0

    .line 496
    .local v14, "nextTabRight":F
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    mul-float/2addr v0, v13

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v1

    add-float v1, v0, v2

    .line 497
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    mul-float/2addr v0, v14

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 501
    .end local v12    # "nextTab":Landroid/view/View;
    .end local v13    # "nextTabLeft":F
    .end local v14    # "nextTabRight":F
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    sub-int v0, v11, v0

    int-to-float v2, v0

    int-to-float v4, v11

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 506
    .end local v1    # "lineLeft":F
    .end local v3    # "lineRight":F
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    const/4 v5, 0x0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    sub-int v0, v11, v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v7, v0

    int-to-float v8, v11

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 726
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;

    .line 727
    .local v0, "savedState":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 728
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    .line 729
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->requestLayout()V

    .line 730
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 734
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 735
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 736
    .local v0, "savedState":Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 737
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->p:Z

    .line 672
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "currentPosition"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;->onPageSelected(I)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->j:F

    .line 359
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->i:I

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 361
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 617
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->n:I

    .line 618
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 619
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->n:I

    .line 623
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 624
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 640
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->u:I

    .line 641
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 642
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 580
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 582
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->l:I

    .line 586
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 587
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 594
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->r:I

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 596
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$d;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$d;

    .line 268
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->C:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$c;

    .line 464
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 649
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->q:I

    .line 650
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 651
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->o:Z

    .line 659
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->requestLayout()V

    .line 660
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 708
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->A:I

    .line 709
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 716
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->v:I

    .line 717
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b()V

    .line 718
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 684
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    .line 685
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b()V

    .line 686
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->x:I

    .line 690
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b()V

    .line 691
    return-void
.end method

.method public setTextColorSeletor(I)V
    .locals 3
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 695
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 696
    .local v1, "xrp":Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->y:Landroid/content/res/ColorStateList;

    .line 697
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v1    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 675
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->w:I

    .line 676
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->b()V

    .line 677
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 603
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    .line 604
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 605
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->m:I

    .line 609
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 610
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 631
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->s:I

    .line 632
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->invalidate()V

    .line 633
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    .line 257
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$d;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 263
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a()V

    .line 264
    return-void
.end method
