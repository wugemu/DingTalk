.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;
.super Landroid/database/DataSetObserver;
.source "BaseSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 292
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    if-nez v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    invoke-virtual {v3}, Lemz;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 297
    const/4 v2, 0x0

    .local v2, "viewIndex":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lemt$e;->root_footer_load_more:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lemt$e;->root_header_search_title:I

    if-eq v3, v4, :cond_2

    .line 300
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 297
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "viewIndex":I
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 306
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->e(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Z)V

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    invoke-virtual {v3}, Lemz;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 308
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->d:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k:Lemz;

    invoke-virtual {v4, v1, v5, v5}, Lemz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$5;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->f(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V

    goto :goto_0
.end method
