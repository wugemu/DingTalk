.class final Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;
.super Lgl;
.source "ViewPagerContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->a:Ljava/util/ArrayList;

    .line 668
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 716
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 721
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 722
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 723
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 722
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 707
    .local v0, "currentView":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 708
    return-object v0

    .line 703
    .end local v0    # "currentView":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .restart local v0    # "currentView":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 741
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 753
    invoke-super {p0}, Lgl;->notifyDataSetChanged()V

    .line 755
    return-void
.end method
