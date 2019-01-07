.class final Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;
.super Ljava/lang/Object;
.source "LocalContactSearchFragment.java"

# interfaces
.implements Lcif$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->n_()Lcif$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "selectedList"    # Ljava/lang/Object;
    .param p2, "unCheckableList"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->d(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lcif;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->e(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lcif;

    move-result-object v0

    .line 1031
    iget v0, v0, Lcif;->c:I

    .line 275
    sget v1, Lcif;->b:I

    if-ne v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->f(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lemz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->f(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lemz;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 1639
    iput-object v0, v1, Lemz;->c:Ljava/util/List;

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->f(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lemz;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 1643
    iput-object v0, v1, Lemz;->d:Ljava/util/List;

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->g(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->f(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lemz;

    move-result-object v0

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    check-cast p1, Ljava/util/List;

    .end local p1    # "selectedList":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->a(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;Ljava/util/List;)Ljava/util/List;

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$3;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    check-cast p2, Ljava/util/List;

    .end local p2    # "unCheckableList":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->b(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;Ljava/util/List;)Ljava/util/List;

    .line 287
    :cond_1
    return-void
.end method
