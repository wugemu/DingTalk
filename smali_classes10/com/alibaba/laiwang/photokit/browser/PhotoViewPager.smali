.class public Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.super Landroid/view/ViewGroup;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$g;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$a;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$d;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;,
        Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final ac:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$g;

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:I

.field private K:Landroid/view/VelocityTracker;

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Landroid/support/v4/widget/EdgeEffectCompat;

.field private Q:Landroid/support/v4/widget/EdgeEffectCompat;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

.field private W:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$d;

.field private aa:Ljava/lang/reflect/Method;

.field private ab:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ad:Ljava/lang/Runnable;

.field private ae:I

.field private af:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

.field private b:I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

.field private final g:Landroid/graphics/Rect;

.field private h:Lgl;

.field private i:I

.field private j:I

.field private k:Landroid/os/Parcelable;

.field private l:Ljava/lang/ClassLoader;

.field private m:Landroid/widget/Scroller;

.field private n:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a:[I

    .line 132
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$1;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$1;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->c:Ljava/util/Comparator;

    .line 139
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$2;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$2;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d:Landroid/view/animation/Interpolator;

    .line 239
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$g;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$g;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ac:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 360
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->f:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g:Landroid/graphics/Rect;

    .line 153
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->j:I

    .line 154
    iput-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->k:Landroid/os/Parcelable;

    .line 155
    iput-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->l:Ljava/lang/ClassLoader;

    .line 167
    const v0, -0x800001

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    .line 168
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    .line 177
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    .line 196
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 223
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    .line 224
    iput-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->S:Z

    .line 257
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;-><init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ad:Ljava/lang/Runnable;

    .line 264
    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ae:I

    .line 361
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d()V

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 365
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->f:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g:Landroid/graphics/Rect;

    .line 153
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->j:I

    .line 154
    iput-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->k:Landroid/os/Parcelable;

    .line 155
    iput-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->l:Ljava/lang/ClassLoader;

    .line 167
    const v0, -0x800001

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    .line 168
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    .line 177
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    .line 196
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 223
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    .line 224
    iput-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->S:Z

    .line 257
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;-><init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ad:Ljava/lang/Runnable;

    .line 264
    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ae:I

    .line 366
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d()V

    .line 367
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2634
    if-nez p1, :cond_0

    .line 2635
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2637
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2638
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2656
    :cond_1
    return-object p1

    .line 2641
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2642
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2643
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2644
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2646
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2647
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2648
    check-cast v0, Landroid/view/ViewGroup;

    .line 2649
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2650
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2651
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2652
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2654
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2655
    goto :goto_0
.end method

.method private a(II)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 846
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;-><init>()V

    .line 847
    .local v0, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iput p1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 848
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v1, p0, p1}, Lgl;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    .line 849
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v1, p1}, Lgl;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    .line 850
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :goto_0
    return-object v0

    .line 853
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1344
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1345
    .local v1, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget-object v3, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lgl;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_1
    return-object v1

    .line 1343
    .restart local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)Lgl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    return-object v0
.end method

