.class public Lcom/alibaba/android/dingtalkim/views/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$e;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;,
        Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:[Landroid/view/View;

.field private C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Z

.field private U:Landroid/view/MotionEvent;

.field private V:I

.field private W:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

.field public a:Z

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;

.field private ad:Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;

.field public b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

.field public c:Z

.field private d:Landroid/view/View;

.field private e:Lecd;

.field private f:Landroid/graphics/Point;

.field private g:Landroid/graphics/Point;

.field private h:I

.field private i:Z

.field private j:Landroid/database/DataSetObserver;

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;

.field private v:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 366
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    .line 67
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->g:Landroid/graphics/Point;

    .line 77
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->i:Z

    .line 87
    const v2, 0x3f19999a    # 0.6f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->k:F

    .line 89
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->l:F

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->x:I

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->A:I

    .line 187
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->B:[Landroid/view/View;

    .line 198
    const v2, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->D:F

    .line 204
    const v2, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->E:F

    .line 231
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->L:F

    .line 238
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->M:Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    .line 302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->T:Z

    .line 307
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    .line 331
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->V:I

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->aa:Z

    .line 349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ab:Z

    .line 361
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ac:Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;

    .line 1250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c:Z

    .line 370
    if-eqz p2, :cond_0

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lctk$k;->DragSortListView:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 372
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 373
    .local v16, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->k:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->l:F

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->D:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDragScrollStart(F)V

    .line 377
    sget v2, Lctk$k;->DragSortListView_drag_handle_id:I

    const/4 v3, 0x0

    .line 378
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 380
    .local v17, "dragHandleId":I
    new-instance v2, Lecd;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1, v3}, Lecd;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e:Lecd;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e:Lecd;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$c;->pure_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3031
    iput v3, v2, Lece;->b:I

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e:Lecd;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e:Lecd;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 390
    .end local v16    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "dragHandleId":I
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    .line 393
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x96

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ad:Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;

    .line 395
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 396
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->U:Landroid/view/MotionEvent;

    .line 399
    new-instance v2, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->j:Landroid/database/DataSetObserver;

    .line 416
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->L:F

    return v0
.end method

.method private a(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 684
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(II)I

    move-result v1

    goto :goto_0
.end method

.method private a(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 747
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 753
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 801
    :goto_0
    return v3

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 761
    .local v2, "divHeight":I
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->x:I

    sub-int v5, v9, v10

    .line 762
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(I)I

    move-result v1

    .line 763
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(I)I

    move-result v4

    .line 767
    .local v4, "itemHeight":I
    move v8, p2

    .line 768
    .local v8, "otop":I
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-gt v9, v10, :cond_5

    .line 771
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-eq v9, v10, :cond_4

    .line 772
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ne p1, v9, :cond_3

    .line 773
    add-int v9, p2, v4

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    sub-int v8, v9, v10

    .line 795
    :cond_2
    :goto_1
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-gt p1, v9, :cond_7

    .line 796
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 775
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 776
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 777
    goto :goto_1

    .line 778
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-gt p1, v9, :cond_2

    .line 779
    sub-int v8, p2, v5

    goto :goto_1

    .line 785
    :cond_5
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-gt p1, v9, :cond_6

    .line 786
    add-int v8, p2, v5

    goto :goto_1

    .line 787
    :cond_6
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-eq v9, v10, :cond_2

    .line 789
    sub-int v0, v4, v1

    .line 790
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 798
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    return v0
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 593
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 596
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    .line 597
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 599
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 601
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 605
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 607
    .local v1, "childHeight":I
    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-le p1, v8, :cond_1

    .line 608
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 609
    .local v7, "t":I
    add-int v0, v7, v3

    .line 617
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 618
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 619
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 624
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 611
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 612
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1434
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1436
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-eq p1, v4, :cond_5

    .line 1438
    const/4 v0, -0x2

    .line 1443
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1444
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1445
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    :cond_0
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne p1, v4, :cond_2

    .line 1450
    :cond_1
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1451
    check-cast v4, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->setGravity(I)V

    .line 1459
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1460
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1462
    .local v3, "vis":I
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1463
    const/4 v3, 0x4

    .line 1466
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1467
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    :cond_4
    return-void

    .line 8557
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v4

    .line 8556
    invoke-direct {p0, p1, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(II)I

    move-result v0

    .line 1440
    .restart local v0    # "height":I
    goto :goto_0

    .line 1452
    :cond_6
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1453
    check-cast v4, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1232
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1233
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->N:I

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->P:I

    .line 1234
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->Q:I

    .line 1236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->N:I

    .line 1237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    .line 1238
    if-nez v0, :cond_1

    .line 1239
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->N:I

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->P:I

    .line 1240
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->Q:I

    .line 1242
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->N:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->s:I

    .line 1243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->t:I

    .line 1244
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1638
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1639
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1640
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1643
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1645
    :cond_0
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->A:I

    .line 1646
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1645
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1648
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 1649
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1653
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1654
    return-void

    .line 1651
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;ILandroid/view/View;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1824
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1826
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1831
    :goto_0
    return-void

    .line 1830
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 9
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 1472
    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ne p1, v6, :cond_1

    move v1, v5

    .line 1518
    :cond_0
    :goto_0
    return v1

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1478
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1481
    invoke-direct {p0, p1, v4, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1485
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ac:Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;

    .line 8723
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1486
    .local v1, "childHeight":I
    if-ne v1, v8, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1492
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1495
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1496
    .local v3, "typeCount":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->B:[Landroid/view/View;

    array-length v6, v6

    if-eq v3, v6, :cond_3

    .line 1497
    new-array v6, v3, [Landroid/view/View;

    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->B:[Landroid/view/View;

    .line 1500
    :cond_3
    if-ltz v2, :cond_6

    .line 1501
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->B:[Landroid/view/View;

    aget-object v6, v6, v2

    if-nez v6, :cond_5

    .line 1502
    invoke-interface {v0, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1503
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->B:[Landroid/view/View;

    aput-object v4, v6, v2

    .line 1513
    :goto_1
    const/4 v6, 0x1

    invoke-direct {p0, p1, v4, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v1

    .line 1516
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ac:Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;

    .line 9706
    iget-object v7, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 9707
    if-eq v7, v1, :cond_0

    .line 9708
    if-ne v7, v8, :cond_7

    .line 9709
    iget-object v7, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    iget v8, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->c:I

    if-ne v7, v8, :cond_4

    .line 9711
    iget-object v7, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    iget-object v8, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 9717
    :cond_4
    :goto_2
    iget-object v5, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 9718
    iget-object v5, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1505
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->B:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1509
    :cond_6
    invoke-interface {v0, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 9715
    :cond_7
    iget-object v5, v6, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private b(II)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getDividerHeight()I

    .line 1562
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->x:I

    sub-int v1, v2, v3

    .line 1565
    .local v1, "maxNonSrcBlankHeight":I
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ne p1, v2, :cond_2

    .line 1566
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-ne v2, v3, :cond_0

    .line 1567
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    .line 1583
    .local v0, "height":I
    :goto_0
    return v0

    .line 1568
    .end local v0    # "height":I
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne v2, v3, :cond_1

    .line 1570
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    .restart local v0    # "height":I
    goto :goto_0

    .line 1572
    .end local v0    # "height":I
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->x:I

    .restart local v0    # "height":I
    goto :goto_0

    .line 1574
    .end local v0    # "height":I
    :cond_2
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-ne p1, v2, :cond_3

    .line 1575
    add-int v0, p2, v1

    .restart local v0    # "height":I
    goto :goto_0

    .line 1576
    .end local v0    # "height":I
    :cond_3
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne p1, v2, :cond_4

    .line 1578
    add-int v0, p2, v1

    .restart local v0    # "height":I
    goto :goto_0

    .line 1580
    .end local v0    # "height":I
    :cond_4
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1524
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ne p1, v3, :cond_1

    .line 1551
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1529
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1530
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1531
    :cond_2
    move-object v0, p2

    .line 1536
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1538
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1539
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1540
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1533
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1544
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1546
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1547
    :cond_5
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Landroid/view/View;)V

    .line 1548
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1093
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    .line 1094
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 1095
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    .line 1096
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    .line 1097
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;ILandroid/view/View;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->aa:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    return v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1102
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    .line 1104
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->v:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1106
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->v:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    sub-int/2addr v4, v0

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;->a(II)V

    .line 1109
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h()V

    .line 4124
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 4126
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-ge v1, v3, :cond_1

    .line 4129
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4131
    if-eqz v1, :cond_3

    .line 4132
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 4135
    :goto_0
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0, v3, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setSelectionFromTop(II)V

    .line 1112
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b()V

    .line 1113
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f()V

    .line 1116
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    if-eqz v1, :cond_2

    .line 1117
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    .line 1121
    :goto_1
    return-void

    .line 1119
    :cond_2
    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private c(ILandroid/view/View;Z)V
    .locals 12
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1835
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->aa:Z

    .line 9867
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    if-eqz v4, :cond_0

    .line 9868
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->g:Landroid/graphics/Point;

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->N:I

    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 9872
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 9873
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    .line 9876
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 9877
    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_11

    if-le v4, v5, :cond_11

    .line 9878
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 9884
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    .line 9885
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFooterViewsCount()I

    move-result v7

    .line 9886
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    .line 9887
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getLastVisiblePosition()I

    move-result v9

    .line 9891
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingTop()I

    move-result v4

    .line 9892
    if-ge v8, v5, :cond_2

    .line 9893
    sub-int v4, v5, v8

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 9895
    :cond_2
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_3

    .line 9896
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-gt v8, v5, :cond_3

    .line 9897
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9903
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v5, v10

    .line 9904
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v10

    sub-int/2addr v10, v7

    add-int/lit8 v10, v10, -0x1

    if-lt v9, v10, :cond_4

    .line 9905
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 9906
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 9908
    :cond_4
    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_5

    .line 9909
    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-lt v9, v7, :cond_5

    .line 9910
    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 9911
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 9910
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 9919
    :cond_5
    if-ge v6, v4, :cond_12

    .line 9920
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 9926
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->z:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    .line 1839
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 1840
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    .line 10806
    .local v1, "oldSecondExpPos":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    .line 10807
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 10808
    sub-int v4, v5, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10810
    if-nez v4, :cond_7

    .line 10811
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildCount()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v6, v4

    .line 10812
    sub-int v4, v5, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10814
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 10816
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 10818
    invoke-direct {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(II)I

    move-result v7

    .line 10821
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getDividerHeight()I

    move-result v8

    .line 10827
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    if-ge v9, v7, :cond_13

    move v4, v5

    .line 10830
    :cond_8
    if-ltz v4, :cond_9

    .line 10831
    add-int/lit8 v4, v4, -0x1

    .line 10832
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(I)I

    move-result v5

    .line 10834
    if-eqz v4, :cond_9

    .line 10839
    add-int/2addr v5, v8

    sub-int/2addr v6, v5

    .line 10840
    invoke-direct {p0, v4, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(II)I

    move-result v5

    .line 10843
    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    if-lt v7, v5, :cond_8

    .line 10874
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    .line 10875
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFooterViewsCount()I

    move-result v7

    .line 10877
    const/4 v6, 0x0

    .line 10879
    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 10880
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    .line 10881
    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 10882
    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    .line 10885
    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-ge v10, v5, :cond_14

    .line 10887
    iput v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 10888
    iput v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    move v4, v5

    .line 10895
    :cond_a
    :goto_2
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-ne v5, v8, :cond_b

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-eq v5, v9, :cond_1c

    .line 10896
    :cond_b
    const/4 v5, 0x1

    .line 10899
    :goto_3
    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    if-eq v4, v6, :cond_1b

    .line 10904
    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    .line 10905
    const/4 v3, 0x1

    .line 1844
    .local v3, "updated":Z
    :goto_4
    if-eqz v3, :cond_e

    .line 1845
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f()V

    .line 11595
    const/4 v2, 0x0

    .line 11597
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(I)I

    move-result v4

    .line 11599
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 11600
    invoke-direct {p0, p1, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(II)I

    move-result v5

    .line 11604
    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-eq p1, v6, :cond_1a

    .line 11605
    sub-int v6, v7, v4

    .line 11606
    sub-int v4, v5, v4

    .line 11609
    :goto_5
    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    .line 11610
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-eq v9, v10, :cond_c

    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-eq v9, v10, :cond_c

    .line 11611
    iget v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->x:I

    sub-int/2addr v8, v9

    .line 11614
    :cond_c
    if-gt p1, v0, :cond_15

    .line 11615
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-le p1, v5, :cond_d

    .line 11616
    sub-int v4, v8, v4

    add-int/lit8 v2, v4, 0x0

    .line 1850
    .local v2, "scroll":I
    :cond_d
    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    .line 1851
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1850
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setSelectionFromTop(II)V

    .line 1852
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->layoutChildren()V

    .line 1855
    .end local v2    # "scroll":I
    :cond_e
    if-nez v3, :cond_f

    if-eqz p3, :cond_10

    .line 1856
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->invalidate()V

    .line 1859
    :cond_10
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->aa:Z

    .line 1860
    return-void

    .line 9879
    .end local v0    # "oldFirstExpPos":I
    .end local v1    # "oldSecondExpPos":I
    .end local v3    # "updated":Z
    :cond_11
    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    if-ge v4, v5, :cond_1

    .line 9880
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 9921
    :cond_12
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    add-int/2addr v4, v6

    if-le v4, v5, :cond_6

    .line 9922
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 10852
    .restart local v0    # "oldFirstExpPos":I
    .restart local v1    # "oldSecondExpPos":I
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v7

    move v11, v6

    move v6, v4

    move v4, v5

    move v5, v11

    .line 10853
    :goto_7
    if-ge v4, v7, :cond_9

    .line 10854
    add-int/lit8 v9, v7, -0x1

    if-eq v4, v9, :cond_9

    .line 10859
    add-int/2addr v6, v8

    add-int/2addr v5, v6

    .line 10860
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(I)I

    move-result v6

    .line 10861
    add-int/lit8 v9, v4, 0x1

    invoke-direct {p0, v9, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(II)I

    move-result v9

    .line 10865
    iget v10, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    if-lt v10, v9, :cond_9

    .line 10870
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 10889
    :cond_14
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v10

    sub-int/2addr v10, v7

    if-lt v5, v10, :cond_a

    .line 10890
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, -0x1

    .line 10891
    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 10892
    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    goto/16 :goto_2

    .line 11618
    .restart local v3    # "updated":Z
    :cond_15
    if-ne p1, v1, :cond_18

    .line 11619
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-gt p1, v4, :cond_16

    .line 11620
    sub-int v4, v6, v8

    add-int/lit8 v2, v4, 0x0

    goto :goto_6

    .line 11621
    :cond_16
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne p1, v4, :cond_17

    .line 11622
    sub-int v4, v7, v5

    add-int/lit8 v2, v4, 0x0

    goto/16 :goto_6

    .line 11624
    :cond_17
    add-int/lit8 v2, v6, 0x0

    goto/16 :goto_6

    .line 11627
    :cond_18
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-gt p1, v5, :cond_19

    .line 11628
    rsub-int/lit8 v2, v8, 0x0

    goto/16 :goto_6

    .line 11629
    :cond_19
    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    if-ne p1, v5, :cond_d

    .line 11630
    rsub-int/lit8 v2, v4, 0x0

    goto/16 :goto_6

    :cond_1a
    move v4, v5

    move v6, v7

    goto/16 :goto_5

    .end local v3    # "updated":Z
    :cond_1b
    move v3, v5

    goto/16 :goto_4

    :cond_1c
    move v5, v6

    goto/16 :goto_3
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    return v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1220
    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->V:I

    .line 1221
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    .line 1222
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1223
    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    .line 1225
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->k:F

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->l:F

    .line 1226
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c:Z

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ac:Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;

    .line 7727
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 7728
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1228
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1384
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1385
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1387
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->D:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->I:F

    .line 1388
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->E:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->H:F

    .line 1391
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->I:F

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->F:I

    .line 1392
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->H:F

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->G:I

    .line 1394
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->I:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->J:F

    .line 1395
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->H:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->K:F

    .line 1396
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->x:I

    return v0
.end method

.method private f()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 1405
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1406
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1408
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1409
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1412
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1413
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1414
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1415
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(ILandroid/view/View;Z)V

    .line 1412
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1418
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Landroid/view/View;)V

    .line 1659
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    .line 1660
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->y:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->z:I

    .line 1662
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1932
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;->a(Landroid/view/View;)V

    .line 1935
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    .line 1936
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->invalidate()V

    .line 1938
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->z:I

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->I:F

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->J:F

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->M:Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->H:F

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->K:F

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1078
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(Z)V

    .line 1080
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h()V

    .line 1081
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b()V

    .line 1082
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f()V

    .line 1084
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    if-eqz v0, :cond_1

    .line 1085
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1770
    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 1819
    :goto_0
    return v2

    .line 1775
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1776
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1779
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 1780
    .local v0, "pos":I
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    .line 1781
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    .line 1782
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    .line 1783
    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m:I

    .line 1785
    iput v6, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    .line 1786
    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    .line 1787
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->S:I

    .line 1789
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    .line 1790
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->g()V

    .line 1792
    iput p4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->q:I

    .line 1793
    iput p5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->r:I

    .line 1794
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->R:I

    .line 1796
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->N:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->q:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1797
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->O:I

    iget v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->r:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1800
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1802
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1803
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    :cond_3
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->V:I

    packed-switch v3, :pswitch_data_0

    .line 1817
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->requestLayout()V

    goto :goto_0

    .line 1810
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->U:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1813
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->U:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 628
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 630
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-eqz v2, :cond_1

    .line 632
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-eq v2, v3, :cond_0

    .line 633
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 635
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p:I

    if-eq v2, v3, :cond_1

    .line 636
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o:I

    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 642
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 643
    .local v1, "w":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 645
    .local v0, "h":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 647
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getWidth()I

    .line 662
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 664
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 665
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 669
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 671
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 673
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_2
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->l:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->W:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->W:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    .line 3504
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;->a:Landroid/widget/ListAdapter;

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1679
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1681
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->i:Z

    if-nez v0, :cond_0

    .line 1686
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->g()V

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    .line 1689
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1688
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1690
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->i:Z

    .line 1692
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 913
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 914
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1254
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1255
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->T:Z

    .line 1257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1259
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 1260
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-eqz v3, :cond_1

    .line 1262
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ab:Z

    move v1, v2

    .line 1299
    :cond_0
    :goto_0
    return v1

    .line 1265
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    .line 1268
    :cond_2
    const/4 v1, 0x0

    .line 1271
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1273
    const/4 v1, 0x1

    .line 1294
    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1296
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    goto :goto_0

    .line 1275
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1276
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c:Z

    .line 1277
    const/4 v1, 0x1

    .line 1280
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 1286
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1287
    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->V:I

    goto :goto_1

    .line 1283
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d()V

    goto :goto_1

    .line 1289
    :cond_6
    const/4 v3, 0x2

    iput v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->V:I

    goto :goto_1

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1666
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1668
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1670
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->g()V

    .line 1672
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->i:Z

    .line 1674
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->A:I

    .line 1675
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1401
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e()V

    .line 1402
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1173
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ab:Z

    if-eqz v3, :cond_1

    .line 1174
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ab:Z

    move v2, v5

    .line 1216
    :cond_0
    :goto_0
    return v2

    .line 1178
    :cond_1
    const/4 v2, 0x0

    .line 1180
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->T:Z

    .line 1181
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->T:Z

    .line 1183
    if-nez v1, :cond_2

    .line 1184
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1188
    :cond_2
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-ne v3, v6, :cond_c

    .line 4696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1190
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 4700
    :pswitch_0
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-ne v3, v6, :cond_4

    .line 4701
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a()V

    .line 4703
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d()V

    goto :goto_1

    .line 4707
    :pswitch_1
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-ne v3, v6, :cond_5

    .line 5156
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 5157
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(Z)V

    .line 5158
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ad:Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;

    if-eqz v3, :cond_6

    .line 5159
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->ad:Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$f;->c()V

    .line 4710
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d()V

    goto :goto_1

    .line 5161
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c()V

    goto :goto_2

    .line 4713
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 5338
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->q:I

    sub-int/2addr v3, v8

    iput v3, v7, Landroid/graphics/Point;->x:I

    .line 5339
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->f:Landroid/graphics/Point;

    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->r:I

    sub-int v7, v6, v7

    iput v7, v3, Landroid/graphics/Point;->y:I

    .line 5341
    invoke-direct {p0, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(Z)V

    .line 5343
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    iget v7, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->z:I

    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5344
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->h:I

    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->z:I

    sub-int/2addr v3, v8

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5347
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    .line 6296
    iget-boolean v8, v3, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    if-eqz v8, :cond_8

    iget v3, v3, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a:I

    .line 5349
    :goto_3
    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->Q:I

    if-le v7, v8, :cond_9

    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->G:I

    if-le v7, v8, :cond_9

    if-eq v3, v9, :cond_9

    .line 5354
    if-eq v3, v4, :cond_7

    .line 5356
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(Z)V

    .line 5360
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(I)V

    goto :goto_1

    :cond_8
    move v3, v4

    .line 6296
    goto :goto_3

    .line 5361
    :cond_9
    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->Q:I

    if-ge v6, v8, :cond_b

    iget v8, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->F:I

    if-ge v6, v8, :cond_b

    if-eqz v3, :cond_b

    .line 5366
    if-eq v3, v4, :cond_a

    .line 5368
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(Z)V

    .line 5372
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(I)V

    goto/16 :goto_1

    .line 5373
    :cond_b
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->F:I

    if-lt v6, v3, :cond_3

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->G:I

    if-gt v7, v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    .line 7292
    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    .line 5374
    if-eqz v3, :cond_3

    .line 5378
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->C:Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a(Z)V

    goto/16 :goto_1

    .line 1196
    :cond_c
    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->w:I

    if-nez v3, :cond_d

    .line 1197
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1198
    const/4 v2, 0x1

    .line 1202
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1204
    .local v0, "action":I
    packed-switch v0, :pswitch_data_1

    .line 1210
    :pswitch_3
    if-eqz v2, :cond_0

    .line 1211
    iput v9, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->V:I

    goto/16 :goto_0

    .line 1207
    :pswitch_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->d()V

    goto/16 :goto_0

    .line 4698
    .line 1204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1588
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->aa:Z

    if-nez v0, :cond_0

    .line 1589
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 1591
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 453
    if-eqz p1, :cond_2

    .line 454
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;-><init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->W:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    .line 455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->j:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 457
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 458
    check-cast v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDropListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;)V

    .line 460
    :cond_0
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;

    if-eqz v0, :cond_1

    .line 461
    check-cast p1, Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDragListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;)V

    .line 467
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->W:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    return-void

    .line 464
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->W:Lcom/alibaba/android/dingtalkim/views/DragSortListView$a;

    goto :goto_0
.end method

.method public setDragHandleViewId(I)V
    .locals 1
    .param p1, "dragHandleViewId"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e:Lecd;

    .line 3127
    iput p1, v0, Lecd;->a:I

    .line 420
    return-void
.end method

.method public setDragListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->u:Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;

    .line 1989
    return-void
.end method

.method public setDragScrollProfile(Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;)V
    .locals 0
    .param p1, "ssp"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

    .prologue
    .line 2034
    if-eqz p1, :cond_0

    .line 2035
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->M:Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

    .line 2037
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 2
    .param p1, "heightFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1308
    .line 8318
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 8319
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->E:F

    .line 8324
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 8325
    iput v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->D:F

    .line 8330
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8331
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->e()V

    .line 1309
    :cond_0
    return-void

    .line 8321
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->E:F

    goto :goto_0

    .line 8327
    :cond_2
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->D:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$e;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView$e;

    .prologue
    .line 2025
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDropListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;)V

    .line 2026
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDragListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$b;)V

    .line 2027
    return-void
.end method

.method public setDropListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->v:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    .line 2001
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 427
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->l:F

    .line 428
    return-void
.end method

.method public setFloatViewManager(Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;)V
    .locals 0
    .param p1, "manager"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    .line 1985
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 441
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->L:F

    .line 442
    return-void
.end method
