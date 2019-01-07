.class final Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;
.super Ljava/lang/Object;
.source "DingSearchResultCategoryFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/search/model/DingSearchResultModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/DingSearchResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 440
    .local p1, "resultModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/DingSearchResultModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 441
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->s(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 442
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->t(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 443
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 444
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->v(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 445
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->w(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 446
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->x(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/view/View;

    move-result-object v7

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 447
    invoke-static {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->y(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Lemw;

    move-result-object v8

    const/4 v9, 0x3

    move-object v1, p1

    .line 440
    invoke-static/range {v0 .. v9}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ListView;Landroid/view/View;Lemw;I)V

    .line 449
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->r(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    .line 450
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 431
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingSearchResultCategory]processBodyResult failed, code:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a(Ljava/util/List;)V

    .line 433
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Ljava/util/List;

    .line 1426
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;->a(Ljava/util/List;)V

    .line 423
    return-void
.end method