.method private a(I)V
    .locals 29
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 934
    const/16 v20, 0x0

    .line 935
    .local v20, "oldCurInfo":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    const/4 v14, 0x2

    .line 936
    .local v14, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v14, 0x42

    .line 938
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(I)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v20

    .line 939
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    .line 942
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 1119
    :cond_1
    return-void

    .line 937
    :cond_2
    const/16 v14, 0x11

    goto :goto_0

    .line 951
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgl;->startUpdate(Landroid/view/ViewGroup;)V

    .line 966
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    move/from16 v21, v0

    .line 967
    .local v21, "pageLimit":I
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v27, v0

    sub-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 968
    .local v25, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lgl;->getCount()I

    move-result v4

    .line 969
    .local v4, "N":I
    add-int/lit8 v26, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v27, v0

    add-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 971
    .local v11, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v4, v0, :cond_4

    .line 974
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 978
    .local v23, "resName":Ljava/lang/String;
    :goto_1
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " Pager id: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " Pager class: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 982
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " Problematic adapter: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v28, v0

    .line 983
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 976
    .end local v23    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v26

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 988
    .end local v23    # "resName":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 989
    .local v9, "curItem":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    const/4 v8, 0x0

    .local v8, "curIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_5

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 991
    .local v16, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    .line 992
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v9, v16

    .line 997
    .end local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_5
    if-nez v9, :cond_6

    if-lez v4, :cond_6

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(II)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v9

    .line 1004
    :cond_6
    if-eqz v9, :cond_1a

    .line 1005
    const/4 v12, 0x0

    .line 1006
    .local v12, "extraWidthLeft":F
    add-int/lit8 v17, v8, -0x1

    .line 1007
    .local v17, "itemIndex":I
    if-ltz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    .line 1008
    .restart local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v7

    .line 1009
    .local v7, "clientWidth":I
    if-gtz v7, :cond_a

    const/16 v18, 0x0

    .line 1011
    .local v18, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    .local v22, "pos":I
    :goto_5
    if-ltz v22, :cond_10

    .line 1012
    cmpl-float v26, v12, v18

    if-ltz v26, :cond_c

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 1013
    if-eqz v16, :cond_10

    .line 1016
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->c:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lgl;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1023
    add-int/lit8 v17, v17, -0x1

    .line 1024
    add-int/lit8 v8, v8, -0x1

    .line 1025
    if-ltz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    .line 1011
    :cond_7
    :goto_6
    add-int/lit8 v22, v22, -0x1

    goto :goto_5

    .line 989
    .end local v7    # "clientWidth":I
    .end local v12    # "extraWidthLeft":F
    .end local v17    # "itemIndex":I
    .end local v18    # "leftWidthNeeded":F
    .end local v22    # "pos":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1007
    .end local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .restart local v12    # "extraWidthLeft":F
    .restart local v17    # "itemIndex":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_3

    .line 1009
    .restart local v7    # "clientWidth":I
    .restart local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_a
    const/high16 v26, 0x40000000    # 2.0f

    iget v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    add-float v18, v26, v27

    goto/16 :goto_4

    .line 1025
    .restart local v18    # "leftWidthNeeded":F
    .restart local v22    # "pos":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_6

    .line 1027
    :cond_c
    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1028
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    move/from16 v26, v0

    add-float v12, v12, v26

    .line 1029
    add-int/lit8 v17, v17, -0x1

    .line 1030
    if-ltz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    :goto_7
    goto :goto_6

    :cond_d
    const/16 v16, 0x0

    goto :goto_7

    .line 1032
    :cond_e
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(II)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v16

    .line 1033
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    move/from16 v26, v0

    add-float v12, v12, v26

    .line 1034
    add-int/lit8 v8, v8, 0x1

    .line 1035
    if-ltz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    :goto_8
    goto/16 :goto_6

    :cond_f
    const/16 v16, 0x0

    goto :goto_8

    .line 1039
    :cond_10
    iget v13, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    .line 1040
    .local v13, "extraWidthRight":F
    add-int/lit8 v17, v8, 0x1

    .line 1041
    const/high16 v26, 0x40000000    # 2.0f

    cmpg-float v26, v13, v26

    if-gez v26, :cond_19

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    .line 1043
    :goto_9
    if-gtz v7, :cond_13

    const/16 v24, 0x0

    .line 1045
    .local v24, "rightWidthNeeded":F
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, 0x1

    :goto_b
    move/from16 v0, v22

    if-ge v0, v4, :cond_19

    .line 1046
    cmpl-float v26, v13, v24

    if-ltz v26, :cond_15

    move/from16 v0, v22

    if-le v0, v11, :cond_15

    .line 1047
    if-eqz v16, :cond_19

    .line 1050
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->c:Z

    move/from16 v26, v0

    if-nez v26, :cond_11

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lgl;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    .line 1045
    :cond_11
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 1042
    .end local v24    # "rightWidthNeeded":F
    :cond_12
    const/16 v16, 0x0

    goto :goto_9

    .line 1044
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v7

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    add-float v24, v26, v27

    goto/16 :goto_a

    .line 1057
    .restart local v24    # "rightWidthNeeded":F
    :cond_14
    const/16 v16, 0x0

    goto :goto_c

    .line 1059
    :cond_15
    if-eqz v16, :cond_17

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 1060
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    move/from16 v26, v0

    add-float v13, v13, v26

    .line 1061
    add-int/lit8 v17, v17, 0x1

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    :goto_d
    goto :goto_c

    :cond_16
    const/16 v16, 0x0

    goto :goto_d

    .line 1064
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(II)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v16

    .line 1065
    add-int/lit8 v17, v17, 0x1

    .line 1066
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    move/from16 v26, v0

    add-float v13, v13, v26

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-object/from16 v16, v26

    :goto_e
    goto/16 :goto_c

    :cond_18
    const/16 v16, 0x0

    goto :goto_e

    .line 1072
    .end local v24    # "rightWidthNeeded":F
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v8, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;ILcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;)V

    .line 1082
    .end local v7    # "clientWidth":I
    .end local v12    # "extraWidthLeft":F
    .end local v13    # "extraWidthRight":F
    .end local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v17    # "itemIndex":I
    .end local v18    # "leftWidthNeeded":F
    .end local v22    # "pos":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v28, v0

    if-eqz v9, :cond_1c

    iget-object v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    move-object/from16 v26, v0

    :goto_f
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgl;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgl;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v6

    .line 1089
    .local v6, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_10
    if-ge v15, v6, :cond_1d

    .line 1090
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1091
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1092
    .local v19, "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    move-object/from16 v0, v19

    iput v15, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->f:I

    .line 1093
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    move/from16 v26, v0

    if-nez v26, :cond_1b

    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1b

    .line 1095
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v16

    .line 1096
    .restart local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v16, :cond_1b

    .line 1097
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    .line 1098
    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->e:I

    .line 1089
    .end local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 1082
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v19    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    :cond_1c
    const/16 v26, 0x0

    goto :goto_f

    .line 1104
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->hasFocus()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1106
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v16

    .line 1107
    .restart local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_11
    if-eqz v16, :cond_1e

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 1108
    :cond_1e
    const/4 v15, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    .line 1109
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1110
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v16

    .line 1111
    if-eqz v16, :cond_1f

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 1112
    invoke-virtual {v5, v14}, Landroid/view/View;->requestFocus(I)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1108
    :cond_1f
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 1106
    .end local v5    # "child":Landroid/view/View;
    .end local v16    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_20
    const/16 v16, 0x0

    goto :goto_11
.end method

