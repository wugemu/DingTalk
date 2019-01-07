.class public final Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;
.super Lgl;
.source "ViewPagerContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

.field private b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;Landroid/support/v4/view/ViewPager;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;
    .param p2, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p3, "decoratedPagerAdapter"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 765
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    .line 766
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a$1;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 772
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->d:Landroid/support/v4/view/ViewPager;

    .line 773
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->c:Landroid/util/SparseArray;

    .line 774
    return-void
.end method


# virtual methods
.method final a(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 817
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 818
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 819
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 793
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 794
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 795
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 796
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 800
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 794
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 833
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 778
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-virtual {v5, p1, p2}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "object":Ljava/lang/Object;
    move-object v4, p1

    .line 779
    check-cast v4, Landroid/support/v4/view/ViewPager;

    .line 780
    .local v4, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 781
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 782
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 783
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 784
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-object v3

    .line 781
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
