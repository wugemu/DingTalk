.class final Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;
.super Ljava/lang/Object;
.source "ChatMsgListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 724
    if-nez p2, :cond_3

    .line 725
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->b:Z

    if-nez v0, :cond_0

    .line 726
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->b:Z

    .line 727
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;->a()V

    .line 738
    :cond_0
    :goto_0
    add-int v0, p2, p3

    if-ne v0, p4, :cond_4

    .line 739
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->c:Z

    if-nez v0, :cond_1

    .line 740
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->c:Z

    .line 741
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->n(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;->b()V

    .line 750
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->m(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->m(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 753
    :cond_2
    return-void

    .line 733
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->b:Z

    if-eqz v0, :cond_0

    .line 734
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->b:Z

    goto :goto_0

    .line 746
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->c:Z

    if-eqz v0, :cond_1

    .line 747
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->c:Z

    goto :goto_1
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 707
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 709
    if-eq p2, v1, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 716
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->m(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->m(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 719
    :cond_2
    return-void

    .line 712
    :cond_3
    if-nez p2, :cond_1

    .line 713
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method
