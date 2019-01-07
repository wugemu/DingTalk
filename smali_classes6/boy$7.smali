.class final Lboy$7;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcqt$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lboy;


# direct methods
.method constructor <init>(Lboy;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 354
    iput-object p1, p0, Lboy$7;->a:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 357
    iget-object v0, p0, Lboy$7;->a:Lboy;

    .line 1063
    iget-object v0, v0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 357
    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lboy$7;->a:Lboy;

    .line 2063
    iget-object v0, v0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 358
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 360
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 364
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 3063
    iget-object v5, v5, Lboy;->h:Lboy$a;

    .line 364
    if-eqz v5, :cond_0

    .line 365
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 4063
    iget-object v5, v5, Lboy;->h:Lboy$a;

    .line 365
    invoke-interface {v5}, Lboy$a;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 366
    .local v2, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 5063
    iget-object v5, v5, Lboy;->h:Lboy$a;

    .line 366
    invoke-interface {v5}, Lboy$a;->b()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    .line 367
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 6063
    iget-object v5, v5, Lboy;->h:Lboy$a;

    .line 367
    invoke-interface {v5}, Lboy$a;->c()Landroid/widget/ScrollView;

    move-result-object v3

    .line 368
    .local v3, "scrollView":Landroid/widget/ScrollView;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 369
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 7063
    iget v5, v5, Lboy;->q:I

    .line 369
    if-lez v5, :cond_0

    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 8063
    iget v5, v5, Lboy;->p:I

    .line 369
    if-ltz v5, :cond_0

    .line 370
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lboy$7;->a:Lboy;

    .line 9063
    iget v6, v6, Lboy;->q:I

    .line 370
    sub-int v1, v5, v6

    .line 371
    .local v1, "offset":I
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 10063
    iget v5, v5, Lboy;->p:I

    .line 371
    invoke-virtual {v0, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 372
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 11063
    const/4 v6, -0x1

    iput v6, v5, Lboy;->p:I

    .line 373
    iget-object v5, p0, Lboy$7;->a:Lboy;

    .line 12063
    iput v7, v5, Lboy;->q:I

    .line 385
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v1    # "offset":I
    .end local v2    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v3    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .restart local v2    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .restart local v3    # "scrollView":Landroid/widget/ScrollView;
    :cond_1
    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 377
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 378
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 380
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method