.method private a(IFI)V
    .locals 16
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1689
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->U:I

    if-lez v14, :cond_1

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v12

    .line 1691
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v10

    .line 1692
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v11

    .line 1693
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWidth()I

    move-result v13

    .line 1694
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v4

    .line 1695
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_1

    .line 1696
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1697
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1698
    .local v9, "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    iget-boolean v14, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    if-eqz v14, :cond_0

    .line 1700
    iget v14, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v14, 0x7

    .line 1702
    .local v7, "hgrav":I
    packed-switch v7, :pswitch_data_0

    .line 1704
    :pswitch_0
    move v5, v10

    .line 1719
    .local v5, "childLeft":I
    :goto_1
    add-int/2addr v5, v12

    .line 1721
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v6, v5, v14

    .line 1722
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1723
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1695
    .end local v5    # "childLeft":I
    .end local v6    # "childOffset":I
    .end local v7    # "hgrav":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1707
    .restart local v7    # "hgrav":I
    :pswitch_1
    move v5, v10

    .line 1708
    .restart local v5    # "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v10, v14

    .line 1709
    goto :goto_1

    .line 1711
    .end local v5    # "childLeft":I
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1713
    .restart local v5    # "childLeft":I
    goto :goto_1

    .line 1715
    .end local v5    # "childLeft":I
    :pswitch_3
    sub-int v14, v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v5, v14, v15

    .line 1716
    .restart local v5    # "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_1

    .line 1728
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v13    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v14, :cond_2

    .line 1729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(IFI)V

    .line 1749
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->T:Z

    .line 1750
    return-void

    .line 1702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1485
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1486
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1487
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1489
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v13

    .line 1490
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1491
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1493
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 1494
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1497
    .local v5, "newDuration":I
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(I)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v11

    .line 1498
    .local v11, "targetInfo":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1511
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(I)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v6

    .line 1503
    .local v6, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1505
    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1506
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Z)V

    .line 1508
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1503
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 18
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    .line 573
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(I)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v8

    .line 574
    .local v8, "curInfo":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    const/4 v9, 0x0

    .line 575
    .local v9, "destX":I
    if-eqz v8, :cond_0

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v10

    .line 577
    .local v10, "width":I
    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    iget v4, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    .line 578
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 577
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 580
    .end local v10    # "width":I
    :cond_0
    if-eqz p2, :cond_6

    .line 3805
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 3807
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    .line 582
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v2, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(I)V

    .line 585
    :cond_1
    if-eqz p4, :cond_2

    .line 599
    :cond_2
    :goto_1
    return-void

    .line 3810
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v3

    .line 3811
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollY()I

    move-result v4

    .line 3812
    sub-int v5, v9, v3

    .line 3813
    rsub-int/lit8 v6, v4, 0x0

    .line 3814
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    .line 3815
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Z)V

    .line 3816
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    .line 3817
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollState(I)V

    goto :goto_0

    .line 3821
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    .line 3822
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollState(I)V

    .line 3824
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v2

    .line 3825
    div-int/lit8 v7, v2, 0x2

    .line 3826
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v2

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 3827
    int-to-float v12, v7

    int-to-float v7, v7

    .line 4782
    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v11, v13

    .line 4783
    float-to-double v14, v11

    const-wide v16, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v14, v14, v16

    double-to-float v11, v14

    .line 4784
    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    .line 3828
    mul-float/2addr v7, v11

    add-float/2addr v7, v12

    .line 3831
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 3832
    if-lez v11, :cond_5

    .line 3833
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v11, v11

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .line 3839
    :goto_2
    const/16 v7, 0x258

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3842
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3835
    :cond_5
    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    invoke-virtual {v7, v11}, Lgl;->getPageWidth(I)F

    move-result v7

    mul-float/2addr v2, v7

    .line 3836
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    div-float v2, v7, v2

    .line 3837
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    goto :goto_2

    .line 589
    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v2, :cond_7

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(I)V

    .line 595
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Z)V

    .line 596
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 597
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->c(I)Z

    goto/16 :goto_1
.end method

.method private a(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZI)V

    .line 526
    return-void
.end method

.method private a(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 529
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v3}, Lgl;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 530
    :cond_0
    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    .line 569
    :goto_0
    return-void

    .line 533
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 538
    :cond_2
    if-gez p1, :cond_5

    .line 539
    const/4 p1, 0x0

    .line 543
    :cond_3
    :goto_1
    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    .line 544
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 548
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 549
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    iput-boolean v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->c:Z

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 540
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v3}, Lgl;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 541
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v3}, Lgl;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 552
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-eq v3, p1, :cond_8

    .line 554
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    if-eqz v3, :cond_9

    .line 557
    iput p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    .line 558
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v3, :cond_7

    .line 559
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v3, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(I)V

    .line 564
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->requestLayout()V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_8
    move v0, v4

    .line 552
    goto :goto_3

    .line 566
    .restart local v0    # "dispatchSelected":Z
    :cond_9
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(I)V

    .line 567
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2438
    .line 19477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 19499
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2440
    .local v1, "pointerId":I
    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    if-ne v1, v3, :cond_0

    .line 2443
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 19510
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2444
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 20499
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 2445
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 2446
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2447
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2450
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;ILcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;)V
    .locals 14
    .param p1, "curItem"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1138
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v12}, Lgl;->getCount()I

    move-result v1

    .line 1139
    .local v1, "N":I
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v11

    .line 1140
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1142
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1143
    move-object/from16 v0, p3

    iget v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 1145
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ge v8, v12, :cond_3

    .line 1146
    const/4 v5, 0x0

    .line 1148
    .local v5, "itemIndex":I
    move-object/from16 v0, p3

    iget v12, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1149
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1150
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1151
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1152
    .local v3, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_2
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1153
    add-int/lit8 v5, v5, 0x1

    .line 1154
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    goto :goto_2

    .line 1140
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1156
    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ge v9, v12, :cond_2

    .line 1159
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v12, v9}, Lgl;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1160
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1162
    :cond_2
    iput v7, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 1163
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1150
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1165
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-le v8, v12, :cond_6

    .line 1166
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1168
    .restart local v5    # "itemIndex":I
    move-object/from16 v0, p3

    iget v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 1169
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1170
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1171
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1172
    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_5
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1173
    add-int/lit8 v5, v5, -0x1

    .line 1174
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    goto :goto_5

    .line 1176
    :cond_4
    :goto_6
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-le v9, v12, :cond_5

    .line 1179
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v12, v9}, Lgl;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1180
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1182
    :cond_5
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1183
    iput v7, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 1170
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1189
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1190
    .local v4, "itemCount":I
    iget v7, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 1191
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    add-int/lit8 v9, v12, -0x1

    .line 1192
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    :goto_7
    iput v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    .line 1193
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    iget v13, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    .line 1196
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1197
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1198
    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_a
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-le v9, v12, :cond_9

    .line 1199
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lgl;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1192
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1193
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1201
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_9
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1202
    iput v7, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 1203
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    .line 1196
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1205
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_b
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    iget v13, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1206
    iget v12, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    add-int/lit8 v9, v12, 0x1

    .line 1208
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1209
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1210
    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_c
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ge v9, v12, :cond_c

    .line 1211
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lgl;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1213
    :cond_c
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1214
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    .line 1216
    :cond_d
    iput v7, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 1217
    iget v12, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1208
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1220
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->S:Z

    .line 1221
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollState(I)V

    return-void
