.class final Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;
.super Ljava/lang/Object;
.source "CommonScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnScrollChange(Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;

.field final synthetic b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/view/CommonScrollListView;Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->a:Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->b(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->c(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->d(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I

    .line 102
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->a(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->b(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->c(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I

    move-result v2

    add-int v0, v1, v2

    .line 80
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->c(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->d(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .line 81
    invoke-static {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->b(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->e(Lcom/alibaba/android/user/contact/view/CommonScrollListView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->b:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->a(Lcom/alibaba/android/user/contact/view/CommonScrollListView;I)I

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CommonScrollListView$1;->a:Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;

    invoke-interface {v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;->a()V

    goto :goto_0
.end method
