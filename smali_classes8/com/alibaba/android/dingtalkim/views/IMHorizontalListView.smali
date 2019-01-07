.class public Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
.super Landroid/widget/AdapterView;
.source "IMHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$c;,
        Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$b;,
        Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener;,
        Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$e;,
        Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;,
        Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;
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
.field private A:Landroid/support/v4/widget/EdgeEffectCompat;

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/database/DataSetObserver;

.field private G:Ljava/lang/Runnable;

.field protected a:Landroid/widget/Scroller;

.field protected b:Landroid/widget/ListAdapter;

.field protected c:I

.field protected d:I

.field private final e:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;

.field private final f:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private g:Landroid/view/GestureDetector;

.field private h:Landroid/view/GestureDetector;

.field private i:I

.field private j:Ljava/util/List;
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

.field private k:Z

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/view/View;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/Integer;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$e;

.field private v:I

.field private w:Z

.field private x:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener;

.field private y:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

.field private z:Landroid/support/v4/widget/EdgeEffectCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    .line 103
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->e:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;

    .line 105
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->f:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->j:Ljava/util/List;

    .line 122
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->k:Z

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    .line 128
    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    .line 131
    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    .line 134
    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->o:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->p:Ljava/lang/Integer;

    .line 146
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    .line 160
    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->u:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$e;

    .line 165
    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->v:I

    .line 170
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->w:Z

    .line 175
    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->x:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener;

    .line 180
    sget-object v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->y:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 196
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->C:Z

    .line 199
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->D:Z

    .line 339
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->F:Landroid/database/DataSetObserver;

    .line 618
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->G:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 209
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 210
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->e:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->g:Landroid/view/GestureDetector;

    .line 211
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->f:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->h:Landroid/view/GestureDetector;

    .line 2225
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 2233
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a()V

    .line 214
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setWillNotDraw(Z)V

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    const v1, 0x3c1374bc    # 0.009f

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$b;->a(Landroid/widget/Scroller;F)V

    .line 220
    :cond_0
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
    .line 816
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildCount()I

    move-result v0

    .line 818
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 819
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 820
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 818
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->g:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private a(I)Landroid/view/View;
    .locals 2
    .param p1, "adapterIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 421
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 423
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 427
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
    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 479
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 484
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

    .line 322
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    .line 323
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    .line 324
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    .line 325
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    .line 326
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 327
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    .line 328
    sget-object v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 329
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
    .line 440
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 441
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 444
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 945
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

    .line 452
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 453
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 3463
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3464
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->B:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 3467
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 3468
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3473
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 455
    return-void

    .line 3470
    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 82
    .line 11253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 11273
    :cond_0
    :goto_0
    return-void

    .line 11256
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    add-int/2addr v0, p1

    .line 11259
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11261
    :cond_2
    if-gez v0, :cond_3

    .line 11264
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11267
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    .line 11270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 12098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 11270
    if-nez v0, :cond_0

    .line 11271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    goto :goto_0

    .line 11273
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    if-le v0, v1, :cond_0

    .line 11277
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11280
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    .line 11283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 13098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 11283
    if-nez v0, :cond_0

    .line 11284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "disallowIntercept"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->D:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 250
    move-object v0, p0

    .line 252
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 256
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->D:Z

    .line 263
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 260
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->k:Z

    return v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a()V

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->removeAllViewsInLayout()V

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 336
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d()V

    return-void
.end method

.method private b(I)Z
    .locals 1
    .param p1, "itemViewType"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->j:Ljava/util/List;

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

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->w:Z

    return v0
.end method

.method private c()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$c;->a(Landroid/widget/Scroller;)F

    move-result v0

    .line 613
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b()V

    return-void
.end method

