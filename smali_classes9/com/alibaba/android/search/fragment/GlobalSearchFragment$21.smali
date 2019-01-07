.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Lere$b;


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
    .line 1384
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1428
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/SearchGroupType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1387
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqn$a;

    move-result-object v0

    invoke-interface {v0, p2}, Leqn$a;->a(Ljava/util/List;)V

    .line 1390
    :cond_0
    return-void
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
    .line 1395
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1413
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1432
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1433
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1423
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 1384
    check-cast p1, Lere$a;

    .line 2417
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lere$a;)Lere$a;

    .line 1384
    return-void
.end method
