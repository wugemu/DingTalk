.class public Lcom/alibaba/android/search/widget/DDHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "DDHorizontalScrollView.java"


# instance fields
.field private a:Landroid/widget/BaseAdapter;

.field private b:Landroid/view/View;

.field private c:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;-><init>(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->c:Landroid/database/DataSetObserver;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;-><init>(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->c:Landroid/database/DataSetObserver;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;-><init>(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->c:Landroid/database/DataSetObserver;

    .line 54
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 92
    iget-object v3, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4, v2}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "itemView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    return-object v0
.end method

.method private setObjcetAnimator(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 182
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 135
    iget-object v6, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-nez v6, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "itemView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 146
    .local v0, "itemLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 149
    .local v1, "itemRight":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcms;->a(Landroid/content/Context;)I

    move-result v5

    .line 150
    .local v5, "screenWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 151
    .local v3, "screenLeft":I
    add-int v4, v3, v5

    .line 153
    .local v4, "screenRight":I
    if-ge v0, v3, :cond_2

    .line 154
    invoke-virtual {p0, v0, v7}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 155
    :cond_2
    if-le v1, v4, :cond_0

    .line 156
    sub-int v6, v1, v5

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    .line 61
    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 62
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$2;-><init>(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->c:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->c:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a()V

    .line 71
    return-void
.end method
