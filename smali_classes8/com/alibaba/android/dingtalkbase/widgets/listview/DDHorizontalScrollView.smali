.class public Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "DDHorizontalScrollView.java"


# instance fields
.field private a:Landroid/widget/BaseAdapter;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->c:Z

    .line 76
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->d:Landroid/database/DataSetObserver;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->c:Z

    .line 76
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->d:Landroid/database/DataSetObserver;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->c:Z

    .line 76
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->d:Landroid/database/DataSetObserver;

    .line 56
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4, v2}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "itemView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    return-object v0
.end method

.method private setObjectAnimator(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 199
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 64
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 185
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 188
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->d:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->d:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a()V

    .line 74
    return-void
.end method
