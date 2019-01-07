.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Lerk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1643
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v0

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 1646
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_results_new_render"

    .line 2083
    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1646
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1647
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a()V

    .line 1655
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 1656
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    .line 1657
    return-void

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v0

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1674
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1695
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1661
    const-string/jumbo v0, "-408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->R(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    .line 1664
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v0

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v0

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 1611
    check-cast p1, Lerk$a;

    .line 2627
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lerk$a;)Lerk$a;

    .line 1611
    return-void
.end method
