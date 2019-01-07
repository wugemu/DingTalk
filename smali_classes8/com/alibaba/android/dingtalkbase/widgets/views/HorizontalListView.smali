.class public Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$e;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/view/View$OnClickListener;

.field private D:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

.field private E:Landroid/database/DataSetObserver;

.field private F:Ljava/lang/Runnable;

.field private final a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;

.field protected b:Landroid/widget/Scroller;

.field protected c:Landroid/widget/ListAdapter;

.field protected d:I

.field protected e:I

.field private f:Landroid/view/GestureDetector;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/lang/Integer;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$e;

.field private t:I

.field private u:Z

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field private x:Landroid/support/v4/widget/EdgeEffectCompat;

.field private y:Landroid/support/v4/widget/EdgeEffectCompat;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 210
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isEnableEdgeGlow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    .line 107
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->h:Ljava/util/List;

    .line 122
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->i:Z

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    .line 128
    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    .line 131
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    .line 134
    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->m:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->n:Ljava/lang/Integer;

    .line 146
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    .line 160
    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$e;

    .line 165
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->t:I

    .line 170
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->u:Z

    .line 175
    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    .line 180
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 196
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->A:Z

    .line 199
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->B:Z

    .line 374
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->E:Landroid/database/DataSetObserver;

    .line 653
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->F:Ljava/lang/Runnable;

    .line 215
    if-eqz p3, :cond_0

    .line 216
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 217
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 219
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->f:Landroid/view/GestureDetector;

    .line 2234
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 2245
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a()V

    .line 2280
    if-eqz p2, :cond_3

    .line 2281
    sget-object v0, Lcig$l;->HorizontalListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2284
    sget v1, Lcig$l;->HorizontalListView_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2285
    if-eqz v1, :cond_1

    .line 2287
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2291
    :cond_1
    sget v1, Lcig$l;->HorizontalListView_dividerWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 2292
    if-eqz v1, :cond_2

    .line 2293
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setDividerWidth(I)V

    .line 2296
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setWillNotDraw(Z)V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    const v1, 0x3c1374bc    # 0.009f

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$b;->a(Landroid/widget/Scroller;F)V

    .line 229
    :cond_4
    return-void
.end method

