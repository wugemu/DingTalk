.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$2;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1347
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/widget/LoadingStatView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->w(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->x(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/widget/LoadingStatView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    .line 1379
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1355
    :cond_3
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_search_results_new_render"

    .line 2083
    invoke-virtual {v0, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1355
    if-nez v0, :cond_6

    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->y(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->z(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->A(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->C(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->B(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/widget/LoadingStatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->D(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1374
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lemt$g;->empty_search_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1357
    goto :goto_1

    :cond_8
    move v0, v2

    .line 1361
    goto :goto_2

    :cond_9
    move v0, v2

    .line 1365
    goto :goto_3

    .line 1376
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->E(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    sget v3, Lemt$g;->dt_search_empty_hint:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v5}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