.end method

.method private a(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 1753
    iget v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ae:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1754
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1756
    invoke-direct {p0, v7}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    .line 1757
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1758
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v3

    .line 1759
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollY()I

    move-result v4

    .line 1760
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1761
    .local v5, "x":I
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1762
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1763
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 1766
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 1767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1768
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1769
    .local v1, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget-boolean v8, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->c:Z

    if-eqz v8, :cond_2

    .line 1770
    const/4 v2, 0x1

    .line 1771
    iput-boolean v7, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->c:Z

    .line 1767
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1753
    goto :goto_0

    .line 1774
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1775
    if-eqz p1, :cond_6

    .line 1776
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ad:Ljava/lang/Runnable;

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1781
    :cond_5
    :goto_2
    return-void

    .line 1778
    :cond_6
    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ad:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2111
    const/4 v7, 0x0

    .line 2113
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    sub-float v2, v14, p1

    .line 2114
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 2116
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2117
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2118
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v13

    .line 2120
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    mul-float v6, v14, v15

    .line 2121
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    mul-float v11, v14, v15

    .line 2122
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2123
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2125
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 2126
    .local v3, "firstItem":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 2127
    .local v4, "lastItem":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget v14, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-eqz v14, :cond_0

    .line 2128
    const/4 v5, 0x0

    .line 2129
    iget v14, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2131
    :cond_0
    iget v14, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v15}, Lgl;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2132
    const/4 v10, 0x0

    .line 2133
    iget v14, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2136
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2137
    if-eqz v5, :cond_2

    .line 2138
    sub-float v9, v6, v12

    .line 2139
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    move-result v7

    .line 2141
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2150
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 2151
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 2152
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->c(I)Z

    .line 2154
    return v7

    .line 2142
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2143
    if-eqz v10, :cond_5

    .line 2144
    sub-float v9, v12, v11

    .line 2145
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    move-result v7

    .line 2147
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2505
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2506
    check-cast v7, Landroid/view/ViewGroup;

    .line 2507
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2508
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2509
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2511
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2514
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2515
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 2516
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 2517
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 2518
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2517
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2519
    const/4 v0, 0x1

    .line 2524
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2511
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2524
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    return v0
.end method