.method private a(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildCount()I

    move-result v0

    .line 853
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 854
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 855
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 853
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->f:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private a(I)Landroid/view/View;
    .locals 2
    .param p1, "adapterIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 456
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 458
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 462
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 514
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 519
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 357
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    .line 358
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    .line 359
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    .line 360
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    .line 361
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 362
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    .line 363
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 364
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 2
    .param p1, "adapterIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 475
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 476
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 479
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 985
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 987
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 487
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 488
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 3498
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3499
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->z:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 3502
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 3503
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3508
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 490
    return-void

    .line 3505
    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 86
    .line 11298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 11318
    :cond_0
    :goto_0
    return-void

    .line 11301
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    add-int/2addr v0, p1

    .line 11304
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11306
    :cond_2
    if-gez v0, :cond_3

    .line 11309
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11312
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    .line 11315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 12098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 11315
    if-nez v0, :cond_0

    .line 11316
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    goto :goto_0

    .line 11318
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    if-le v0, v1, :cond_0

    .line 11322
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11325
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    .line 11328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 13098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 11328
    if-nez v0, :cond_0

    .line 11329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "disallowIntercept"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 257
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->B:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 258
    move-object v0, p0

    .line 260
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 264
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->B:Z

    .line 271
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 268
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->i:Z

    return v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a()V

    .line 369
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->removeAllViewsInLayout()V

    .line 370
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 371
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->u:Z

    return v0
.end method

.method private c()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$c;->a(Landroid/widget/Scroller;)F

    move-result v0

    .line 648
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b()V

    return-void
.end method

.method private c(I)Z
    .locals 1
    .param p1, "itemViewType"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->refreshDrawableState()V

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    .line 1052
    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->A:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    .line 1181
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->C:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1340
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->D:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

    return-object v0
.end method

.method private getRenderHeight()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1
    .param p1, "newScrollState"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1289
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 1290
    return-void
.end method


# virtual methods
.method protected final a(F)Z
    .locals 9
    .param p1, "velocityX"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1008
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    neg-float v3, p1

    float-to-int v3, v3

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1009
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1010
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 1011
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1016
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->A:Z

    .line 1019
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1020
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1022
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d()V

    .line 1024
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->A:Z

    if-nez v1, :cond_0

    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(II)I

    move-result v0

    .line 1027
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1029
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    .line 1031
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1034
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->refreshDrawableState()V

    .line 1039
    .end local v0    # "index":I
    :cond_0
    return v2

    .line 1016
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4
    .param p1, "x"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 880
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 881
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 882
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 883
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 997
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9904
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 10098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 9904
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9906
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9907
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getHeight()I

    move-result v1

    .line 9909
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 9910
    neg-int v1, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9912
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 9913
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9914
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->invalidate()V

    .line 9917
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9918
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 11098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 9918
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9920
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9921
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v1

    .line 9923
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v2, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 9924
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9925
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 9926
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9927
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->invalidate()V

    .line 9930
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 1005
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 612
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    if-nez v1, :cond_0

    .line 613
    const/4 v1, 0x0

    .line 619
    :goto_0
    return v1

    .line 614
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    if-ge v1, v0, :cond_1

    .line 616
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 619
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getLeftmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getOnItemDoubleClickListener()Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->D:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 628
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    if-ne v1, v2, :cond_0

    .line 629
    const/4 v1, 0x0

    .line 635
    :goto_0
    return v1

    .line 630
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 632
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 635
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getRightmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 410
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->r:I

    .line 2834
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    if-gt v0, v1, :cond_0

    .line 2835
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2838
    :cond_0
    const/4 v0, 0x0

    .line 410
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 991
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 8936
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildCount()I

    move-result v1

    .line 8939
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    .line 8940
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingTop()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 8941
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 8944
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 8946
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8947
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8949
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8950
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 8953
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 8954
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8958
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    .line 8959
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 8963
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 8967
    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 8968
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8969
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 8970
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 8944
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 525
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 527
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->invalidate()V

    .line 535
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->i:Z

    if-eqz v2, :cond_2

    .line 536
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    .line 537
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a()V

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->removeAllViewsInLayout()V

    .line 539
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 540
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->i:Z

    .line 544
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->n:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 545
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->n:Ljava/lang/Integer;

    .line 550
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 556
    :cond_4
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    if-gez v2, :cond_7

    .line 557
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 560
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 4098
    iget-object v2, v2, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    .line 560
    if-eqz v2, :cond_5

    .line 561
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 564
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 565
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 580
    :cond_6
    :goto_1
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    sub-int v0, v2, v3

    .line 5724
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 5727
    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    if-gtz v2, :cond_a

    .line 5731
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_3
    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    .line 5734
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(ILandroid/view/View;)V

    .line 5737
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 5740
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    .line 5743
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    .line 566
    .end local v0    # "dx":I
    :cond_7
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    if-le v2, v3, :cond_6

    .line 568
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 571
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 5098
    iget-object v2, v2, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    .line 571
    if-eqz v2, :cond_8

    .line 572
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 575
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 576
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    .line 5731
    .restart local v0    # "dx":I
    :cond_9
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_3

    .line 5746
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v2

    .line 5749
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_b

    .line 5750
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(ILandroid/view/View;)V

    .line 5751
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 5752
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    goto :goto_4

    .line 6703
    :cond_b
    const/4 v2, 0x0

    .line 6704
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v3

    .line 6705
    if-eqz v3, :cond_c

    .line 6706
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 6759
    :cond_c
    :goto_5
    add-int v3, v2, v0

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 6760
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    .line 6763
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    if-gez v3, :cond_d

    .line 6764
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    .line 6768
    :cond_d
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 6769
    const/4 v3, -0x1

    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/view/View;I)V

    .line 6772
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    if-nez v3, :cond_e

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 6776
    goto :goto_5

    .line 6772
    :cond_e
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    goto :goto_6

    .line 6713
    :cond_f
    const/4 v2, 0x0

    .line 6714
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v3

    .line 6715
    if-eqz v3, :cond_10

    .line 6716
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 7781
    :cond_10
    :goto_7
    add-int v3, v2, v0

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_13

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    if-lez v3, :cond_13

    .line 7782
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    .line 7783
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 7784
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/view/View;I)V

    .line 7787
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->p:I

    if-nez v3, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_8
    sub-int/2addr v2, v3

    .line 7790
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    add-int v3, v2, v0

    if-nez v3, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_9
    sub-int v3, v5, v3

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    goto :goto_7

    .line 7787
    :cond_11
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_8

    .line 7790
    :cond_12
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    .line 7796
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildCount()I

    move-result v4

    .line 7798
    if-lez v4, :cond_14

    .line 7799
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    .line 7800
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g:I

    .line 7803
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_14

    .line 7804
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7805
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    .line 7806
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingTop()I

    move-result v7

    .line 7807
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 7808
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 7811
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 7814
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 7803
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 586
    :cond_14
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    .line 8677
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->q:I

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8678
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v2

    .line 8680
    if-eqz v2, :cond_16

    .line 8681
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    .line 8684
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getRenderWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    .line 8687
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    if-gez v2, :cond_15

    .line 8688
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    .line 8691
    :cond_15
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->o:I

    if-eq v2, v3, :cond_16

    .line 8692
    const/4 v2, 0x1

    .line 589
    :goto_b
    if-eqz v2, :cond_17

    .line 591
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->onLayout(ZIIII)V

    goto/16 :goto_0

    .line 8697
    :cond_16
    const/4 v2, 0x0

    goto :goto_b

    .line 596
    :cond_17
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 598
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v2, v3, :cond_0

    .line 599
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_0

    .line 603
    :cond_18
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->F:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 662
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 665
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->z:I

    .line 666
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 315
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 316
    check-cast v0, Landroid/os/Bundle;

    .line 319
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->n:Ljava/lang/Integer;

    .line 322
    const-string/jumbo v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 324
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    const-string/jumbo v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1155
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Ljava/lang/Boolean;)V

    .line 1157
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e()V

    .line 1159
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d()V

    .line 1169
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1161
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1162
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d()V

    .line 1163
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e()V

    .line 1166
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 887
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b:Landroid/widget/Scroller;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    sub-int v3, p1, v3

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 888
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 889
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 890
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->E:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 419
    :cond_0
    if-eqz p1, :cond_1

    .line 421
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->u:Z

    .line 423
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->E:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    .line 3443
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3444
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3445
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->h:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b()V

    .line 429
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->m:Landroid/graphics/drawable/Drawable;

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setDividerWidth(I)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setDividerWidth(I)V

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->l:I

    .line 352
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 353
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->invalidate()V

    .line 354
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->C:Landroid/view/View$OnClickListener;

    .line 1237
    return-void
.end method

.method public setOnItemDoubleClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->D:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

    .line 1385
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    .line 1277
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->r:I

    .line 406
    return-void
.end method
