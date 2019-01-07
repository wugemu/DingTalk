.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1, p3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)I

    .line 371
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1, p2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)I

    .line 372
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 2408
    iget v2, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k:I

    if-nez v2, :cond_0

    .line 2409
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2410
    if-lez v2, :cond_0

    .line 2413
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2414
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    .line 2415
    const/4 v0, 0x1

    .line 373
    .local v0, "isScrollTop":Z
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Ladq;->a(ZI)V

    .line 376
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 342
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p2, :cond_2

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 350
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v0    # "currentFocus":Landroid/view/View;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v2

    .line 1664
    iput p2, v2, Lacv;->p:I

    .line 360
    if-nez p2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->e(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 362
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k_()V

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$16;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v2

    invoke-virtual {v2}, Lacv;->notifyDataSetChanged()V

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
