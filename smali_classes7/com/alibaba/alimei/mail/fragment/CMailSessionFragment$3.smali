.class final Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;
.super Ljava/lang/Object;
.source "CMailSessionFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

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

    .line 206
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v1, p3}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;I)I

    .line 207
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v1, p2}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;I)I

    .line 208
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .line 2217
    iget v2, v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->j:I

    if-nez v2, :cond_0

    .line 2218
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2219
    if-lez v2, :cond_0

    .line 2222
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2223
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    .line 2224
    const/4 v0, 0x1

    .line 209
    .local v0, "isScrollTop":Z
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Ladq;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Ladq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Ladq;->a(ZI)V

    .line 212
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Lacv;

    move-result-object v0

    .line 1664
    iput p2, v0, Lacv;->p:I

    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 202
    :cond_0
    return-void
.end method
