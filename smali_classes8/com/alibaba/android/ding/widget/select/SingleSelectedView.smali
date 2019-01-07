.class public Lcom/alibaba/android/ding/widget/select/SingleSelectedView;
.super Landroid/widget/LinearLayout;
.source "SingleSelectedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1040
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_select_single_mode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1041
    sget v0, Lcig$f;->list_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->a:Landroid/widget/ListView;

    .line 1042
    new-instance v0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 1043
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1044
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->addView(Landroid/view/View;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getSelectedData()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 2043
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->b:Ljava/io/Serializable;

    .line 52
    return-object v0
.end method

.method public setDataList(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    .local p1, "dataList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 1052
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1053
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1056
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;)V
    .locals 1
    .param p1, "onItemSelectedListener"    # Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    .line 2088
    iput-object p1, v0, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->c:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;

    .line 61
    return-void
.end method

.method public setSelectedData(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "selectedData"    # Ljava/io/Serializable;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->b:Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter;->a(Ljava/io/Serializable;)V

    .line 57
    return-void
.end method