.method private c(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 830
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

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

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1005
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->refreshDrawableState()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    .line 1010
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->C:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 82
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    .line 1136
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->E:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLeftmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRenderHeight()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingBottom()I

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
    .line 840
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRightmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0
    .param p1, "newScrollState"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->y:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 1245
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

    .line 966
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    neg-float v3, p1

    float-to-int v3, v3

    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 967
    sget-object v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 968
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 969
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

    .line 974
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->C:Z

    .line 977
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 978
    sget-object v1, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 980
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d()V

    .line 982
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->C:Z

    if-nez v1, :cond_0

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(II)I

    move-result v0

    .line 985
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 987
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    .line 989
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->m:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 992
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->refreshDrawableState()V

    .line 997
    .end local v0    # "index":I
    :cond_0
    return v2

    .line 974
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 955
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9862
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 10098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 9862
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9865
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getHeight()I

    move-result v1

    .line 9867
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 9868
    neg-int v1, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9870
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 9871
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9872
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->invalidate()V

    .line 9875
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9876
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 11098
    iget-object v0, v0, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 9876
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9878
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9879
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getWidth()I

    move-result v1

    .line 9881
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v2, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 9882
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9883
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 9884
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9885
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->invalidate()V

    .line 9888
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 963
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 577
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    if-nez v1, :cond_0

    .line 578
    const/4 v1, 0x0

    .line 584
    :goto_0
    return v1

    .line 579
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    if-ge v1, v0, :cond_1

    .line 581
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 584
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 593
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    if-ne v1, v2, :cond_0

    .line 594
    const/4 v1, 0x0

    .line 600
    :goto_0
    return v1

    .line 595
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 597
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 600
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 375
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->t:I

    .line 2799
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    if-gt v0, v1, :cond_0

    .line 2800
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2803
    :cond_0
    const/4 v0, 0x0

    .line 375
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 949
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 8894
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildCount()I

    move-result v1

    .line 8897
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    .line 8898
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingTop()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 8899
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 8902
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 8904
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8905
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8907
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8908
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 8911
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 8912
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8916
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    .line 8917
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 8921
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 8925
    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 8926
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 8927
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 8928
    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 8902
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
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
    .line 490
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 492
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->invalidate()V

    .line 500
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->k:Z

    if-eqz v2, :cond_2

    .line 501
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    .line 502
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a()V

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->removeAllViewsInLayout()V

    .line 504
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 505
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->k:Z

    .line 509
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->p:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 510
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 511
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->p:Ljava/lang/Integer;

    .line 515
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 521
    :cond_4
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    if-gez v2, :cond_7

    .line 522
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 525
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 4098
    iget-object v2, v2, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    .line 525
    if-eqz v2, :cond_5

    .line 526
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 530
    sget-object v2, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 545
    :cond_6
    :goto_1
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    sub-int v0, v2, v3

    .line 5689
    .local v0, "dx":I
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 5692
    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    if-gtz v2, :cond_a

    .line 5696
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_3
    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    .line 5699
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(ILandroid/view/View;)V

    .line 5702
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 5705
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    .line 5708
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    .line 531
    .end local v0    # "dx":I
    :cond_7
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    if-le v2, v3, :cond_6

    .line 533
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 536
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 5098
    iget-object v2, v2, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    .line 536
    if-eqz v2, :cond_8

    .line 537
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 540
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 541
    sget-object v2, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    .line 5696
    .restart local v0    # "dx":I
    :cond_9
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_3

    .line 5711
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v2

    .line 5714
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_b

    .line 5715
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(ILandroid/view/View;)V

    .line 5716
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 5717
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    goto :goto_4

    .line 6668
    :cond_b
    const/4 v2, 0x0

    .line 6669
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v3

    .line 6670
    if-eqz v3, :cond_c

    .line 6671
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 6724
    :cond_c
    :goto_5
    add-int v3, v2, v0

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 6725
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    .line 6728
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    if-gez v3, :cond_d

    .line 6729
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    .line 6733
    :cond_d
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 6734
    const/4 v3, -0x1

    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/view/View;I)V

    .line 6737
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    if-nez v3, :cond_e

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 6741
    goto :goto_5

    .line 6737
    :cond_e
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    goto :goto_6

    .line 6678
    :cond_f
    const/4 v2, 0x0

    .line 6679
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v3

    .line 6680
    if-eqz v3, :cond_10

    .line 6681
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 7746
    :cond_10
    :goto_7
    add-int v3, v2, v0

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_13

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    if-lez v3, :cond_13

    .line 7747
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    .line 7748
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 7749
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/view/View;I)V

    .line 7752
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->r:I

    if-nez v3, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_8
    sub-int/2addr v2, v3

    .line 7755
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    add-int v3, v2, v0

    if-nez v3, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_9
    sub-int v3, v5, v3

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    goto :goto_7

    .line 7752
    :cond_11
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_8

    .line 7755
    :cond_12
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_9

    .line 7761
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildCount()I

    move-result v4

    .line 7763
    if-lez v4, :cond_14

    .line 7764
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    .line 7765
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->i:I

    .line 7768
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_14

    .line 7769
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7770
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    .line 7771
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingTop()I

    move-result v7

    .line 7772
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 7773
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 7776
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 7779
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 7768
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 551
    :cond_14
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    .line 8642
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->s:I

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8643
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v2

    .line 8645
    if-eqz v2, :cond_16

    .line 8646
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    .line 8649
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getRenderWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    .line 8652
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    if-gez v2, :cond_15

    .line 8653
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    .line 8656
    :cond_15
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->q:I

    if-eq v2, v3, :cond_16

    .line 8657
    const/4 v2, 0x1

    .line 554
    :goto_b
    if-eqz v2, :cond_17

    .line 556
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->onLayout(ZIIII)V

    goto/16 :goto_0

    .line 8662
    :cond_16
    const/4 v2, 0x0

    goto :goto_b

    .line 561
    :cond_17
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 563
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->y:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v3, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v2, v3, :cond_0

    .line 564
    sget-object v2, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_0

    .line 568
    :cond_18
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->G:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 627
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 630
    iput p2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->B:I

    .line 631
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 280
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 281
    check-cast v0, Landroid/os/Bundle;

    .line 284
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->p:Ljava/lang/Integer;

    .line 287
    const-string/jumbo v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
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
    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    const-string/jumbo v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
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

    .line 1106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setCurrentScrollState(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1113
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Ljava/lang/Boolean;)V

    .line 1115
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->e()V

    .line 1124
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1116
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1117
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d()V

    .line 1118
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->e()V

    .line 1121
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->F:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 384
    :cond_0
    if-eqz p1, :cond_1

    .line 386
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->w:Z

    .line 388
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    .line 389
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->F:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    .line 3408
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3409
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3410
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->j:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b()V

    .line 394
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->o:Landroid/graphics/drawable/Drawable;

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setDividerWidth(I)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setDividerWidth(I)V

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->n:I

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 318
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->invalidate()V

    .line 319
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->E:Landroid/view/View$OnClickListener;

    .line 1192
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener;

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->x:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener;

    .line 1232
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->t:I

    .line 371
    return-void
.end method
