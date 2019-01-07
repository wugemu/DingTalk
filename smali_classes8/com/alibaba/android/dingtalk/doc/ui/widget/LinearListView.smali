.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;
.super Landroid/widget/LinearLayout;
.source "LinearListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;,
        Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/BaseAdapter;

.field private c:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;

.field private d:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->d:Landroid/database/DataSetObserver;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->d:Landroid/database/DataSetObserver;

    .line 57
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->removeAllViews()V

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->a:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    :cond_2
    new-instance v2, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$a;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->c:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->d:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->d:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->d:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->d:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->a:Z

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->a()V

    .line 85
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->c:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;

    .line 135
    return-void
.end method
