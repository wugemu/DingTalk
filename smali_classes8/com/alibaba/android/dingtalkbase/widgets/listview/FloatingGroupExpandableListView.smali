.class public Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "FloatingGroupExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[[I


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private final C:Landroid/graphics/Rect;

.field private f:Lcrk;

.field private g:Landroid/database/DataSetObserver;

.field private h:Landroid/widget/AbsListView$OnScrollListener;

.field private i:Z

.field private j:Landroid/view/View;

.field private k:I

.field private l:I

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$a;

.field private n:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private o:I

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/Runnable;

.field private t:Landroid/view/GestureDetector;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:I

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v2, [I

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a:[I

    .line 31
    new-array v0, v3, [I

    const v1, 0x10100a8

    aput v1, v0, v2

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->b:[I

    .line 34
    new-array v0, v3, [I

    const v1, 0x10100a9

    aput v1, v0, v2

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c:[I

    .line 37
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->d:[I

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->b:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->d:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e:[[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->C:Landroid/graphics/Rect;

    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->C:Landroid/graphics/Rect;

    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->C:Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a()V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->h:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 116
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->s:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->A:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->B:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->t:Landroid/view/GestureDetector;

    .line 173
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 495
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->y:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    .line 497
    .local v1, "selectorListPosition":I
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 499
    .local v0, "floatingGroupFlatPosition":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->y:I

    if-eq v2, v0, :cond_1

    .line 500
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c(Landroid/graphics/Canvas;)V

    .line 503
    .end local v0    # "floatingGroupFlatPosition":I
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;
    .param p1, "x1"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 26
    .line 2360
    iput-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    .line 2361
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    move v1, v2

    .line 2363
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2364
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2365
    sget v0, Lcig$f;->fgelv_tag_changed_visibility:I

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2366
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 2367
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2368
    if-eqz v0, :cond_0

    .line 2369
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    sget v0, Lcig$f;->fgelv_tag_changed_visibility:I

    invoke-virtual {v3, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2363
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2375
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    if-eqz v0, :cond_7

    .line 2379
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 2380
    sub-int/2addr v0, p1

    .line 2382
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2383
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2385
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 2387
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2388
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2389
    sget v1, Lcig$f;->fgelv_tag_changed_visibility:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2393
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    if-ltz v0, :cond_4

    .line 2394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    invoke-virtual {v3, v4}, Lcrk;->a(I)Z

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v4, p0}, Lcrk;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    .line 2396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2397
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->u:Z

    .line 2398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2460
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->p:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 2461
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mAttachInfo"

    invoke-static {v0, v1, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->p:Ljava/lang/Object;

    .line 2410
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setAttachInfo(Landroid/view/View;)V

    .line 2413
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2417
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2418
    if-nez v0, :cond_5

    .line 2419
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 2420
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2423
    :cond_5
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->o:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v1, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2424
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2426
    if-lez v0, :cond_9

    .line 2427
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2432
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2436
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 2437
    sub-int/2addr v0, p1

    .line 2439
    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2440
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2442
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_6

    .line 2443
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v0, v1

    .line 2447
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v0

    .line 2448
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    .line 2449
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 2450
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 2451
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v5, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2453
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->l:I

    .line 26
    :cond_7
    return-void

    .line 2406
    :cond_8
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->u:Z

    goto/16 :goto_1

    .line 2429
    :cond_9
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 481
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->v:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 482
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 483
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 484
    .local v0, "floatingGroupFlatPosition":I
    const-class v1, Landroid/widget/AbsListView;

    const-string/jumbo v2, "positionSelector"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v7

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, p0, v4}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v0    # "floatingGroupFlatPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->invalidate()V

    .line 490
    :cond_0
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->v:Z

    .line 491
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    return-void

    .line 486
    :cond_1
    const-class v1, Landroid/widget/AbsListView;

    const-string/jumbo v2, "positionSelector"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, p0, v4}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 506
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 508
    .local v0, "floatingGroupFlatPosition":I
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->y:I

    if-ne v1, v0, :cond_0

    .line 509
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 510
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c(Landroid/graphics/Canvas;)V

    .line 513
    .end local v0    # "floatingGroupFlatPosition":I
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Lcrk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    return-object v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 518
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 526
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->n:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->b()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method private setAttachInfo(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 466
    if-nez p1, :cond_1

    .line 478
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->p:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 470
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mAttachInfo"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->p:Ljava/lang/Object;

    invoke-static {v2, v3, p1, v4}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    :cond_2
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 473
    check-cast v1, Landroid/view/ViewGroup;

    .line 474
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 475
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setAttachInfo(Landroid/view/View;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0xe

    const/4 v2, 0x0

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_6

    .line 195
    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v1, "mSelectorPosition"

    invoke-static {v0, v1, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->y:I

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->z:Landroid/graphics/Rect;

    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v3, "mSelectorRect"

    invoke-static {v0, v3, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->w:Z

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a(Landroid/graphics/Canvas;)V

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 209
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->w:Z

    if-nez v0, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->b(Landroid/graphics/Canvas;)V

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1529
    :cond_2
    const-class v0, Landroid/widget/ExpandableListView;

    const-string/jumbo v1, "mGroupIndicator"

    invoke-static {v0, v1, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1530
    if-eqz v0, :cond_4

    .line 1531
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    .line 1532
    invoke-virtual {v1, v3}, Lcrk;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->k:I

    .line 1533
    invoke-virtual {v3, v4}, Lcrk;->getChildrenCount(I)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v2, 0x2

    :cond_3
    or-int/2addr v1, v2

    .line 1534
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e:[[I

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1536
    const-class v1, Landroid/widget/ExpandableListView;

    const-string/jumbo v2, "mIndicatorLeft"

    invoke-static {v1, v2, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1537
    const-class v1, Landroid/widget/ExpandableListView;

    const-string/jumbo v3, "mIndicatorRight"

    invoke-static {v1, v3, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1539
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_8

    .line 1540
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->C:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1545
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1546
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 221
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->w:Z

    if-eqz v0, :cond_5

    .line 222
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a(Landroid/graphics/Canvas;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->b(Landroid/graphics/Canvas;)V

    .line 226
    :cond_5
    return-void

    .line 197
    :cond_6
    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v1, "mMotionPosition"

    invoke-static {v0, v1, p0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->y:I

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 1532
    goto :goto_1

    .line 1542
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->C:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 232
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 233
    :cond_0
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->q:Z

    .line 234
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->r:Z

    .line 235
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->v:Z

    .line 239
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->q:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->r:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 240
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 241
    .local v2, "screenCoords":[I
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->getLocationInWindow([I)V

    .line 242
    new-instance v1, Landroid/graphics/RectF;

    aget v4, v2, v7

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aget v5, v2, v3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v2, v7

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v3

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 244
    .local v1, "floatingGroupRect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 245
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->u:Z

    if-eqz v4, :cond_2

    .line 246
    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 267
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->t:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    .end local v1    # "floatingGroupRect":Landroid/graphics/RectF;
    .end local v2    # "screenCoords":[I
    :goto_1
    return v3

    .line 248
    .restart local v1    # "floatingGroupRect":Landroid/graphics/RectF;
    .restart local v2    # "screenCoords":[I
    :pswitch_0
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->v:Z

    .line 249
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->A:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->b()V

    .line 254
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setPressed(Z)V

    .line 255
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 256
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->j:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    .line 259
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 260
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 274
    .end local v1    # "floatingGroupRect":Landroid/graphics/RectF;
    .end local v2    # "screenCoords":[I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcrk;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    .line 183
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->q:Z

    .line 280
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->q:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 188
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->o:I

    .line 189
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->r:Z

    .line 286
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->r:Z

    return v0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 308
    instance-of v0, p1, Lcrk;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The adapter must be an instance of WrapperExpandableListAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    check-cast p1, Lcrk;

    .end local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setAdapter(Lcrk;)V

    .line 312
    return-void
.end method

.method public setAdapter(Lcrk;)V
    .locals 2
    .param p1, "adapter"    # Lcrk;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcrk;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    .line 322
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 325
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f:Lcrk;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcrk;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 338
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setDrawSelectorOnTop(Z)V

    .line 303
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->w:Z

    .line 304
    return-void
.end method

.method public setFloatingGroupEnabled(Z)V
    .locals 0
    .param p1, "floatingGroupEnabled"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->i:Z

    .line 353
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 348
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->n:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 349
    return-void
.end method

.method public setOnScrollFloatingGroupListener(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$a;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->m:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$a;

    .line 357
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->h:Landroid/widget/AbsListView$OnScrollListener;

    .line 343
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 298
    return-void
.end method
