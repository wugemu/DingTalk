.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;
.source "CalendarViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;

.field private m:Z

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->i:Ljava/util/LinkedList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->m:Z

    .line 194
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    .line 203
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->i:Ljava/util/LinkedList;

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->m:Z

    .line 194
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    .line 203
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    .line 51
    sget-object v1, Lcig$l;->UniformGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->UniformGridView_horizontal_layout_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a:I

    .line 53
    sget v1, Lcig$l;->UniformGridView_vertical_layout_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b:I

    .line 54
    sget v1, Lcig$l;->UniformGridView_horizontal_space_proportion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->c:F

    .line 55
    sget v1, Lcig$l;->UniformGridView_vertical_space_proportion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->d:F

    .line 56
    sget v1, Lcig$l;->UniformGridView_horizontal_space:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->e:F

    .line 57
    sget v1, Lcig$l;->UniformGridView_vertical_space:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->f:F

    .line 58
    sget v1, Lcig$l;->UniformGridView_item_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->g:F

    .line 59
    sget v1, Lcig$l;->UniformGridView_item_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->h:F

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->i:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static b(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 268
    const v0, 0x1335170

    const v1, 0x186a0

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Lcrz;->c(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V

    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->setAdapter(Lgl;)V

    .line 176
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)V

    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 192
    return-void
.end method

.method public static c(I)I
    .locals 2
    .param p0, "monthInt"    # I

    .prologue
    .line 272
    const v0, 0x186a0

    const v1, 0x1335170

    invoke-static {p0, v1}, Lcrz;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->c:F

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->d:F

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->e:F

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->f:F

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->g:F

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->h:F

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getChildCount()I

    move-result v1

    .line 216
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 217
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 218
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 219
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .line 220
    .local v0, "cgv":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a()V

    .line 216
    .end local v0    # "cgv":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 12
    .param p1, "dateInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, -0x1

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getChildCount()I

    move-result v1

    .line 227
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 228
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 229
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 230
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .line 231
    .local v0, "cgv":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->getMonthInt()I

    move-result v5

    invoke-static {v5, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(II)Landroid/graphics/Point;

    move-result-object v3

    .line 232
    .local v3, "p":Landroid/graphics/Point;
    if-eqz v3, :cond_1

    .line 233
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 1271
    iget-object v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    if-eqz v7, :cond_1

    .line 1272
    iget v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->a()I

    move-result v8

    if-ne v7, v8, :cond_1

    iget v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->b()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 1273
    if-ltz v5, :cond_1

    iget v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    if-ge v5, v7, :cond_1

    if-ltz v6, :cond_1

    iget v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->c:I

    if-ge v6, v7, :cond_1

    .line 1274
    iget-object v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    iget v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    aget-object v7, v7, v8

    .line 1275
    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    invoke-interface {v8, v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;->a(IILandroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 1276
    if-eq v7, v8, :cond_1

    .line 1277
    iget-object v9, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->d:[Landroid/view/View;

    iget v10, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->b:I

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    aput-object v8, v9, v5

    .line 1278
    if-eqz v7, :cond_0

    .line 1279
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->removeView(Landroid/view/View;)V

    .line 1281
    :cond_0
    if-eqz v8, :cond_1

    .line 1282
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1283
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1284
    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->addView(Landroid/view/View;)V

    .line 227
    .end local v0    # "cgv":Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
    .end local v3    # "p":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public getHorizontalLayoutMode()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a:I

    return v0
.end method

.method public getHorizontalSpace()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->e:F

    return v0
.end method

.method public getHorizontalSpaceProportion()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->c:F

    return v0
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->h:F

    return v0
.end method

.method public getItemWidth()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->g:F

    return v0
.end method

.method public getVerticalLayoutMode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->b:I

    return v0
.end method

.method public getVerticalSpace()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->f:F

    return v0
.end method

.method public getVerticalSpaceProportion()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->d:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->m:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->m:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Lgl;)V
    .locals 0
    .param p1, "adapter"    # Lgl;

    .prologue
    .line 66
    return-void
.end method

.method public setCalendarGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;)V
    .locals 1
    .param p1, "adapter"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    if-eq v0, p1, :cond_0

    .line 262
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a()V

    .line 265
    :cond_0
    return-void
.end method

.method public setOnCalendarGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    .line 258
    return-void
.end method

.method public setOnCalendarPageChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;

    .line 254
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$d;

    .prologue
    .line 70
    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->m:Z

    .line 124
    return-void
.end method
