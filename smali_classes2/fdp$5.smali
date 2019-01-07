.class final Lfdp$5;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcqt$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfdp;


# direct methods
.method constructor <init>(Lfdp;)V
    .locals 0
    .param p1, "this$0"    # Lfdp;

    .prologue
    .line 333
    iput-object p1, p0, Lfdp$5;->a:Lfdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Lfdp$5;->a:Lfdp;

    .line 1072
    iget-object v0, v0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lfdp$5;->a:Lfdp;

    .line 2072
    iget-object v0, v0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 337
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lfdp$5;->a:Lfdp;

    iget-object v0, v0, Lfdp;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lfdp$5;->a:Lfdp;

    iget-object v0, v0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 342
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 346
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 3072
    iget-object v5, v5, Lfdp;->h:Lfdp$a;

    .line 346
    if-eqz v5, :cond_0

    .line 347
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 4072
    iget-object v5, v5, Lfdp;->h:Lfdp$a;

    .line 347
    invoke-interface {v5}, Lfdp$a;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 348
    .local v2, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 5072
    iget-object v5, v5, Lfdp;->h:Lfdp$a;

    .line 348
    invoke-interface {v5}, Lfdp$a;->b()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    .line 349
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 6072
    iget-object v5, v5, Lfdp;->h:Lfdp$a;

    .line 349
    invoke-interface {v5}, Lfdp$a;->c()Landroid/widget/ScrollView;

    move-result-object v3

    .line 350
    .local v3, "scrollView":Landroid/widget/ScrollView;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 351
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 7072
    iget v5, v5, Lfdp;->m:I

    .line 351
    if-lez v5, :cond_0

    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 8072
    iget v5, v5, Lfdp;->l:I

    .line 351
    if-ltz v5, :cond_0

    .line 352
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lfdp$5;->a:Lfdp;

    .line 9072
    iget v6, v6, Lfdp;->m:I

    .line 352
    sub-int v1, v5, v6

    .line 353
    .local v1, "offset":I
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 10072
    iget v5, v5, Lfdp;->l:I

    .line 353
    invoke-virtual {v0, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 354
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 11072
    const/4 v6, -0x1

    iput v6, v5, Lfdp;->l:I

    .line 355
    iget-object v5, p0, Lfdp$5;->a:Lfdp;

    .line 12072
    iput v7, v5, Lfdp;->m:I

    .line 367
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v1    # "offset":I
    .end local v2    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v3    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    :goto_0
    return-void

    .line 357
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .restart local v2    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .restart local v3    # "scrollView":Landroid/widget/ScrollView;
    :cond_1
    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 359
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 360
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 362
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method
