.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$f;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final k:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private B:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private C:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private D:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;

.field private E:Landroid/widget/AbsListView$OnScrollListener;

.field private F:I

.field private G:Landroid/view/View;

.field private H:Ljava/lang/Runnable;

.field private I:I

.field private J:I

.field public b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;

.field public c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;

.field d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$c;

.field e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;

.field protected f:Ljug;

.field protected g:Z

.field protected h:I

.field protected i:I

.field j:Z

.field private l:Z

.field private final m:Landroid/graphics/Rect;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:J

.field private r:Landroid/database/DataSetObserver;

.field private s:I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:F

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error supporting platform "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->k:Ljava/lang/String;

    .line 77
    const-class v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iput-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    .line 112
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    .line 114
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    .line 132
    iput-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    .line 143
    iput v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    .line 159
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->F:I

    .line 177
    iput-boolean v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    .line 189
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 190
    invoke-virtual {p0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 192
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->y:Z

    if-nez v1, :cond_0

    .line 193
    const/4 v1, -0x1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    .line 196
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->I:I

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J
    .locals 2
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    .line 3627
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 3628
    iget-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    :goto_0
    return-wide v0

    .line 3630
    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljug;->b(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 25
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "headerPosition"    # I

    .prologue
    .line 786
    const/16 v22, -0x2

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 811
    .end local p1    # "e":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 790
    .restart local p1    # "e":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 791
    .local v4, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 792
    .local v6, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 793
    .local v8, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 2090
    .local v9, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 2091
    move/from16 v0, v23

    new-array v10, v0, [I

    .line 2092
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 2093
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    aput v24, v10, v22

    .line 2092
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 3080
    .local v10, "pointerIds":[I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 3081
    move/from16 v0, v23

    new-array v11, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3082
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 3083
    new-instance v24, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v24 .. v24}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v24, v11, v22

    .line 3084
    aget-object v24, v11, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 3082
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 796
    .local v11, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 797
    .local v12, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    .line 798
    .local v13, "xPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    .line 799
    .local v14, "yPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    .line 800
    .local v15, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    .line 801
    .local v16, "edgeFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    .line 802
    .local v17, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    .line 804
    .local v18, "flags":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 805
    .local v19, "headerHolder":Landroid/view/View;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v9, :cond_3

    .line 806
    aget-object v22, v11, v20

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 805
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 808
    :cond_3
    invoke-static/range {v4 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    .local v21, "n":Landroid/view/MotionEvent;
    move-object/from16 p1, v21

    .line 811
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c()V

    return-void
.end method

.method static synthetic b(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 634
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-nez v3, :cond_0

    .line 663
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v3, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 648
    .local v2, "widthMeasureSpec":I
    :goto_1
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 649
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_2

    .line 650
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 654
    .local v0, "heightMeasureSpec":I
    :goto_2
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 655
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 657
    iget-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v3, :cond_3

    .line 658
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 642
    .end local v0    # "heightMeasureSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 643
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 642
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_1

    .line 652
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "heightMeasureSpec":I
    goto :goto_2

    .line 660
    :cond_3
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    .line 661
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 660
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 24
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljug;->getCount()I

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 677
    .local v8, "firstItem":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 682
    move/from16 v16, p1

    .line 684
    .local v16, "selectedHeaderPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    move/from16 v19, v0

    sub-int v4, p1, v19

    .line 685
    .local v4, "beforeRowPosition":I
    if-gez v4, :cond_2

    .line 686
    move/from16 v4, p1

    .line 689
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    move/from16 v19, v0

    add-int v13, p1, v19

    .line 690
    .local v13, "secondRowPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljug;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_3

    .line 691
    move/from16 v13, p1

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 696
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    move/from16 v19, v0

    if-gez v19, :cond_7

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljug;->b(I)J

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 699
    .local v9, "firstSecondRowView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v19

    if-gtz v19, :cond_6

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljug;->b(I)J

    move-result-wide v14

    .line 701
    .local v14, "newHeaderId":J
    move/from16 v16, v13

    .line 715
    .end local v9    # "firstSecondRowView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    move-wide/from16 v20, v0

    cmp-long v19, v20, v14

    if-eqz v19, :cond_4

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    move-object/from16 v20, v0

    .line 717
    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Ljug;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c(Landroid/view/View;)V

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b()V

    .line 719
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    .line 722
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v6

    .line 723
    .local v6, "childCount":I
    if-eqz v6, :cond_0

    .line 724
    const/16 v17, 0x0

    .line 725
    .local v17, "viewToWatch":Landroid/view/View;
    const v18, 0x1869f

    .line 728
    .local v18, "watchingChildDistance":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v6, :cond_a

    .line 729
    move-object/from16 v0, p0

    invoke-super {v0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 732
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 733
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    sub-int v7, v19, v20

    .line 738
    .local v7, "childDistance":I
    :goto_3
    if-ltz v7, :cond_5

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljug;->getItemId(I)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_5

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 744
    move-object/from16 v17, v5

    .line 745
    move/from16 v18, v7

    .line 728
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    move/from16 v19, v0

    add-int v11, v11, v19

    goto :goto_2

    .line 703
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childDistance":I
    .end local v11    # "i":I
    .end local v14    # "newHeaderId":J
    .end local v17    # "viewToWatch":Landroid/view/View;
    .end local v18    # "watchingChildDistance":I
    .restart local v9    # "firstSecondRowView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljug;->b(I)J

    move-result-wide v14

    .line 705
    .restart local v14    # "newHeaderId":J
    goto/16 :goto_1

    .line 706
    .end local v9    # "firstSecondRowView":Landroid/view/View;
    .end local v14    # "newHeaderId":J
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v12

    .line 707
    .local v12, "margin":I
    if-lez v12, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_8

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljug;->b(I)J

    move-result-wide v14

    .line 709
    .restart local v14    # "newHeaderId":J
    move/from16 v16, v4

    goto/16 :goto_1

    .line 711
    .end local v12    # "margin":I
    .end local v14    # "newHeaderId":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljug;->b(I)J

    move-result-wide v14

    .restart local v14    # "newHeaderId":J
    goto/16 :goto_1

    .line 735
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v11    # "i":I
    .restart local v17    # "viewToWatch":Landroid/view/View;
    .restart local v18    # "watchingChildDistance":I
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .restart local v7    # "childDistance":I
    goto :goto_3

    .line 749
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childDistance":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v10

    .line 753
    .local v10, "headerHeight":I
    if-eqz v17, :cond_f

    .line 754
    if-nez p1, :cond_b

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-super {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    if-lez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 756
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_0

    .line 758
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 759
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    add-int v20, v20, v10

    .line 759
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    add-int v19, v19, v10

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    move/from16 v19, v0

    goto :goto_4

    .line 765
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    move/from16 v19, v0

    if-gez v19, :cond_e

    .end local v10    # "headerHeight":I
    :goto_5
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_0

    .restart local v10    # "headerHeight":I
    :cond_e
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto :goto_5

    .line 771
    :cond_f
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    .line 772
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c(Landroid/view/View;)V

    .line 668
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    .line 669
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1
    .param p1, "newStickiedHeader"    # Landroid/view/View;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(Landroid/view/View;)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/View;)V

    .line 782
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    .line 783
    return-void
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 213
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    .line 221
    :goto_0
    return-object v0

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1034
    :cond_0
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string/jumbo v4, "mAttachInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1035
    .local v0, "attachInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1036
    const-class v3, Landroid/view/View;

    const-string/jumbo v4, "dispatchAttachedToWindow"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string/jumbo v7, "android.view.View$AttachInfo"

    .line 1037
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 1036
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1038
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1039
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 1040
    .end local v0    # "attachInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1042
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1044
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 1045
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1046
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1048
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1050
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 1051
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3
.end method

.method public final b(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1061
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "dispatchDetachedFromWindow"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1062
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1063
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1064
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1066
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1068
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1070
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 816
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(I)V

    .line 820
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    .line 821
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v9, 0x1

    .line 822
    .local v9, "drawStickiedHeader":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v12

    .line 823
    .local v12, "headerHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    sub-int v17, v2, v12

    .line 827
    .local v17, "top":I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    if-eqz v2, :cond_1

    .line 828
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_4

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 835
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 843
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 846
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v14, "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 848
    .local v20, "vi":I
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v16

    .local v16, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v16

    if-gt v0, v2, :cond_5

    .line 849
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v18

    .line 850
    .local v18, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_2

    .line 851
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int v16, v16, v2

    .line 854
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int v20, v20, v2

    .line 855
    goto :goto_2

    .line 821
    .end local v9    # "drawStickiedHeader":Z
    .end local v12    # "headerHeight":I
    .end local v14    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v17    # "top":I
    .end local v18    # "id":J
    .end local v20    # "vi":I
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 832
    .restart local v9    # "drawStickiedHeader":Z
    .restart local v12    # "headerHeight":I
    .restart local v17    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 858
    .restart local v14    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "i":I
    .restart local v20    # "vi":I
    :cond_5
    const/16 v16, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_c

    .line 859
    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 862
    .local v10, "frame":Landroid/view/View;
    :try_start_0
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v11, "header":Landroid/view/View;
    move-object v2, v10

    .line 867
    check-cast v2, Ljug$b;

    invoke-virtual {v2}, Ljug$b;->getHeaderId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 868
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-eqz v2, :cond_7

    const/4 v13, 0x1

    .line 869
    .local v13, "headerIsStickied":Z
    :goto_4
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    if-nez v13, :cond_6

    .line 874
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_8

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 881
    .local v22, "widthMeasureSpec":I
    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 882
    .local v15, "heightMeasureSpec":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/view/View;->measure(II)V

    .line 883
    move/from16 v0, v22

    invoke-virtual {v11, v0, v15}, Landroid/view/View;->measure(II)V

    .line 885
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_9

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 892
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_a

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 900
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 904
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_b

    .line 905
    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 909
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 910
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 858
    .end local v15    # "heightMeasureSpec":I
    .end local v22    # "widthMeasureSpec":I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 868
    .end local v13    # "headerIsStickied":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 877
    .restart local v13    # "headerIsStickied":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 877
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "widthMeasureSpec":I
    goto/16 :goto_5

    .line 888
    .restart local v15    # "heightMeasureSpec":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 889
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 888
    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 896
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7

    .line 907
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    .line 913
    .end local v10    # "frame":Landroid/view/View;
    .end local v11    # "header":Landroid/view/View;
    .end local v13    # "headerIsStickied":Z
    .end local v15    # "heightMeasureSpec":I
    .end local v22    # "widthMeasureSpec":I
    :cond_c
    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    if-eqz v2, :cond_11

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 922
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_12

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v21

    .line 927
    .local v21, "wantedWidth":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_e

    .line 929
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_13

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 935
    .restart local v22    # "widthMeasureSpec":I
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 936
    .restart local v15    # "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    move/from16 v0, v22

    invoke-virtual {v2, v0, v15}, Landroid/view/View;->measure(II)V

    .line 938
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_14

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 946
    .end local v15    # "heightMeasureSpec":I
    .end local v22    # "widthMeasureSpec":I
    :cond_e
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_15

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 953
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    add-int v3, v17, v12

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 954
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    if-eqz v2, :cond_16

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 960
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 963
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v2, :cond_17

    .line 964
    const/4 v2, 0x0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 969
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    if-eq v2, v12, :cond_f

    .line 970
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    mul-int/lit16 v2, v2, 0xff

    div-int v7, v2, v12

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 974
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 976
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    if-eq v2, v12, :cond_10

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 979
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 980
    .end local v21    # "wantedWidth":I
    :goto_f
    return-void

    .line 915
    :cond_11
    if-nez v9, :cond_d

    goto :goto_f

    .line 925
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int v21, v2, v3

    .restart local v21    # "wantedWidth":I
    goto/16 :goto_9

    .line 932
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 932
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "widthMeasureSpec":I
    goto/16 :goto_a

    .line 941
    .restart local v15    # "heightMeasureSpec":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 941
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    .line 950
    .end local v15    # "heightMeasureSpec":I
    .end local v22    # "widthMeasureSpec":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_c

    .line 957
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_d

    .line 966
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_e

    .line 864
    .end local v21    # "wantedWidth":I
    .restart local v10    # "frame":Landroid/view/View;
    :catch_0
    move-exception v2

    goto/16 :goto_f
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->A:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    .line 240
    invoke-virtual {v1, p3}, Ljug;->d(I)Ljug$c;

    move-result-object v1

    iget v3, v1, Ljug$c;->b:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 239
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 241
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->B:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    .line 246
    invoke-virtual {v1, p3}, Ljug;->d(I)Ljug$c;

    move-result-object v1

    iget v3, v1, Ljug$c;->b:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 245
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    .line 252
    invoke-virtual {v1, p3}, Ljug;->d(I)Ljug$c;

    move-result-object v1

    iget v3, v1, Ljug$c;->b:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 251
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 253
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 984
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 986
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    if-lez v2, :cond_3

    .line 987
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 988
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 987
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 989
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    div-int v1, v0, v2

    .line 992
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_0

    .line 993
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 994
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->u:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    if-le v2, v0, :cond_1

    .line 996
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1004
    :cond_0
    const/4 v1, 0x1

    .line 1011
    .end local v0    # "gridWidth":I
    :cond_1
    :goto_1
    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    .line 1019
    .end local v1    # "numFittedColumns":I
    :goto_2
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    if-eqz v2, :cond_2

    .line 1020
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    invoke-virtual {v2, v3}, Ljug;->a(I)V

    .line 1023
    :cond_2
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b()V

    .line 1025
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 1026
    return-void

    .line 1009
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "numFittedColumns":I
    goto :goto_1

    .line 1015
    .end local v1    # "numFittedColumns":I
    :cond_4
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    iput v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 258
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    move-object v0, p1

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    .line 264
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 265
    iget-boolean v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    .line 267
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 268
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 274
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 275
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    iget-boolean v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    iput-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 276
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 286
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 287
    invoke-direct {p0, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(I)V

    .line 289
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 297
    :cond_0
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->F:I

    .line 298
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 303
    .local v2, "action":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    .line 304
    .local v8, "wasHeaderChildBeingPressed":Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    if-eqz v10, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v7

    .line 306
    .local v7, "tempHeader":Landroid/view/View;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    move-object v5, v7

    .line 308
    .local v5, "headerHolder":Landroid/view/View;
    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_0

    const/4 v10, 0x3

    if-ne v2, v10, :cond_1

    .line 309
    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    .line 311
    :cond_1
    if-eqz v7, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 313
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 314
    new-instance v10, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;)V

    .line 318
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v11

    int-to-long v12, v11

    .line 314
    invoke-virtual {v7, v10, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    const/4 v10, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 323
    .end local v5    # "headerHolder":Landroid/view/View;
    .end local v7    # "tempHeader":Landroid/view/View;
    :cond_2
    and-int/lit16 v10, v2, 0xff

    packed-switch v10, :pswitch_data_0

    .line 445
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_2
    return v10

    .line 306
    .restart local v7    # "tempHeader":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    .line 307
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 325
    .end local v7    # "tempHeader":Landroid/view/View;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;

    if-nez v10, :cond_5

    .line 326
    new-instance v10, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;

    .line 328
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 331
    .local v9, "y":I
    int-to-float v10, v9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->w:F

    .line 332
    int-to-float v12, v9

    .line 1596
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    int-to-float v10, v10

    cmpg-float v10, v12, v10

    if-gtz v10, :cond_a

    .line 1597
    const/4 v11, -0x2

    .line 332
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    .line 333
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->F:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v7

    .line 340
    .restart local v7    # "tempHeader":Landroid/view/View;
    if-eqz v7, :cond_9

    .line 341
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 342
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    .line 343
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/view/View;->setPressed(Z)V

    .line 345
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 346
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    const/4 v11, -0x2

    if-eq v10, v11, :cond_8

    .line 347
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 349
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 352
    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    .line 353
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1600
    .end local v7    # "tempHeader":Landroid/view/View;
    :cond_a
    const/4 v11, 0x0

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v10

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v13

    if-gt v10, v13, :cond_c

    .line 1602
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v14

    .line 1603
    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_b

    .line 1604
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1606
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1607
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    .line 1608
    int-to-float v14, v14

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_b

    int-to-float v13, v13

    cmpl-float v13, v12, v13

    if-gez v13, :cond_6

    .line 1612
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v10, v13

    .line 1613
    move-object/from16 v0, p0

    iget v13, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v11, v13

    .line 1614
    goto :goto_4

    .line 1616
    :cond_c
    const/4 v11, -0x1

    goto/16 :goto_3

    .line 355
    .end local v9    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->w:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->I:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 359
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    .line 361
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v4

    .line 362
    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 363
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setPressed(Z)V

    .line 364
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 366
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 367
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_e

    .line 368
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    :cond_e
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    goto/16 :goto_1

    .line 375
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "header":Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_f

    .line 376
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    .line 377
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 379
    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v4

    .line 384
    .restart local v4    # "header":Landroid/view/View;
    if-nez v8, :cond_15

    .line 385
    if-eqz v4, :cond_15

    .line 386
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-eqz v10, :cond_10

    .line 387
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setPressed(Z)V

    .line 390
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->D:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;

    if-nez v10, :cond_11

    .line 391
    new-instance v10, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->D:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;

    .line 394
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->D:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;

    .line 395
    .local v6, "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    iput v10, v6, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->a:I

    .line 396
    invoke-virtual {v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->a()V

    .line 398
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 399
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 400
    .restart local v3    # "handler":Landroid/os/Handler;
    if-eqz v3, :cond_13

    .line 401
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-nez v10, :cond_16

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$b;

    :goto_5
    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    :cond_13
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    .line 411
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/View;->setPressed(Z)V

    .line 412
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    if-eqz v10, :cond_14

    .line 414
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    :cond_14
    new-instance v10, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$3;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    .line 432
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    .line 433
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v11

    int-to-long v12, v11

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v6    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;
    :cond_15
    :goto_6
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    .line 443
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 401
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v6    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;

    goto :goto_5

    .line 438
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_17
    invoke-virtual {v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$e;->run()V

    goto :goto_6

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 479
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Ljug;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 483
    :cond_0
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->o:Z

    if-nez v1, :cond_1

    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    .line 488
    :cond_1
    instance-of v1, p1, Ljuf;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 489
    check-cast v0, Ljuf;

    .line 499
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    .local v0, "baseAdapter":Ljuf;
    :goto_0
    new-instance v1, Ljug;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Ljug;-><init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljuf;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    .line 500
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Ljug;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 501
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c()V

    .line 502
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    return-void

    .line 490
    .end local v0    # "baseAdapter":Ljuf;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v1, p1, Ljui;

    if-eqz v1, :cond_3

    .line 492
    new-instance v0, Ljuj;

    check-cast p1, Ljui;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, p1}, Ljuj;-><init>(Ljui;)V

    .restart local v0    # "baseAdapter":Ljuf;
    goto :goto_0

    .line 496
    .end local v0    # "baseAdapter":Ljuf;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    new-instance v0, Ljuh;

    invoke-direct {v0, p1}, Ljuh;-><init>(Landroid/widget/ListAdapter;)V

    .restart local v0    # "baseAdapter":Ljuf;
    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "useStickyHeaders"    # Z

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-eq p1, v0, :cond_0

    .line 507
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    .line 508
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 510
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 515
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->o:Z

    .line 517
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 522
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    .line 523
    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    .line 532
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 537
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->u:I

    .line 538
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->y:Z

    .line 544
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    .line 545
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Ljug;

    invoke-virtual {v0, p1}, Ljug;->a(I)V

    .line 548
    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$c;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$c;

    .line 552
    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;)V
    .locals 1
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setLongClickable(Z)V

    .line 558
    :cond_0
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;

    .line 559
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 564
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 565
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->B:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 571
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 572
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 577
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 578
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    .line 583
    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 1
    .param p1, "isTranscluent"    # Z

    .prologue
    .line 586
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    .line 587
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 592
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    .line 593
    return-void
.end method