.method private b(I)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1365
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1366
    .local v1, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget v2, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ne v2, p1, :cond_0

    .line 1370
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_1
    return-object v1

    .line 1364
    .restart local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1370
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private b(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1354
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1355
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1356
    :cond_0
    const/4 v1, 0x0

    .line 1360
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1358
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1360
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2104
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2105
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2106
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2108
    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 10
    .param p1, "xpos"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 1648
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1649
    iput-boolean v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->T:Z

    .line 1650
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v7}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IFI)V

    .line 1651
    iget-boolean v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->T:Z

    if-nez v8, :cond_2

    .line 1652
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1657
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e()Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v1

    .line 1658
    .local v1, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v5

    .line 1659
    .local v5, "width":I
    iget v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    add-int v6, v5, v8

    .line 1660
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1661
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 1662
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1664
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1666
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->T:Z

    .line 1667
    invoke-direct {p0, v0, v4, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IFI)V

    .line 1668
    iget-boolean v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->T:Z

    if-nez v7, :cond_1

    .line 1669
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1672
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a:[I

    return-object v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 370
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setWillNotDraw(Z)V

    .line 371
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setDescendantFocusability(I)V

    .line 372
    invoke-virtual {p0, v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setFocusable(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 374
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    .line 375
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 376
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 378
    .local v2, "density":F
    invoke-static {v0}, Lgo;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    .line 379
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->L:I

    .line 380
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->M:I

    .line 381
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 382
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 384
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->N:I

    .line 385
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->O:I

    .line 386
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->C:I

    .line 388
    new-instance v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$c;-><init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lfz;)V

    .line 390
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 392
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 395
    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 13
    .param p1, "direction"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2568
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2569
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2570
    const/4 v1, 0x0

    .line 2594
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2596
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2598
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2599
    if-ne p1, v11, :cond_8

    .line 2602
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2603
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2604
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2605
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g()Z

    move-result v2

    .line 2627
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2628
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->playSoundEffect(I)V

    .line 2630
    :cond_2
    return v2

    .line 2571
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2572
    const/4 v3, 0x0

    .line 2573
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2575
    if-ne v6, p0, :cond_5

    .line 2576
    const/4 v3, 0x1

    .line 2580
    :cond_4
    if-nez v3, :cond_0

    .line 2582
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 2583
    .local v7, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2584
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2586
    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2585
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2574
    .end local v7    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2588
    .restart local v7    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_6
    const-string/jumbo v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2588
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2607
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2609
    goto :goto_1

    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2612
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2613
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2614
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2615
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h()Z

    move-result v2

    goto/16 :goto_1

    .line 2617
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2619
    goto/16 :goto_1

    .line 2620
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2622
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->g()Z

    move-result v2

    goto/16 :goto_1

    .line 2623
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2625
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h()Z

    move-result v2

    goto/16 :goto_1
.end method

.method private e()Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 2162
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v12

    .line 2163
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2164
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2165
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2166
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2167
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2168
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2170
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2171
    .local v3, "lastItem":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2172
    iget-object v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 2174
    .local v2, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-nez v0, :cond_1

    iget v13, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2176
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->f:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 2177
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 2178
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 2179
    iget-object v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget v14, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    invoke-virtual {v13, v14}, Lgl;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    .line 2180
    add-int/lit8 v1, v1, -0x1

    .line 2182
    :cond_1
    iget v9, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 2184
    .local v9, "offset":F
    move v7, v9

    .line 2185
    .local v7, "leftBound":F
    iget v13, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2186
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2187
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2200
    .end local v2    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v3    # "lastItem":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2163
    goto :goto_0

    .line 2193
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .restart local v3    # "lastItem":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2194
    iget v5, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 2195
    move v4, v9

    .line 2196
    iget v6, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    .line 2197
    move-object v3, v2

    .line 2171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2453
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    .line 2454
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->B:Z

    .line 2456
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    .line 2460
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2660
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-lez v1, :cond_0

    .line 2661
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZ)V

    .line 2664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2668
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v2}, Lgl;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2669
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZ)V

    .line 2672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 404
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ae:I

    if-ne v0, p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iput p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ae:I

    .line 413
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->b(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2463
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->x:Z

    if-eq v0, p1, :cond_0

    .line 2464
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->x:Z

    .line 2475
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 861
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v12}, Lgl;->getCount()I

    move-result v0

    .line 862
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b:I

    .line 863
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_2

    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    .line 864
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_2

    move v7, v10

    .line 865
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    .line 867
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 868
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_5

    .line 869
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 870
    .local v4, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget-object v13, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lgl;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 872
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    .line 876
    const/4 v12, -0x2

    if-ne v9, v12, :cond_3

    .line 877
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 878
    add-int/lit8 v3, v3, -0x1

    .line 880
    if-nez v5, :cond_0

    .line 881
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v12, p0}, Lgl;->startUpdate(Landroid/view/ViewGroup;)V

    .line 882
    const/4 v5, 0x1

    .line 885
    :cond_0
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget v13, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget-object v14, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lgl;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 886
    const/4 v7, 0x1

    .line 888
    iget v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    iget v13, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ne v12, v13, :cond_1

    .line 890
    iget v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 891
    const/4 v7, 0x1

    .line 868
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_2
    move v7, v11

    .line 864
    goto :goto_0

    .line 896
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_3
    iget v12, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-eq v12, v9, :cond_1

    .line 897
    iget v12, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v13, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-ne v12, v13, :cond_4

    .line 899
    move v8, v9

    .line 902
    :cond_4
    iput v9, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 903
    const/4 v7, 0x1

    goto :goto_2

    .line 907
    .end local v4    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v9    # "newPos":I
    :cond_5
    if-eqz v5, :cond_6

    .line 908
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v12, p0}, Lgl;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 911
    :cond_6
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    sget-object v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->c:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 913
    if-eqz v7, :cond_9

    .line 915
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v2

    .line 916
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    .line 917
    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 918
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 919
    .local v6, "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    if-nez v12, :cond_7

    .line 920
    const/4 v12, 0x0

    iput v12, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    .line 916
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 924
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    :cond_8
    invoke-direct {p0, v8, v11, v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZ)V

    .line 925
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->requestLayout()V

    .line 927
    .end local v2    # "childCount":I
    :cond_9
    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 517
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZ)V

    .line 518
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2680
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2682
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2684
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2685
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2686
    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2687
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2688
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v4

    .line 2689
    .local v4, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v6, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-ne v5, v6, :cond_0

    .line 2690
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2685
    .end local v4    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2700
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 2703
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2706
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2717
    :cond_3
    :goto_1
    return-void

    .line 2709
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 2710
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2713
    :cond_5
    if-eqz p1, :cond_3

    .line 2714
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2727
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2728
    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2729
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2730
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v2

    .line 2731
    .local v2, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-ne v3, v4, :cond_0

    .line 2732
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2727
    .end local v2    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2736
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1309
    invoke-virtual {p0, p3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    invoke-virtual {p0, p3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1312
    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1313
    .local v0, "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    instance-of v2, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$a;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    .line 1314
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->w:Z

    if-eqz v1, :cond_2

    .line 1315
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_1

    .line 1316
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1318
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->d:Z

    .line 1319
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1331
    :goto_0
    return-void

    .line 1321
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(I)V

    .line 931
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2478
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-nez v4, :cond_1

    .line 2489
    :cond_0
    :goto_0
    return v2

    .line 2482
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v1

    .line 2483
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v0

    .line 2484
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 2485
    int-to-float v4, v1

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 2486
    :cond_2
    if-lez p1, :cond_0

    .line 2487
    int-to-float v4, v1

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2806
    instance-of v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1624
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1625
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v0

    .line 1626
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollY()I

    move-result v1

    .line 1627
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1628
    .local v2, "x":I
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1630
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1631
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 1632
    invoke-direct {p0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->c(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1633
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1634
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 1639
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1645
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1644
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2530
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20543
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 20544
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    .line 2530
    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 20546
    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d(I)Z

    move-result v2

    goto :goto_0

    .line 20549
    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d(I)Z

    move-result v2

    goto :goto_0

    .line 20552
    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 21071
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    .line 20555
    if-eqz v2, :cond_3

    .line 20556
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d(I)Z

    move-result v2

    goto :goto_0

    .line 22062
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 20557
    if-eqz v2, :cond_0

    .line 20558
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->d(I)Z

    move-result v2

    goto :goto_0

    .line 20544
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2774
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2775
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2791
    :goto_0
    return v4

    .line 2779
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v1

    .line 2780
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2781
    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2782
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2783
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v3

    .line 2784
    .local v3, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-ne v4, v5, :cond_1

    .line 2785
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2786
    const/4 v4, 0x1

    goto :goto_0

    .line 2780
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2791
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 2225
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2226
    const/4 v1, 0x0

    .line 2228
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v2

    .line 2229
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    .line 2231
    invoke-virtual {v5}, Lgl;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2232
    :cond_0
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 17098
    iget-object v5, v5, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    .line 2232
    if-nez v5, :cond_1

    .line 2233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2234
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2235
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWidth()I

    move-result v4

    .line 2237
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2238
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->s:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2239
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 2240
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/lit8 v1, v5, 0x0

    .line 2241
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2243
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 18098
    iget-object v5, v5, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    .line 2243
    if-nez v5, :cond_2

    .line 2244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2245
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWidth()I

    move-result v4

    .line 2246
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2248
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2249
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->t:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2250
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 2251
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2252
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2259
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2261
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 2263
    :cond_3
    return-void

    .line 2255
    :cond_4
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 18109
    iget-object v5, v5, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2256
    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 19109
    iget-object v5, v5, Landroid/support/v4/widget/EdgeEffectCompat;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 770
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 771
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->p:Landroid/graphics/drawable/Drawable;

    .line 772
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 775
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2796
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2811
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2801
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lgl;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 659
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ab:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    iget v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->f:I

    .line 660
    .local v0, "result":I
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1375
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    .line 1377
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ad:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 400
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 401
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2267
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2270
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v13, :cond_3

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v10

    .line 2272
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWidth()I

    move-result v11

    .line 2274
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2275
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2276
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 2277
    .local v3, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget v8, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    .line 2278
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2279
    .local v4, "itemCount":I
    iget v2, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 2280
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    iget v6, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 2281
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 2282
    :goto_1
    iget v13, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .restart local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    goto :goto_1

    .line 2287
    :cond_0
    iget v13, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    if-ne v9, v13, :cond_2

    .line 2288
    iget v13, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    iget v14, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2289
    .local v1, "drawAt":F
    iget v13, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    iget v14, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2296
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->p:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->q:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->r:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->p:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2302
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-gtz v13, :cond_3

    .line 2281
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2291
    .end local v1    # "drawAt":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v13, v9}, Lgl;->getPageWidth(I)F

    move-result v12

    .line 2292
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2293
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2307
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    .end local v12    # "widthFactor":F
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1813
    .line 7828
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 7831
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 7834
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    .line 7835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->B:Z

    .line 7836
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 7837
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 7838
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    :cond_1
    move v0, v7

    .line 7891
    :goto_0
    return v0

    .line 7846
    :cond_2
    if-eqz v0, :cond_4

    .line 7847
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    if-eqz v1, :cond_3

    move v0, v6

    .line 7849
    goto :goto_0

    .line 7851
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->B:Z

    if-eqz v1, :cond_4

    move v0, v7

    .line 7853
    goto :goto_0

    .line 7857
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 7955
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 7956
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    .line 7958
    :cond_6
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7964
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    goto :goto_0

    .line 7868
    :sswitch_0
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 7869
    if-eq v0, v2, :cond_5

    .line 8488
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7875
    if-ltz v0, :cond_5

    .line 8510
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 7879
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    sub-float v9, v8, v1

    .line 7880
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 8521
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 7882
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->I:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7885
    cmpl-float v0, v9, v13

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 8784
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->D:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    cmpl-float v1, v9, v13

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->D:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    cmpg-float v0, v9, v13

    if-gez v0, :cond_d

    :cond_8
    move v0, v6

    .line 7885
    :goto_2
    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v9

    float-to-int v4, v8

    float-to-int v5, v11

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-nez v0, :cond_c

    .line 8790
    :cond_9
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    if-eqz v0, :cond_f

    .line 8791
    cmpg-float v0, v9, v13

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    cmpl-float v0, v9, v13

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 7886
    :cond_b
    :goto_3
    if-eqz v6, :cond_10

    .line 7888
    :cond_c
    iput v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 7889
    iput v11, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->G:F

    .line 7890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->B:Z

    move v0, v7

    .line 7891
    goto/16 :goto_0

    :cond_d
    move v0, v7

    .line 8784
    goto :goto_2

    :cond_e
    move v6, v7

    .line 8791
    goto :goto_3

    :cond_f
    move v6, v7

    .line 8793
    goto :goto_3

    .line 7893
    :cond_10
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v10

    cmpl-float v0, v0, v12

    if-lez v0, :cond_13

    .line 7895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    .line 7896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Z)V

    .line 7897
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollState(I)V

    .line 7898
    cmpl-float v0, v9, v13

    if-lez v0, :cond_12

    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 7900
    iput v11, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->G:F

    .line 7901
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    .line 7910
    :cond_11
    :goto_5
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    if-eqz v0, :cond_5

    .line 7912
    invoke-direct {p0, v8}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7913
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1818
    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 7898
    :cond_12
    :try_start_1
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_4

    .line 7902
    :cond_13
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_11

    .line 7908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->B:Z

    goto :goto_5

    .line 7924
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 7925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->I:F

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->G:F

    .line 7926
    const/4 v0, 0x0

    .line 9499
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 7926
    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 7927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->B:Z

    .line 7929
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 7930
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->ae:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    .line 7931
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->O:I

    if-le v0, v1, :cond_14

    .line 7933
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 7935
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    .line 7936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    .line 7937
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Z)V

    .line 7938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 7940
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Z)V

    .line 7941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    goto/16 :goto_1

    .line 7951
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 7857
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v9

    .line 1516
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1517
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1518
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v19

    .line 1519
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingTop()I

    move-result v21

    .line 1520
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v20

    .line 1521
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingBottom()I

    move-result v18

    .line 1522
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v22

    .line 1524
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1528
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1529
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1530
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1531
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1534
    .local v17, "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1535
    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->b:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1536
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->b:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1537
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1539
    :pswitch_0
    move/from16 v6, v19

    .line 1554
    .local v6, "childLeft":I
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1556
    move/from16 v7, v21

    .line 1571
    .local v7, "childTop":I
    :goto_2
    add-int v6, v6, v22

    .line 1573
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1574
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1572
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1575
    add-int/lit8 v10, v10, 0x1

    .line 1528
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1542
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1543
    .restart local v6    # "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1544
    goto :goto_1

    .line 1546
    .end local v6    # "childLeft":I
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1548
    .restart local v6    # "childLeft":I
    goto :goto_1

    .line 1550
    .end local v6    # "childLeft":I
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1551
    .restart local v6    # "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1559
    :sswitch_0
    move/from16 v7, v21

    .line 1560
    .restart local v7    # "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1561
    goto :goto_2

    .line 1563
    .end local v7    # "childTop":I
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1565
    .restart local v7    # "childTop":I
    goto :goto_2

    .line 1567
    .end local v7    # "childTop":I
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1568
    .restart local v7    # "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1580
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1582
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1583
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1584
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1585
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1587
    .restart local v17    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v15

    .local v15, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v15, :cond_3

    .line 1588
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1589
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1590
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1591
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->d:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1594
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->d:Z

    .line 1595
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1598
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1601
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1607
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1608
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1606
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1582
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1612
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->q:I

    .line 1613
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->r:I

    .line 1614
    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->U:I

    .line 1616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZIZ)V

    .line 1619
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    .line 1620
    return-void

    .line 1537
    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1386
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    .line 1387
    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1386
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setMeasuredDimension(II)V

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1390
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1391
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->C:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->D:I

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1395
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1402
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v16

    .line 1403
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1404
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1405
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1406
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1407
    .local v13, "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1408
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->b:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1409
    .local v11, "hgrav":I
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->b:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1410
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1411
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1412
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1413
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1415
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1416
    const/high16 v18, 0x40000000    # 2.0f

    .line 1421
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1422
    .local v19, "widthSize":I
    move v9, v4

    .line 1423
    .local v9, "heightSize":I
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1424
    const/high16 v18, 0x40000000    # 2.0f

    .line 1425
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1426
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1429
    :cond_3
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1430
    const/high16 v8, 0x40000000    # 2.0f

    .line 1431
    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1432
    iget v9, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->height:I

    .line 1435
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1436
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1437
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1439
    if-eqz v7, :cond_9

    .line 1440
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1403
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1412
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1413
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1417
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1418
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1441
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1442
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1448
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->u:I

    .line 1449
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->v:I

    .line 1452
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->w:Z

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    .line 1454
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->w:Z

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v16

    .line 1458
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_c

    .line 1459
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1460
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1464
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 1465
    .restart local v13    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 1466
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1468
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->v:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1458
    .end local v13    # "lp":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1472
    .end local v3    # "child":Landroid/view/View;
    :cond_c
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2747
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v1

    .line 2748
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2749
    const/4 v6, 0x0

    .line 2750
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2751
    .local v5, "increment":I
    move v2, v1

    .line 2757
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2758
    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2759
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2760
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/View;)Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v4

    .line 2761
    .local v4, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-ne v7, v8, :cond_1

    .line 2762
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2763
    const/4 v7, 0x1

    .line 2768
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :goto_2
    return v7

    .line 2753
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2754
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2755
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2757
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2768
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1289
    instance-of v1, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1290
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1305
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1294
    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;

    .line 1295
    .local v0, "ss":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1297
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v1, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lgl;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1299
    iget v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZ)V

    goto :goto_0

    .line 1301
    :cond_1
    iget v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->position:I

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->j:I

    .line 1302
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->k:Landroid/os/Parcelable;

    .line 1303
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->l:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1278
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1279
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1280
    .local v0, "ss":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;
    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    iput v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->position:I

    .line 1281
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v2, :cond_0

    .line 1282
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v2}, Lgl;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1284
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1476
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1479
    if-eq p1, p3, :cond_0

    .line 1480
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IIII)V

    .line 1482
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1969
    .line 9985
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9993
    :cond_0
    :goto_0
    return v0

    .line 9991
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v1}, Lgl;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 9996
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 9997
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    .line 9999
    :cond_2
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 10004
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 10097
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_4

    .line 10098
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    :cond_4
    move v0, v2

    .line 1969
    goto :goto_0

    .line 10006
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 10007
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 10008
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    .line 10011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 10012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->I:F

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->G:F

    .line 10013
    const/4 v1, 0x0

    .line 10499
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 10013
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1974
    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 10017
    :pswitch_2
    :try_start_1
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    if-nez v1, :cond_5

    .line 10018
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 11488
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 11510
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 10021
    iget v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11521
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 10023
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->G:F

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 10025
    iget v6, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    .line 10027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    .line 10028
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b(Z)V

    .line 10029
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    sub-float v1, v3, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    :goto_2
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 10031
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->G:F

    .line 10032
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollState(I)V

    .line 10033
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setScrollingCacheEnabled(Z)V

    .line 10036
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 10037
    if-eqz v1, :cond_5

    .line 10038
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10043
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    if-eqz v1, :cond_3

    .line 10045
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 12488
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 12510
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 10048
    invoke-direct {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(F)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 10049
    goto/16 :goto_1

    .line 10029
    :cond_6
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->E:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_2

    .line 10052
    :pswitch_3
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    if-eqz v1, :cond_3

    .line 10053
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->K:Landroid/view/VelocityTracker;

    .line 10054
    const/16 v1, 0x3e8

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->M:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 10055
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 13037
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 10055
    float-to-int v4, v0

    .line 10057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 10058
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getClientWidth()I

    move-result v1

    .line 10059
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getScrollX()I

    move-result v3

    .line 10060
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e()Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    move-result-object v5

    .line 10061
    iget v0, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    .line 10062
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    iget v3, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->e:F

    sub-float/2addr v1, v3

    iget v3, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->d:F

    div-float v3, v1, v3

    .line 10063
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 13488
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 13510
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 10066
    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->H:F

    sub-float/2addr v1, v5

    float-to-int v1, v1

    .line 14205
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->N:I

    if-le v1, v5, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->L:I

    if-le v1, v5, :cond_8

    .line 14206
    if-lez v4, :cond_7

    :goto_3
    move v3, v0

    .line 14212
    :goto_4
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 14213
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 14214
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 14217
    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10069
    :goto_5
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZI)V

    .line 10071
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 10072
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->f()V

    .line 10073
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    or-int/2addr v0, v1

    .line 10074
    goto/16 :goto_1

    .line 14206
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 14208
    :cond_8
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    if-lt v0, v1, :cond_9

    const v1, 0x3ecccccd    # 0.4f

    .line 14209
    :goto_6
    int-to-float v0, v0

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    float-to-int v3, v0

    goto :goto_4

    .line 14208
    :cond_9
    const v1, 0x3f19999a    # 0.6f

    goto :goto_6

    .line 10077
    :pswitch_4
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->A:Z

    if-eqz v1, :cond_3

    .line 10078
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZIZ)V

    .line 10079
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 10080
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->f()V

    .line 10081
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    .line 14477
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 14510
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 10087
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F

    .line 15499
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 10088
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    goto/16 :goto_1

    .line 10092
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Landroid/view/MotionEvent;)V

    .line 10093
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->J:I

    .line 16488
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 16510
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 10093
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->F:F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_a
    move v0, v3

    goto :goto_5

    .line 10004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->w:Z

    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1340
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lgl;)V
    .locals 9
    .param p1, "adapter"    # Lgl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 424
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v3, :cond_3

    .line 425
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->n:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;

    invoke-virtual {v3, v4}, Lgl;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 426
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v3, p0}, Lgl;->startUpdate(Landroid/view/ViewGroup;)V

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 429
    .local v1, "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget v4, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget-object v6, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v6}, Lgl;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "ii":Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v3, p0}, Lgl;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 432
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v4, v5

    .line 3470
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 3471
    invoke-virtual {p0, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3472
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 3473
    iget-boolean v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    if-nez v3, :cond_1

    .line 3474
    invoke-virtual {p0, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->removeViewAt(I)V

    .line 3475
    add-int/lit8 v4, v4, -0x1

    .line 3470
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 434
    :cond_2
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->i:I

    .line 435
    invoke-virtual {p0, v5, v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->scrollTo(II)V

    .line 439
    .end local v0    # "i":I
    :cond_3
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    .line 440
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b:I

    .line 442
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    if-eqz v3, :cond_5

    .line 443
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->n:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;

    if-nez v3, :cond_4

    .line 444
    new-instance v3, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;

    invoke-direct {v3, p0, v5}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;-><init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;B)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->n:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;

    .line 446
    :cond_4
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->n:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;

    invoke-virtual {v3, v4}, Lgl;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 447
    iput-boolean v5, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 448
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    .line 449
    .local v2, "wasFirstLayout":Z
    iput-boolean v7, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    .line 450
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    invoke-virtual {v3}, Lgl;->getCount()I

    move-result v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b:I

    .line 451
    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->j:I

    if-ltz v3, :cond_6

    .line 452
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->h:Lgl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->k:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->l:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v6}, Lgl;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 453
    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->j:I

    invoke-direct {p0, v3, v5, v7}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZ)V

    .line 454
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->j:I

    .line 455
    iput-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->k:Landroid/os/Parcelable;

    .line 456
    iput-object v8, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->l:Ljava/lang/ClassLoader;

    .line 467
    .end local v2    # "wasFirstLayout":Z
    :cond_5
    :goto_2
    return-void

    .line 457
    .restart local v2    # "wasFirstLayout":Z
    :cond_6
    if-nez v2, :cond_7

    .line 458
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    goto :goto_2

    .line 460
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->requestLayout()V

    goto :goto_2
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 639
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 640
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->aa:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 642
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->aa:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->aa:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 654
    :cond_1
    :goto_1
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 650
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 505
    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->y:Z

    .line 506
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZZ)V

    .line 507
    return-void

    :cond_0
    move v0, v1

    .line 506
    goto :goto_0
.end method

.method public setMainGestureImageView(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)V
    .locals 0
    .param p1, "imageView"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1799
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 704
    if-gtz p1, :cond_0

    .line 705
    const-string/jumbo v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too small; defaulting to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 p1, 0x1

    .line 709
    :cond_0
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    if-eq p1, v0, :cond_1

    .line 710
    iput p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->z:I

    .line 711
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    .line 713
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$d;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$d;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->W:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$d;

    .line 491
    return-void
.end method

.method public setOnPageChangeListener(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->V:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    .line 609
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 724
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    .line 725
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->o:I

    .line 727
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getWidth()I

    move-result v1

    .line 728
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IIII)V

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->requestLayout()V

    .line 731
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->p:Landroid/graphics/drawable/Drawable;

    .line 749
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->refreshDrawableState()V

    .line 750
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setWillNotDraw(Z)V

    .line 751
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->invalidate()V

    .line 752
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 765
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->p:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
