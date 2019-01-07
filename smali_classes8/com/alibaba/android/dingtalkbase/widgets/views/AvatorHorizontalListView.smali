.class public Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.source "AvatorHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    .line 29
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    .line 32
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->g:I

    .line 35
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->h:I

    .line 53
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcig$l;->AvatorHorizontalListView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->AvatorHorizontalListView_m_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    .line 69
    sget v1, Lcig$l;->AvatorHorizontalListView_m_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->g:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;B)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V

    invoke-super {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;)V

    .line 84
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V

    invoke-super {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->h:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->scrollTo(II)V

    .line 134
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;

    return-object v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    const/high16 v5, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 228
    const v3, 0x7f110110

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 231
    .local v2, "value":F
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_0

    .line 232
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 233
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 235
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v2    # "value":F
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 162
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d()V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    .line 1370
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1371
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->notifyDataSetChanged()V

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    .local p1, "user":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d()V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    .line 1323
    if-eqz p1, :cond_0

    .line 1324
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->notifyDataSetChanged()V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->c()V

    .line 115
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
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
    .line 122
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d()V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    .line 1335
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1337
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->notifyDataSetChanged()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->c()V

    .line 127
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    const v6, 0x7f110110

    const/4 v8, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "last":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 176
    .local v2, "status":I
    if-eqz v1, :cond_0

    .line 177
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 180
    :cond_0
    if-ne v8, v2, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d()V

    .line 183
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(I)Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, "user":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->b(Ljava/lang/Object;)V

    .line 189
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    if-eqz v4, :cond_1

    .line 190
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    invoke-interface {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;->a(Ljava/lang/Object;)V

    .line 200
    .end local v2    # "status":I
    .end local v3    # "user":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-void

    .line 2207
    .restart local v2    # "status":I
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->c()V

    .line 2208
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v4

    .line 2210
    if-eqz v4, :cond_1

    .line 2211
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2212
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2213
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2214
    invoke-virtual {v5, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2215
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    .local p1, "user":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    .line 1346
    if-eqz p1, :cond_0

    .line 1348
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1349
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 273
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 275
    .local v4, "widthMode":I
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    .line 276
    .local v0, "max":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->h:I

    if-lez v5, :cond_0

    .line 277
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->h:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->getCount()I

    move-result v6

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 280
    :cond_0
    if-eqz v4, :cond_2

    .line 281
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 282
    .local v3, "measuredWidth":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    if-ge v5, v3, :cond_1

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 284
    .local v1, "measureMode":I
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 286
    .end local v1    # "measureMode":I
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 287
    .local v2, "measuredHeight":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->g:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->g:I

    if-ge v5, v2, :cond_2

    .line 288
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 289
    .restart local v1    # "measureMode":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->g:I

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 293
    .end local v1    # "measureMode":I
    .end local v2    # "measuredHeight":I
    .end local v3    # "measuredWidth":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->onMeasure(II)V

    .line 294
    return-void
.end method

.method public setAvatarDataGenerator(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;)V
    .locals 0
    .param p1, "generator"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;

    .prologue
    .line 424
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;

    .line 425
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 267
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->h:I

    .line 268
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 260
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->g:I

    .line 261
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 252
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->f:I

    .line 253
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 311
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    return-void
.end method

.method public setOnItemRemovedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    .prologue
    .line 300
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;

    .line 301
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;

    .prologue
    .line 306
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>;"
    return-void
.end method
