.class public abstract Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalToolBarScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/HorizontalScrollView;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Landroid/widget/LinearLayout;

.field public d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b:I

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->floating_toolbar_container_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1063
    sget v1, Lbqt$d;->ll_floating_toolbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    return-object v0
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
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 119
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 113
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "childView":Landroid/view/View;
    instance-of v3, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    if-eqz v3, :cond_2

    .line 116
    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    .end local v1    # "childView":Landroid/view/View;
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;I)V

    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;I)V
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b:I

    return v0
.end method

.method public setCurrentItem(I)V
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    const/4 v4, 0x0

    .line 122
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 126
    .local v0, "childCount":I
    add-int/lit8 v3, v0, -0x1

    if-le p1, v3, :cond_2

    .line 127
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "position more size"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_2
    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b:I

    if-eq p1, v3, :cond_0

    .line 132
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b:I

    .line 133
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "childView":Landroid/view/View;
    instance-of v3, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    if-eqz v3, :cond_3

    .line 136
    check-cast v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    .end local v1    # "childView":Landroid/view/View;
    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b:I

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setChecked(Z)V

    .line 133
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 136
    goto :goto_2

    .line 139
    :cond_5
    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->b:I

    if-gtz v3, :cond_0

    .line 140
    invoke-virtual {p0, v4, v4}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setItemSplit(Z)V
    .locals 0
    .param p1, "isItemSplit"    # Z

    .prologue
    .line 151
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->e:Z

    .line 152
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v6, 0x0

    .line 70
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 78
    :cond_2
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->f:Ljava/util/List;

    .line 79
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 81
    new-instance v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, "itemView":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->e:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setItemSplit(Z)V

    .line 85
    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setItemSplitColor(I)V

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;I)V

    .line 88
    move v1, v0

    .line 89
    .local v1, "index":I
    new-instance v3, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;I)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v1    # "index":I
    .end local v2    # "itemView":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarItemView;
    :cond_3
    invoke-virtual {p0, v6, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setSplitColor(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;, "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView<TT;>;"
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView;->a:I

    .line 147
    return-void
.end method
