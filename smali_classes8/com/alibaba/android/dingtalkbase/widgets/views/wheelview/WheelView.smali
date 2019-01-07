.class public Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
.super Landroid/widget/ListView;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ListView;"
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcth;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/LinearGradient;

.field private h:Landroid/graphics/LinearGradient;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Lctf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lctf",
            "<TT;>;"
        }
    .end annotation
.end field

.field private n:Lcte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcte",
            "<TT;>;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/AdapterView$OnItemClickListener;

.field private p:Landroid/view/View$OnTouchListener;

.field private q:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcjj;->b:I

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    .line 42
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->l:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 92
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->p:Landroid/view/View$OnTouchListener;

    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->q:Landroid/widget/AbsListView$OnScrollListener;

    .line 128
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    const/4 v1, 0x1

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    .line 42
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->l:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 92
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->p:Landroid/view/View$OnTouchListener;

    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->q:Landroid/widget/AbsListView$OnScrollListener;

    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    const/4 v1, 0x1

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    .line 42
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->l:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 92
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->p:Landroid/view/View$OnTouchListener;

    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->q:Landroid/widget/AbsListView$OnScrollListener;

    .line 138
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b()V

    .line 139
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a:I

    return v0
.end method

.method private a(III)V
    .locals 3
    .param p1, "firstPosition"    # I
    .param p2, "curPosition"    # I
    .param p3, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 412
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    sub-int v1, p2, p3

    .local v1, "position":I
    :goto_0
    add-int v2, p2, p3

    if-gt v1, v2, :cond_1

    .line 413
    sub-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "itemView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0, v1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(IILandroid/view/View;)V

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "itemView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;III)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->j:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lctf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->m:Lctf;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    const/4 v1, 0x0

    .line 330
    sget v0, Lcig$c;->uidic_global_color_transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelector(I)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setScrollingCacheEnabled(Z)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setCacheColorHint(I)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setFadingEdgeLength(I)V

    .line 335
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOverScrollMode(I)V

    .line 336
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setDividerHeight(I)V

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setNestedScrollingEnabled(Z)V

    .line 19347
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    .line 20051
    if-nez v0, :cond_1

    .line 20052
    :goto_0
    return-void

    .line 20054
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->j:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)I
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    .line 27373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27374
    :cond_0
    const/4 v0, 0x0

    .line 27379
    :goto_0
    return v0

    .line 27376
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 28067
    iget-boolean v0, v0, Lcth;->a:Z

    .line 27376
    if-eqz v0, :cond_2

    .line 27378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 27379
    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 28075
    iget v1, v1, Lcth;->b:I

    .line 27379
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 27381
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 29075
    iget v0, v0, Lcth;->b:I

    .line 27381
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 35
    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcth;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)I
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    .line 29306
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29307
    :cond_0
    const/4 p1, 0x0

    .line 29312
    .end local p1    # "x1":I
    :cond_1
    :goto_0
    return p1

    .line 29309
    .restart local p1    # "x1":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 30067
    iget-boolean v0, v0, Lcth;->a:Z

    .line 29309
    if-eqz v0, :cond_1

    .line 29311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    .line 29312
    add-int/2addr p1, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    const/4 v2, 0x0

    .line 35
    .line 22385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22389
    :cond_0
    :goto_0
    return-void

    .line 22388
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 23083
    iget v0, v0, Lcth;->c:I

    .line 22388
    if-eqz v0, :cond_0

    .line 22391
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getFirstVisiblePosition()I

    move-result v1

    .line 22392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 24067
    iget-boolean v0, v0, Lcth;->a:Z

    .line 22392
    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    .line 22395
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 24083
    iget v2, v2, Lcth;->c:I

    .line 22395
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    move v0, v1

    .line 22396
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 25075
    iget v2, v2, Lcth;->b:I

    .line 22397
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 26075
    iget v3, v3, Lcth;->b:I

    .line 22398
    div-int/lit8 v3, v3, 0x2

    .line 22396
    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(III)V

    .line 22399
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 27067
    iget-boolean v1, v1, Lcth;->a:Z

    .line 22399
    if-eqz v1, :cond_3

    .line 22400
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 27075
    iget v1, v1, Lcth;->b:I

    .line 22400
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 22402
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->j:I

    if-eq v0, v1, :cond_0

    .line 22405
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->j:I

    .line 22406
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 27132
    iput v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->a:I

    .line 22407
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22408
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 22395
    :cond_4
    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lcte;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->n:Lcte;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 322
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "curPosition"    # I
    .param p3, "itemView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    const/4 v2, 0x0

    .line 422
    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    .local v0, "textView":Landroid/widget/TextView;
    if-ne p2, p1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 20123
    iget v1, v1, Lcth;->h:I

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 20131
    iget v1, v1, Lcth;->i:I

    .line 425
    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 426
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 21115
    iget v1, v1, Lcth;->g:F

    .line 426
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 432
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 22099
    iget v1, v1, Lcth;->e:I

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 22107
    iget v1, v1, Lcth;->f:I

    .line 429
    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 430
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 22115
    iget v1, v1, Lcth;->g:F

    .line 430
    float-to-double v2, v1

    sub-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 233
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 2227
    iget-boolean v1, v1, Lcth;->u:Z

    .line 234
    if-eqz v1, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 3083
    iget v1, v1, Lcth;->c:I

    .line 235
    div-int/lit8 v1, v1, 0x5

    int-to-float v5, v1

    .line 238
    .local v5, "shadowHeight":F
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 3235
    iget v6, v6, Lcth;->v:I

    .line 238
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 3243
    iget v7, v7, Lcth;->w:I

    .line 238
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->g:Landroid/graphics/LinearGradient;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->g:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 240
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    new-instance v6, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v1, v5

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getHeight()I

    move-result v1

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 4243
    iget v11, v1, Lcth;->w:I

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 5235
    iget v12, v1, Lcth;->v:I

    .line 243
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->h:Landroid/graphics/LinearGradient;

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->h:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 245
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getHeight()I

    move-result v1

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 247
    .end local v5    # "shadowHeight":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 6187
    iget-boolean v1, v1, Lcth;->p:Z

    .line 247
    if-eqz v1, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 6211
    iget v2, v2, Lcth;->s:I

    .line 248
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 6219
    iget v1, v1, Lcth;->t:I

    .line 249
    int-to-float v0, v1

    move/from16 v16, v0

    .line 250
    .local v16, "lineHeight":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 7195
    iget v1, v1, Lcth;->q:I

    .line 250
    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 8083
    iget v1, v1, Lcth;->c:I

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 9075
    iget v2, v2, Lcth;->b:I

    .line 251
    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v8, v1, v2

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 9203
    iget v2, v2, Lcth;->r:I

    .line 252
    sub-int/2addr v1, v2

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 10083
    iget v1, v1, Lcth;->c:I

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 11075
    iget v2, v2, Lcth;->b:I

    .line 253
    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 250
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 11195
    iget v1, v1, Lcth;->q:I

    .line 255
    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 12083
    iget v1, v1, Lcth;->c:I

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 13075
    iget v2, v2, Lcth;->b:I

    .line 256
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float v8, v1, v2

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 13203
    iget v2, v2, Lcth;->r:I

    .line 257
    sub-int/2addr v1, v2

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 14083
    iget v1, v1, Lcth;->c:I

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 15075
    iget v2, v2, Lcth;->b:I

    .line 258
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 255
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 261
    .end local v16    # "lineHeight":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 15139
    iget-object v1, v1, Lcth;->j:Ljava/lang/String;

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 15155
    iget v2, v2, Lcth;->l:I

    .line 262
    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 16147
    iget v2, v2, Lcth;->k:I

    .line 263
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 265
    new-instance v17, Landroid/graphics/Rect;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 17083
    iget v2, v2, Lcth;->c:I

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 18075
    iget v3, v3, Lcth;->b:I

    .line 266
    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 18083
    iget v4, v4, Lcth;->c:I

    .line 268
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 19075
    iget v6, v6, Lcth;->b:I

    .line 268
    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v4, v6

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 269
    .local v17, "targetRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .line 270
    .local v15, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v14, v1, 0x2

    .line 271
    .local v14, "baseline":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 19139
    iget-object v1, v1, Lcth;->j:Ljava/lang/String;

    .line 272
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 19163
    iget v3, v3, Lcth;->m:I

    .line 272
    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->d:Landroid/graphics/Paint;

    .line 271
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    .end local v14    # "baseline":I
    .end local v15    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v17    # "targetRect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method public getSelectionItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->j:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->k:Z

    .line 145
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->k:Z

    .line 151
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    if-nez v0, :cond_0

    .line 203
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please invoke setWheelAdapter()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    check-cast p1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setWheelAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;)V

    .line 208
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "wheel has no data."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->a(Ljava/util/Collection;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 166
    :cond_3
    return-void
.end method

.method public setOnWheelItemClickListener(Lcte;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcte",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    .local p1, "onWheelItemClickListener":Lcte;, "Lcte<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->n:Lcte;

    .line 229
    return-void
.end method

.method public setOnWheelItemSelectedListener(Lctf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lctf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    .local p1, "onWheelItemSelectedListener":Lctf;, "Lctf<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->m:Lctf;

    .line 224
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "selection"    # I

    .prologue
    .line 280
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public setSelectionPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 292
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public setStyle(Lcth;)V
    .locals 2
    .param p1, "style"    # Lcth;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    if-nez p1, :cond_0

    .line 193
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "WheelViewStyle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 198
    return-void
.end method

.method public setWheelAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView<TT;>;"
    .local p1, "adapter":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->a(Ljava/util/Collection;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 1067
    iget-boolean v1, v1, Lcth;->a:Z

    .line 215
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->a(Z)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 1083
    iget v1, v1, Lcth;->c:I

    .line 216
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 2075
    iget v1, v1, Lcth;->b:I

    .line 217
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->b(I)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c:Lcth;

    .line 2179
    iget-boolean v1, v1, Lcth;->o:Z

    .line 218
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 219
    return-void
.end method
